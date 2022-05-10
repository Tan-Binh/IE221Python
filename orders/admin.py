from pyexpat import model
from django.contrib import admin
from .models import Order, OrderProduct, Payment
from .models import Order, OrderProduct

class OrderAdmin(admin.ModelAdmin):
    list_display = ('order_number', 'last_name', 'first_name', 'order_total', 'is_ordered', 'created_at', 'updated_at')
    search_fields = ('order_number', 'last_name', 'first_name')
    ordering = ('order_number',)

admin.site.register(Order, OrderAdmin)
admin.site.register(Payment)
admin.site.register(OrderProduct)
