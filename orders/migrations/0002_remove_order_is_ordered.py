# Generated by Django 4.0.4 on 2022-05-07 17:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='order',
            name='is_ordered',
        ),
    ]
