# Generated by Django 4.0.3 on 2022-05-14 13:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bloodbankapp', '0005_bloodbankregistrationmodel_upload_bloodbank'),
    ]

    operations = [
        migrations.AddField(
            model_name='bloodbankregistrationmodel',
            name='bloodbank_upload_image',
            field=models.ImageField(help_text='Upload bloodbank_upload image ', max_length=50, null=True, upload_to=''),
        ),
    ]