import datetime

from django.http import HttpResponse
from django.utils import timezone
from rest_framework import viewsets, filters
from rest_framework import permissions

from agendas.models import AgendaHorario
from consultas.serializers import ConsultaSerializer
from consultas.models import Consulta


class ConsultaViewSet(viewsets.ModelViewSet):
    """
    endpoint para consultar e criar consultas.
    """
    queryset = Consulta.objects.all()
    serializer_class = ConsultaSerializer
    filter_backends = [filters.OrderingFilter]
    ordering = ['dia', 'horario']
    permission_classes = [permissions.IsAuthenticated]

    #   Sobrescrevendo o método DELETE para impedir que um usuário apague uma consulta que não
    #   Foi marcada por ele
    def destroy(self, request, *args, **kwargs):
        try:
            consulta = Consulta.objects.get(id=kwargs['pk'])
            agenda_horario = AgendaHorario.objects.get(agenda_id=consulta.agenda.id, horario__horario=consulta.horario)

            if consulta.dia < datetime.date.today():
                if consulta.horario < timezone.now().time():
                    return HttpResponse('Não é possivel desmarcar uma consulta que já passou', status=403)

            if request.user == consulta.user or request.user.is_superuser:
                agenda_horario.preenchido = False
                agenda_horario.save()
                consulta.delete()
                return HttpResponse('Consulta id={} deletada com sucesso!'.format(kwargs['pk']), status=204)
            else:
                return HttpResponse('Você não tem permissão para deletar a consulta id={}.'.format(kwargs['pk']), status=403)

        except Exception as ex:
            return HttpResponse('Houve um erro ao deletar a consulta. Erro: {}'.format(ex),
                                status=500)

    def get_queryset(self):
        return Consulta.objects.filter(dia__gte=datetime.date.today(), user=self.request.user)
