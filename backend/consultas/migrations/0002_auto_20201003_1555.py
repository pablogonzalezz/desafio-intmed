# Generated by Django 2.2.16 on 2020-10-03 15:55

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('consultas', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='consulta',
            old_name='hora',
            new_name='horario',
        ),
    ]