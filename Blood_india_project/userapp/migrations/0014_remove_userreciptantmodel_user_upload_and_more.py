# Generated by Django 4.0.3 on 2022-05-14 12:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0013_rename_user_upload_profile_userreciptantmodel_user_upload'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='userreciptantmodel',
            name='user_upload',
        ),
        migrations.AddField(
            model_name='userprofilemodel',
            name='user_upload',
            field=models.ImageField(help_text='Upload your image', max_length=50, null=True, upload_to=''),
        ),
    ]
