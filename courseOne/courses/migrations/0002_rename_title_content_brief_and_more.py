# Generated by Django 4.2.3 on 2023-07-05 19:48

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='content',
            old_name='title',
            new_name='brief',
        ),
        migrations.RenameField(
            model_name='lecture',
            old_name='title',
            new_name='brief',
        ),
    ]
