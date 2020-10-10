from django.contrib import admin
from django.core.exceptions import ValidationError
from django.db import models
from django.db.models import ManyToManyField
import datetime
from medicos.models import Medico


class Horarios(models.Model):
    horario = models.TimeField(unique=True)

    def __str__(self):
        if self.horario.hour == 0:
            hour = '00'
        else:
            hour = self.horario.hour
        if self.horario.minute == 0:
            minute = '00'
        else:
            minute = self.horario.minute
        return '{}:{}'.format(hour, minute)


class Agenda(models.Model):
    medico = models.ForeignKey(Medico, on_delete=models.CASCADE, related_name='agendas_medicos')
    dia = models.DateField()
    horarios = ManyToManyField(Horarios, related_name='agendas', through='AgendaHorario')

    class Meta:
        unique_together = ('medico', 'dia')

    def __str__(self):
        return '{}/{}/{} - {}'.format(self.dia.day, self.dia.month, self.dia.year, self.medico.__str__())

    def clean(self):
        if self.dia < datetime.date.today():
            raise ValidationError("Você não pode fazer uma agenda para um dia passado.")


class AgendaHorario(models.Model):
    agenda = models.ForeignKey(Agenda, on_delete=models.CASCADE)
    horario = models.ForeignKey(Horarios, on_delete=models.CASCADE)
    preenchido = models.BooleanField(default=False)


class role_inline(admin.TabularInline):
    model = AgendaHorario


class AgendaAdmin(admin.ModelAdmin):
    inlines = (role_inline,)


class HorariosAdmin(admin.ModelAdmin):
    inlines = (role_inline,)
