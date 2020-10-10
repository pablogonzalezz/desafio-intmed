from django.db import models


class Especialidade(models.Model):
    nome = models.CharField(max_length=60)

    def __str__(self):
        return self.nome
