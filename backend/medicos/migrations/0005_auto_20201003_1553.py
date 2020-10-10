# Generated by Django 2.2.16 on 2020-10-03 15:53

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('medicos', '0004_auto_20201003_1520'),
    ]

    operations = [
        migrations.AlterField(
            model_name='medico',
            name='telefone',
            field=models.CharField(blank=True, max_length=11, null=True, validators=[django.core.validators.RegexValidator(message='Insira um número de telefone', regex='^[0-9]+$')]),
        ),
    ]