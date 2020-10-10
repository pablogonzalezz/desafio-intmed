from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.http import JsonResponse
from django.contrib.auth import login as auth_login, authenticate
from django.views.decorators.csrf import csrf_exempt


@csrf_exempt
def signup(request):
    if request.method == 'POST':
        try:
            form = UserCreationForm(request.POST)

            if form.is_valid():
                #   Salvando nome e email do usuario
                form.instance.first_name = request.POST.get('name')
                form.instance.email = request.POST.get('email')
                form.save()

                #   Fazendo autenticação e login
                username = form.cleaned_data.get('username')
                raw_password = form.cleaned_data.get('password1')
                user = authenticate(username=username, password=raw_password)
                auth_login(request, user)
                return JsonResponse({'msg': 'Usuário criado com sucesso!'}, status=200)
            else:
                return JsonResponse({'msg': 'Houve um erro ao criar o usuário! Erro: {}'.format(form.errors.as_text())}, status=500)
        except Exception as ex:
            return JsonResponse({'msg': 'Houve um erro ao criar o usuário! Erro: {}'.format(ex)}, status=500)


@csrf_exempt
def login(request):
    if request.method == 'POST':
        try:
            form = AuthenticationForm(data=request.POST)

            if form.is_valid():
                username = form.cleaned_data.get('username')
                raw_password = form.cleaned_data.get('password')
                user = authenticate(username=username, password=raw_password)
                auth_login(request, user)
                return JsonResponse({'msg': 'Usuário logado com sucesso!', 'user': user.first_name, 'id': user.id}, status=200)
            else:
                return JsonResponse({'msg': 'Houve um erro ao logar o usuário! Erro: {}'.format(form.errors.as_text())},
                            status=500)
        except Exception as ex:
            return JsonResponse({'msg': 'Houve um erro ao logar o usuário! Erro: {}'.format(ex)}, status=500)
