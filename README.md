# Backend

Para montar o backend, basta seguir os seguintes passos.

## 1. Instalar o Pyenv

Cole o código a seguir no bash:

```bash
# -->>>> Não rodar como Root
curl https://pyenv.run | bash
echo '' >> ~/.bashrc
echo '# adiciona o pyenv ao PATH' >> ~/.bashrc
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
#recarrega o bash
bash
```

## 2. Ativar o Pyenv
Na pasta raiz do projeto, execute o código a seguir:

```bash
cd backend
pyenv install 3.5.9
pyenv virtualenv 3.5.9 backend_3.5.9
pyenv local backend_3.5.9
```


## 3. Instalar as dependencias
na pasta raiz do backend ("/backend"), rodar o código:
```bash
pip install -r requirements.txt
```

## 4. Rodar o Backend
na pasta raiz do backend ("/backend"), rodar o código:
```bash
python manage.py runserver
```

Feito isso, o servidor já estará rodando normalmente em [http://localhost:8000/](http://localhost:8000/)


# Frontend
## 1. Instalar as dependências
Na pasta raiz do frontend ("/frontend"), rodar:
```bash
npm install
```

Pronto, o frontend já deverá estar rodando em 
[http://localhost:4200/](http://localhost:4200/)
