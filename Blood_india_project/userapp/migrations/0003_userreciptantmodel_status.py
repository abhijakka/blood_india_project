# Generated by Django 4.0.3 on 2022-05-06 07:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0002_userreciptantmodel_hospital_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='userreciptantmodel',
            name='status',
            field=models.CharField(help_text='Status', max_length=50, null=True),
        ),
    ]