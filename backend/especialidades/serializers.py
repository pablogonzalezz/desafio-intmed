from rest_framework import serializers
from especialidades.models import Especialidade


class EspecialidadeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Especialidade
        fields = ['id', 'nome']
