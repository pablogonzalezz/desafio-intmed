from rest_framework import viewsets
from rest_framework import permissions
from especialidades.serializers import EspecialidadeSerializer
from especialidades.models import Especialidade
from rest_framework import filters


class EspecialidadeViewSet(viewsets.ModelViewSet):
    """
    endpoint que permite especialidades sejam criadas ou editadas.
    """
    queryset = Especialidade.objects.all()
    serializer_class = EspecialidadeSerializer
    permission_classes = [permissions.IsAuthenticated]
    filter_backends = [filters.SearchFilter]
    search_fields = ['nome']
