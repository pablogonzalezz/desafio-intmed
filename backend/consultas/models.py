from django.contrib.auth.models import User
from django.db import models
from agendas.models import Agenda, Horarios
from medicos.models import Medico


class Consulta(models.Model):
    agenda = models.ForeignKey(Agenda, on_delete=models.CASCADE, default=None, null=True)
    dia = models.DateField(default=None, null=True)
    horario = models.TimeField(default=None, null=True)
    data_agendamento = models.DateTimeField(auto_now=True)
    medico = models.ForeignKey(Medico, on_delete=models.CASCADE, related_name='consultas')
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='consultas_user', null=False, blank=False, default=None)

    def __str__(self):
        return '{}, {} - Paciente: {} | Dr: {}'.format(self.dia, self.horario, self.user.username, self.medico.__str__())




