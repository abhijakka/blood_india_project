# Generated by Django 4.0.3 on 2022-05-17 07:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hospitalapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='hospitalsendrequestmodel',
            name='hospital_email',
            field=models.EmailField(help_text='Enter email', max_length=50, null=True),
        ),
    ]