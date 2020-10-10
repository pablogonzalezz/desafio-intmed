"""backend URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from django.urls import include, path
from rest_framework import routers
from rest_framework.authtoken.views import obtain_auth_token
from especialidades import views as EspecialidadeView
from medicos import views as MedicoView
from consultas import views as ConsultasView
from agendas import views as AgendasView
from accounts import views as AccountView

router = routers.DefaultRouter()
router.register(r'especialidades', EspecialidadeView.EspecialidadeViewSet)
router.register(r'medicos', MedicoView.MedicoViewSet)
router.register(r'consultas', ConsultasView.ConsultaViewSet)
router.register(r'agendas', AgendasView.AgendaViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    path('', include(router.urls)),
    path('accounts/', include('django.contrib.auth.urls')),
    path('api-token-auth/', obtain_auth_token, name='api_token_auth'),

    # Autenticação e login
    url(r'^signup/$', AccountView.signup, name='signup'),
    url(r'^login/$', AccountView.login, name='login'),
]
