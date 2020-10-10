import datetime
from django_filters.rest_framework import DjangoFilterBackend
import django_filters
from rest_framework import viewsets, filters
from rest_framework import permissions
from agendas.serializers import AgendaSerializer
from agendas.models import Agenda, AgendaHorario
from especialidades.models import Especialidade


class DateFilter(django_filters.FilterSet):
    """
    Filtro de datas na url
    """

    data_inicio = django_filters.DateFilter(lookup_expr="gte", field_name="dia")
    data_final = django_filters.DateFilter(lookup_expr="lte", field_name="dia")
    especialidade = django_filters.ModelChoiceFilter(field_name='medico__especialidade', queryset=Especialidade.objects.all())

    class Meta:
        model = Agenda
        fields = ['data_inicio', 'data_final', 'medico', 'especialidade']


class AgendaViewSet(viewsets.ModelViewSet):
    """
    endpoint para consultar e criar agendas.
    """

    preenchido_list = []
    all_agendas = Agenda.objects.filter(dia__gte=datetime.date.today())

    for agenda in all_agendas:
        all_agendaHorarios = AgendaHorario.objects.filter(agenda_id=agenda.id)

        for agendaHorario in all_agendaHorarios:
            if agendaHorario.preenchido:
                preenchido_list.append(True)
            else:
                preenchido_list.append(False)

        if False not in preenchido_list:
            all_agendas = all_agendas.exclude(id=agenda.id)

    queryset = Agenda.objects.filter(dia__gte=datetime.date.today())
    serializer_class = AgendaSerializer
    permission_classes = [permissions.IsAuthenticated]
    filter_backends = [filters.SearchFilter, DjangoFilterBackend, filters.OrderingFilter]
    ordering = ['dia']
    filterset_class = DateFilter
    search_fields = ['nome']
    filterset_fields = ['medico', 'especialidade']


