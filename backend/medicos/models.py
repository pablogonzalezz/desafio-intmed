from django.core.validators import RegexValidator
from django.db import models
from especialidades.models import Especialidade


class Medico(models.Model):
    nome = models.CharField(max_length=60)
    crm = models.IntegerField(default=None)
    especialidade = models.ForeignKey(Especialidade, on_delete=models.CASCADE, related_name='medicos')
    email = models.CharField(max_length=60, blank=True, null=True)
    telefone_regex = RegexValidator(regex=r'^[0-9]+$',
                                    message="Insira um número de telefone")

    telefone = models.CharField(max_length=11, validators=[telefone_regex], blank=True, null=True)

    def __str__(self):
        return self.nome + ' | ' + self.especialidade.__str__()
