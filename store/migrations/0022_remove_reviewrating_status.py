# Generated by Django 4.0.4 on 2022-05-18 08:45

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0021_delete_variation'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='reviewrating',
            name='status',
        ),
    ]
