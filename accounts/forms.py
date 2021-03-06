from django import forms
from .models import Account


class RegistrationForm(forms.ModelForm):
    first_name = forms.CharField(max_length=100)

    last_name = forms.CharField(max_length=100)

    phone_number = forms.CharField(max_length=50)

    email = forms.EmailField(max_length=50)

    password = forms.CharField(widget=forms.PasswordInput())

    confirm_password = forms.CharField(widget=forms.PasswordInput())

    class Meta:
        model = Account
        fields = ['first_name', 'last_name',
                  'phone_number', 'email', 'password']

    def __init__(self, *args, **kwargs):
        super(RegistrationForm, self).__init__(*args, **kwargs)
        self.fields['last_name'].widget.attrs['placeholder'] = 'Nhập họ'
        self.fields['first_name'].widget.attrs['placeholder'] = 'Nhập tên'
        self.fields['email'].widget.attrs['placeholder'] = 'Nhập email'
        self.fields['phone_number'].widget.attrs['placeholder'] = 'Nhập số điện thoại'
        self.fields['password'].widget.attrs['placeholder'] = 'Nhập mật khẩu'
        self.fields['confirm_password'].widget.attrs['placeholder'] = 'Nhập lại mật khẩu'
        for field in self.fields:
            self.fields[field].widget.attrs['class'] = 'form-control'

    def clean(self):
        cleaned_data = super(RegistrationForm, self).clean()
        password = cleaned_data.get('password')
        confirm_password = cleaned_data.get('confirm_password')

        if password != confirm_password:
            raise forms.ValidationError(
                'Mật khẩu không trùng nhau!'
            )
