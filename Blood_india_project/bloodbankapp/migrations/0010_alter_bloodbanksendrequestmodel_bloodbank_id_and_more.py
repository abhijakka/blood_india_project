# Generated by Django 4.0.3 on 2022-05-16 05:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bloodbankapp', '0009_bloodbanksendrequestmodel_b_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bloodbanksendrequestmodel',
            name='bloodbank_id',
            field=models.IntegerField(help_text='hospital_id', max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='bloodbanksendrequestmodel',
            name='hospital_id',
            field=models.IntegerField(help_text='hospital_id', max_length=50, null=True),
        ),
    ]