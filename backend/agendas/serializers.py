from rest_framework import serializers
from agendas.models import Agenda, Horarios
from medicos.models import Medico
from medicos.serializers import MedicoSerializer
import datetime


class HorarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Horarios
        fields = ['horario']


class AgendaSerializer(serializers.ModelSerializer):
    medico = MedicoSerializer(read_only=True)
    medico_field = serializers.PrimaryKeyRelatedField(source='medico', queryset=Medico.objects.all(),
                                                      write_only=True, label="Médico")
    horarios = serializers.StringRelatedField(many=True, read_only=True)
    horarios = serializers.SerializerMethodField('hour_method')
    horarios_field = serializers.PrimaryKeyRelatedField(source='horarios', queryset=Horarios.objects.filter(
        agendahorario__preenchido=False),
                                                        write_only=True, label="Horários", many=True)

    class Meta:
        model = Agenda
        fields = ['id', 'medico', 'medico_field', 'dia', 'horarios', 'horarios_field']

    """
      Método para filtrar os horários passados
    """
    def hour_method(self, agenda):
        qs = Horarios.objects.filter(agendahorario__preenchido=False, agendas=agenda)

        if agenda.dia == datetime.datetime.today().date():
            for horario in qs:
                if horario.horario < datetime.datetime.now().time():
                    qs = qs.exclude(horario=horario.horario)

        serializer = HorarioSerializer(instance=qs, many=True)
        list = []

        for data in serializer.data:
            list.append(data['horario'])
        return list

    def validate(self, attrs):
        hoje = datetime.date.today()
        if attrs['dia'] < hoje:
            raise serializers.ValidationError("Você não pode fazer uma agenda para um dia passado.")
        return attrs
