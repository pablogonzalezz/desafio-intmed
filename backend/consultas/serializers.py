import datetime
from rest_framework import serializers
from rest_framework.exceptions import ValidationError
from agendas.models import Horarios, Agenda, AgendaHorario
from consultas.models import Consulta
from medicos.serializers import MedicoSerializer


class ConsultaSerializer(serializers.ModelSerializer):
    medico = MedicoSerializer(read_only=True)
    dia = serializers.CharField(read_only=True)
    horario = serializers.ChoiceField(choices=Horarios.objects.all())
    agenda_id = serializers.PrimaryKeyRelatedField(source='agenda', queryset=Agenda.objects.all(), write_only=True)

    class Meta:
        model = Consulta
        fields = ['id', 'dia', 'agenda_id', 'horario', 'data_agendamento', 'medico']

    def validate(self, attrs):
        agenda_horarios = AgendaHorario.objects.filter(agenda=attrs['agenda'])
        consultas_usuario = Consulta.objects.filter(user_id=self.context['request'].user.id)

        for consulta_usuario in consultas_usuario:
            if consulta_usuario.dia == attrs['agenda'].dia:
                if consulta_usuario.horario == attrs['horario']:
                    raise ValidationError("Você já possui uma consulta no mesmo horário indicado. Consulta: {}".format(consulta_usuario.__str__()))

        if attrs['agenda'].dia < datetime.date.today():
            raise ValidationError("Não é possível agendar uma consulta para um dia passado.")

        for agenda_horario in agenda_horarios:
            if agenda_horario.horario == attrs['horario'] and agenda_horario.preenchido is not True:
                return attrs
        raise ValidationError("O médico não possui disponibilidade no horário especificado.")

    def create(self, validated_data):
        validated_data['dia'] = validated_data['agenda'].dia
        validated_data['medico'] = validated_data['agenda'].medico
        validated_data['horario'] = validated_data['horario'].horario

        obj = Consulta.objects.create(**validated_data)
        obj.user = self.context['request'].user
        obj.save()

        horario = AgendaHorario.objects.filter(agenda=obj.agenda, agenda__consulta=obj, horario__horario=validated_data['horario']).first()
        horario.preenchido = True
        horario.save()
        return obj
