# Generated by Django 2.2.16 on 2020-10-02 17:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('medicos', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='medico',
            name='crm',
            field=models.IntegerField(default=None),
        ),
    ]
