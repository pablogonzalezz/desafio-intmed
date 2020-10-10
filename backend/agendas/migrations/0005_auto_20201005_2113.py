# Generated by Django 2.2.16 on 2020-10-05 21:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('agendas', '0004_auto_20201003_1840'),
    ]

    operations = [
        migrations.CreateModel(
            name='AgendaHorario',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('preenchido', models.BooleanField(default=False)),
            ],
        ),
        migrations.AddField(
            model_name='agenda',
            name='horarios',
            field=models.ManyToManyField(related_name='agendas', through='agendas.AgendaHorario', to='agendas.Horarios'),
        ),
        migrations.AddField(
            model_name='agendahorario',
            name='agenda',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='agendas.Agenda'),
        ),
        migrations.AddField(
            model_name='agendahorario',
            name='horario',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='agendas.Horarios'),
        ),
    ]