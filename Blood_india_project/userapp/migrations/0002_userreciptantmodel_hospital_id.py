# Generated by Django 4.0.3 on 2022-05-06 06:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='userreciptantmodel',
            name='hospital_id',
            field=models.CharField(help_text='hospital_id', max_length=50, null=True),
        ),
    ]
