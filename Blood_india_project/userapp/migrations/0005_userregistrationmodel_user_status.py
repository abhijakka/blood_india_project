# Generated by Django 4.0.3 on 2022-05-07 07:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0004_userreciptantmodel_bloodbank_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='userregistrationmodel',
            name='user_status',
            field=models.CharField(help_text='user_status', max_length=200, null=True),
        ),
    ]