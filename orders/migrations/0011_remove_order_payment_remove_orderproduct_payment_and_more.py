# Generated by Django 4.0.4 on 2022-05-18 04:47

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0010_remove_orderproduct_variations'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='order',
            name='payment',
        ),
        migrations.RemoveField(
            model_name='orderproduct',
            name='payment',
        ),
        migrations.DeleteModel(
            name='Payment',
        ),
    ]