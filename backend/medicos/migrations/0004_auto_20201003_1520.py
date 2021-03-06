# Generated by Django 2.2.16 on 2020-10-03 15:20

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('medicos', '0003_auto_20201003_1502'),
    ]

    operations = [
        migrations.AddField(
            model_name='medico',
            name='email',
            field=models.CharField(blank=True, max_length=60, null=True),
        ),
        migrations.AddField(
            model_name='medico',
            name='telefone',
            field=models.CharField(blank=True, max_length=11, null=True, validators=[django.core.validators.RegexValidator(message='Insira um número de telefone', regex='^\\([1 - 9]{2}\\)(?:[2 - 8] | 9[1 - 9])[0 - 9]{3}\\-[0 - 9]{4}$')]),
        ),
    ]
