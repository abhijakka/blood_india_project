# Generated by Django 4.0.3 on 2022-05-16 05:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0017_userprofilemodel_p_status_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ngocampconductmodel',
            name='bloodbank_id',
            field=models.IntegerField(help_text='bloodbank_id', max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='ngocampconductmodel',
            name='hospital_id',
            field=models.IntegerField(help_text='hospital_id', max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='userprofilemodel',
            name='bloodbank_id',
            field=models.IntegerField(help_text='bloodbank_id', max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='userprofilemodel',
            name='hospital_id',
            field=models.IntegerField(help_text='hospital_id', max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='userreciptantmodel',
            name='bloodbank_id',
            field=models.IntegerField(help_text='bloodbank_id', max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='userreciptantmodel',
            name='hospital_id',
            field=models.IntegerField(help_text='hospital_id', max_length=50, null=True),
        ),
    ]
