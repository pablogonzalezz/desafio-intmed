# Generated by Django 2.2.16 on 2020-10-05 23:16

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('agendas', '0005_auto_20201005_2113'),
        ('consultas', '0003_consulta_user'),
    ]

    operations = [
        migrations.AddField(
            model_name='consulta',
            name='dia',
            field=models.DateField(default=None, null=True),
        ),
        migrations.AddField(
            model_name='consulta',
            name='horario',
            field=models.TimeField(default=None, null=True),
        )
    ]
