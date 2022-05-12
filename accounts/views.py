from re import split
from carts.models import Cart, CartItem
from django.shortcuts import redirect, render
from django.contrib import messages, auth
from django.core.paginator import Paginator
from django.core.mail import EmailMessage
from django.contrib.auth.decorators import login_required
from django.contrib.auth.tokens import default_token_generator

from orders.models import Order, OrderProduct

from .forms import RegistrationForm
from accounts.models import Account
from carts.views import _cart_id

import requests


def register(request):
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            first_name = form.cleaned_data['first_name']
            last_name = form.cleaned_data['last_name']
            email = form.cleaned_data['email']
            phone_number = form.cleaned_data['phone_number']
            password = form.cleaned_data['password']
            username = email.split('@')[0]

            user = Account.objects.create_user(
                first_name=first_name, last_name=last_name, email=email, username=username, password=password)
            user.phone_number = phone_number
            user.is_active = True
            user.save()

            messages.success(
                request=request,
                message="Đăng ký thành công"
            )
            return redirect('login')
        else:
            messages.error(request=request, message="Đăng ký thất bại")
    else:
        form = RegistrationForm()
    context = {
        'form': form,
    }
    return render(request, 'accounts/register.html', context)


def login(request):
    if request.method == "POST":
        email = request.POST.get('email')
        password = request.POST.get('password')
        user = auth.authenticate(email=email, password=password)
        if user is not None:
            try:
                cart = Cart.objects.get(cart_id=_cart_id(request))
                cart_items = CartItem.objects.filter(cart=cart)
                if cart_items.exists():
                    product_variation = []
                    for cart_item in cart_items:
                        variations = cart_item.variations.all()
                        product_variation.append(list(variations))
                        # cart_item.user = user
                        # cart_item.save()
                    cart_items = CartItem.objects.filter(user=user)
                    existing_variation_list = [list(item.variations.all()) for item in cart_items]
                    id = [item.id for item in cart_items]

                    for product in product_variation:
                        if product in existing_variation_list:
                            index = existing_variation_list.index(product)
                            item_id = id[index]
                            item = CartItem.objects.get(id=item_id)
                            item.quantity += 1
                            item.user = user
                            item.save()
                        else:
                            cart_items = CartItem.objects.filter(cart=cart)
                            for item in cart_items:
                                item.user = user
                                item.save()
            except Exception:
                pass
            auth.login(request=request, user=user)
            messages.success(request=request, message="Đăng nhập thành công")

            url = request.META.get('HTTP_REFERER')
            try:
                query = requests.utils.urlparse(url).query
                params = dict(x.split("=") for x in query.split("&"))
                if "next" in params:
                    next_page = params["next"]
                    return redirect(next_page)
            except Exception:
                return redirect('home')
        else:
            messages.error(request=request, message="Đăng nhập thất bại")
    context = {
        'email': email if 'email' in locals() else '',
        'password': password if 'password' in locals() else '',
    }
    return render(request, 'accounts/login.html', context=context)


@login_required(login_url="login")
def logout(request):
    auth.logout(request)
    messages.success(request=request, message="Bạn đã đăng xuất")
    return redirect('login')

@login_required(login_url="login")
def dashboard(request):
    orders = Order.objects.filter(user=request.user).order_by("-updated_at")
    order_products = OrderProduct.objects.filter(user=request.user)

    page = request.GET.get('page')
    page = page or 1
    paginator = Paginator(orders, 3)
    paged_order = paginator.get_page(page)
    order_count = orders.count()

    context = {
        'orders': paged_order,
        'order_count': order_count,
        'order_products': order_products,
    }
    return render(request, "accounts/dashboard.html", context=context)

def forgotPassword(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        try: 
            user = Account.objects.get(email__exact=email)
        except Exception:
            user = None

        if user is not None:
            request.session['uid'] = user.pk
            messages.info(request=request, message='Hãy tạo mật khẩu mới')
            return redirect('reset_password')
        else:
            messages.error(request=request, message="Tài khoản này không tồn tại")

    context = {
        'email': email if 'email' in locals() else '',
    }
    return render(request, "accounts/forgotPassword.html", context=context)




def reset_password(request):
    if request.method == 'POST':
        password = request.POST.get('password')
        confirm_password = request.POST.get('confirm_password')

        if password == confirm_password:
            uid = request.session.get('uid')
            user = Account.objects.get(pk=uid)
            user.set_password(password)
            user.save()
            messages.success(request, message="Đổi mật khẩu thành công")
            return redirect('login')
        else:
            messages.error(request, message="Mật khẩu không trùng khớp")
    return render(request, 'accounts/reset_password.html')
