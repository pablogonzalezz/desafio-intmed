# Generated by Django 2.2.16 on 2020-10-02 17:34

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('especialidades', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Medico',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=60)),
                ('especialidade', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='especialidades.Especialidade')),
            ],
        ),
    ]
