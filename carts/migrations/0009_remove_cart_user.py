# Generated by Django 4.0.4 on 2022-05-12 14:23

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('carts', '0008_cart_user'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cart',
            name='user',
        ),
    ]