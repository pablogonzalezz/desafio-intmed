from django.contrib import admin
from agendas.models import Agenda, AgendaAdmin

# Register your models here.


# admin.site.register(Agenda)
admin.site.register(Agenda, AgendaAdmin)
