# Generated by Django 2.2.16 on 2020-10-03 15:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('medicos', '0005_auto_20201003_1553'),
    ]

    operations = [
        migrations.CreateModel(
            name='Consulta',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('dia', models.DateField()),
                ('hora', models.TimeField()),
                ('data_agendamento', models.DateTimeField(auto_now=True)),
                ('medico', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='consultas', to='medicos.Medico')),
            ],
        ),
    ]
