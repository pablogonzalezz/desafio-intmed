import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Consulta } from '../interfaces/consulta';
import { ApiService } from '../services/api.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  usuario_logado: string = localStorage.getItem('intmed_logged_user_name') || sessionStorage.getItem('intmed_logged_user_name')
  displayedColumns: string[] = ['especialidade', 'profissional', 'data', 'hora', 'id'];
  consultas: Consulta[];


  constructor(
    private router: Router,
    private api: ApiService
  ) { }

  ngOnInit(): void {
    if (localStorage.getItem('intmed_token') == null && sessionStorage.getItem('intmed_token') == null) {
      this.router.navigate(['/login']);
    }
    
    this.api.getConsultas()
      .subscribe(
        (result) => { this.consultas = result; },
        (error) => {}
      )
  }

  desmarcarConsulta(id: number) {
    this.api.desmarcarConsulta(id)
      .subscribe(result =>
        location.reload()
      )
  }

  deslogar() {
    localStorage.removeItem('intmed_token');
    localStorage.removeItem('intmed_logged_user_name');
    localStorage.removeItem('intmed_logged_user_id');
    sessionStorage.removeItem('intmed_token');
    sessionStorage.removeItem('intmed_logged_user_name');
    sessionStorage.removeItem('intmed_logged_user_id');

    this.router.navigate(['/login']);
  }

}
