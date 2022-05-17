from django.core.exceptions import ObjectDoesNotExist
from django.shortcuts import get_object_or_404, render, redirect
from django.contrib.auth.decorators import login_required

from store.models import Product
from carts.models import Cart, CartItem


def _cart_id(request):
    """ 
    Hàm thực hiện LẤY ID GIỎ HÀNG.

    Sử dụng session_key để phân biệt giỏ hàng này là của user nào.

    Nếu chưa có session_key thì tạo mới cart_id và return cart_id.
    """
    cart_id = request.session.session_key
    if not cart_id:
        cart_id = request.session.create()
    return cart_id


def add_cart(request, product_id):
    """ 
    Hàm thực hiện THÊM SẢN PHẨM VÀO GIỎ HÀNG.

    Lấy thông tin user hiện tại và sản phẩm được thêm.
    Nếu có user (Đã đăng nhập):
        Nếu sản phẩm được đã có trong giỏ:
            Chỉ tăng số lượng.
        Ngược lại, nếu sản phẩm chưa có trong giỏ:
            Thêm sản phẩm đó vào giỏ hàng.
    Nếu chưa có user (Chưa đăng nhập):
        Dùng hàm _cart_id() để tạo giỏ hàng mới mà không cần đăng nhập.
        Sau đó thêm sản phẩm vào giỏ hàng như lúc đã đăng nhập.

    redirect: Trang giỏ hàng (cart.html).
    """
    # Lấy thông tin user hiện tại và sản phẩm được thêm
    current_user = request.user
    product = Product.objects.get(id=product_id)

    # Nếu có user (Đã đăng nhập)
    if current_user.is_authenticated:
        # Nếu sản phẩm được thêm đã có trong giỏ thì chỉ tăng số lượng
        is_exists_cart_item = CartItem.objects.filter(
            product=product, user=current_user).exists()
        if is_exists_cart_item:
            cart_item = CartItem.objects.get(
                product=product,
                user=current_user,
            )
            cart_item.quantity += 1
        # Ngược lại, nếu sản phẩm chưa được thêm thì thêm sản phẩm đó vào giỏ hàng
        else:
            cart_item = CartItem.objects.create(
                product=product,
                user=current_user,
                quantity=1,
                cart=Cart.objects.get(cart_id=_cart_id(request)),
            )
        cart_item.save()
        return redirect('cart')

    # Nếu chưa có user (Chưa đăng nhập)
    # Dùng hàm _cart_id() để tạo giỏ hàng mới mà không cần đăng nhập
    # Sau đó thêm giỏ hàng như các bước trên
    else:
        try:
            cart = Cart.objects.get(cart_id=_cart_id(request=request))
        except Cart.DoesNotExist:
            cart = Cart.objects.create(
                cart_id=_cart_id(request)
            )
        cart.save()

        is_exists_cart_item = CartItem.objects.filter(
            product=product, cart=cart).exists()
        if is_exists_cart_item:
            cart_item = CartItem.objects.get(
                product=product,
                cart=cart,
            )
            cart_item.quantity += 1
        else:
            # Chưa đăng nhập nên thuộc tính user trong class CartItem để trống
            cart_item = CartItem.objects.create(
                product=product,
                cart=cart,
                quantity=1
            )
        cart_item.save()
        return redirect('cart')


def remove_cart(request, product_id, cart_item_id):
    """ 
    Hàm thực hiện Giảm SỐ LƯỢNG SẢN PHẨM VÀO GIỎ HÀNG.

    redirect: Trang giỏ hàng (cart.html).
    """
    product = get_object_or_404(Product, id=product_id)
    try:
        if request.user.is_authenticated:
            cart_item = CartItem.objects.get(
                id=cart_item_id,
                product=product,
                user=request.user
            )
        else:
            cart = Cart.objects.get(cart_id=_cart_id(request))
            cart_item = CartItem.objects.get(
                id=cart_item_id,
                product=product,
                cart=cart
            )
        if cart_item.quantity > 1:
            cart_item.quantity -= 1
            cart_item.save()
        else:
            cart_item.delete()
    except Exception:
        pass
    return redirect('cart')


def remove_cart_item(request, product_id, cart_item_id):
    """ 
    Hàm thực hiện XÓA SẢN PHẨM VÀO GIỎ HÀNG.

    redirect: Trang giỏ hàng (cart.html).
    """
    product = get_object_or_404(Product, id=product_id)
    try:
        if request.user.is_authenticated:
            cart_item = CartItem.objects.get(
                id=cart_item_id,
                product=product,
                user=request.user
            )
        else:
            cart = Cart.objects.get(cart_id=_cart_id(request=request))
            cart_item = CartItem.objects.get(
                id=cart_item_id,
                product=product,
                cart=cart
            )
        cart_item.delete()
    except Exception:
        pass
    return redirect('cart')


def cart(request, total=0, quantity=0, cart_items=None):
    """ 
    Hàm hiển thị TRANG GIỎ HÀNG.

    Hiển thị các sản phẩm trong giỏ, số lượng, giá, thuế.

    render: Trang giỏ hàng (cart.html).
    """
    try:
        if request.user.is_authenticated:
            cart_items = CartItem.objects.filter(
                user=request.user, is_active=True)
        else:
            cart = Cart.objects.get(cart_id=_cart_id(request=request))
            cart_items = CartItem.objects.filter(cart=cart, is_active=True)
        for cart_item in cart_items:
            total += cart_item.product.price * cart_item.quantity
            quantity += cart_item.quantity
        tax = total * 2 / 100
        grand_total = total + tax
    except ObjectDoesNotExist:
        pass    # Chỉ bỏ qua

    context = {
        'total': total,
        'quantity': quantity,
        'cart_items': cart_items,
        'tax': tax if "tax" in locals() else "",
        'grand_total': grand_total if "tax" in locals() else 0,
    }
    return render(request, 'store/cart.html', context=context)


@login_required(login_url='login')
def checkout(request, total=0, quantity=0, cart_items=None):
    """ 
    Hàm hiển thị TRANG THỦ TỤC THANH TOÁN.

    Hiển thị thông tin các sản phẩm mà user đã đặt mua.

    render: Trang thủ tục thanh toán (checkout.html).
    """
    try:
        cart_items = CartItem.objects.filter(user=request.user, is_active=True)
        for cart_item in cart_items:
            total += cart_item.product.price * cart_item.quantity
            quantity += cart_item.quantity
        tax = total * 2 / 100
        grand_total = total + tax
    except ObjectDoesNotExist:
        pass    # Chỉ bỏ qua
    context = {
        'total': total,
        'quantity': quantity,
        'cart_items': cart_items,
        'tax': tax if "tax" in locals() else "",
        'grand_total': grand_total,
    }
    return render(request, 'store/checkout.html', context=context)
