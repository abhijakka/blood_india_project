# Generated by Django 4.0.3 on 2022-05-08 12:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0005_userregistrationmodel_user_status'),
    ]

    operations = [
        migrations.AddField(
            model_name='ngoregistrationmodel',
            name='ngo_upload_profile',
            field=models.ImageField(help_text='Upload ngo image', max_length=50, null=True, upload_to=''),
        ),
    ]
