import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Login } from '../interfaces/login.interface';
import { Signup } from '../interfaces/signup.interface';
import { Especialidade } from '../interfaces/especialidade';
import { Agenda } from '../interfaces/agenda';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  private apiRoot = 'http://localhost:8000/'
  private token(): string {return localStorage.getItem('intmed_token') || sessionStorage.getItem('intmed_token')}

  constructor(private http: HttpClient) { }

  makeLogin(login: Login) {
    let formdata = new FormData();
    formdata.append('username', login.username);
    formdata.append('password', login.password);

    return this.http.post<any>(`${this.apiRoot}login/`, formdata);   
  }

  getToken(login: Login) {
    let formdata = new FormData();
    formdata.append('username', login.username);
    formdata.append('password', login.password);

    return this.http.post<any>(`${this.apiRoot}api-token-auth/`, formdata);
  }

  signup(info: Signup) {
    let formdata = new FormData();
    formdata.append('name', info.username);
    formdata.append('username', info.email);
    formdata.append('email', info.email);
    formdata.append('password1', info.password1);
    formdata.append('password2', info.password2);

    return this.http.post<any>(`${this.apiRoot}signup/`, formdata);
  }

  getEspecialidades() {
    let headers = {
      headers: new HttpHeaders()
        .set('Authorization', `Token ${this.token()}`)
    }
    return this.http.get<any>(`${this.apiRoot}especialidades/`, headers)
  }

  getMedicoByEspecialidade(especialidade: number) {
    let headers = {
      headers: new HttpHeaders()
        .set('Authorization', `Token ${this.token()}`)
    }
    return this.http.get<any>(`${this.apiRoot}medicos/?especialidade=${especialidade}`, headers)
  }

  getAgendaByMedico(medico: number) {
    let headers = {
      headers: new HttpHeaders()
        .set('Authorization', `Token ${this.token()}`)
    }
    return this.http.get<any>(`${this.apiRoot}agendas/?medico=${medico}`, headers)
  }

  createConsulta(agenda: string, hora: string) {
    if(hora.charAt(0) == "0") {
      hora = hora.slice(1);
    }
    let hora_formatada = `${hora.split(':', 2)[0]}:${hora.split(':', 2)[1]}`

    let formdata = new FormData();
    formdata.append('agenda_id', agenda);
    formdata.append('horario', hora_formatada);


    let headers = {
      headers: new HttpHeaders()
        .set('Authorization', `Token ${this.token()}`)
    }

    return this.http.post<any>(`${this.apiRoot}consultas/`, formdata, headers);   
  }

  getConsultas() {
    let headers = {
      headers: new HttpHeaders()
        .set('Authorization', `Token ${this.token()}`)
    }

    return this.http.get<any>(`${this.apiRoot}consultas/`, headers)
  }

  desmarcarConsulta(consulta: number) {
    let headers = {
      headers: new HttpHeaders()
        .set('Authorization', `Token ${this.token()}`)
    }

    return this.http.delete<any>(`${this.apiRoot}consultas/${consulta}/`, headers)
  }
}
