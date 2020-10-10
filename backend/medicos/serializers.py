from rest_framework import serializers
from especialidades.models import Especialidade
from medicos.models import Medico
from especialidades.serializers import EspecialidadeSerializer


class MedicoSerializer(serializers.ModelSerializer):
    especialidade = EspecialidadeSerializer(read_only=True)
    especialidade_field = serializers.PrimaryKeyRelatedField(source='especialidade', queryset=Especialidade.objects.all(),
                                                          write_only=True, label="Especialidade")

    class Meta:
        model = Medico
        fields = ['id', 'crm', 'nome', 'especialidade', 'especialidade_field']
