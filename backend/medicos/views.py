from django.shortcuts import render
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import viewsets
from rest_framework import permissions
from medicos.serializers import MedicoSerializer
from medicos.models import Medico
from rest_framework import filters


class MedicoViewSet(viewsets.ModelViewSet):
    """
    endpoint que permite médicos serem criados ou editados.
    """
    queryset = Medico.objects.all()
    serializer_class = MedicoSerializer
    permission_classes = [permissions.IsAuthenticated]
    filter_backends = [filters.SearchFilter, DjangoFilterBackend]
    search_fields = ['nome']
    filterset_fields = ['especialidade']



