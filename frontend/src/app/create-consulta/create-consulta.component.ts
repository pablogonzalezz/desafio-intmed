import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Agenda } from '../interfaces/agenda';
import { Especialidade } from '../interfaces/especialidade';
import { Medico } from '../interfaces/medico';
import { ApiService } from '../services/api.service';

@Component({
  selector: 'app-create-consulta',
  templateUrl: './create-consulta.component.html',
  styleUrls: ['./create-consulta.component.css']
})
export class CreateConsultaComponent implements OnInit {
  consulta_error: string;
  consulta_marcada: string;

  selectedEspecialidade: string;
  selectedMedico: string;
  selectedData: Agenda;
  selectedHora: string;

  especialidades: Especialidade[];
  medicos: Medico[];
  agendas: Agenda[];
  horarios: string[];

  medicoDisabled: boolean = true;
  agendaDisabled: boolean = true;
  horarioDisabled: boolean = true;

  constructor(private api: ApiService) { }

  ngOnInit(): void {
    this.api.getEspecialidades()
      .subscribe(result => this.especialidades = result)
  }

  onEspecialidadeChanged(selectedValue: any) {
    this.api.getMedicoByEspecialidade(selectedValue.value)
      .subscribe(result => this.medicos = result)
    this.medicoDisabled = false;
  }

  onMedicoChanged(selectedValue: any) {
    this.api.getAgendaByMedico(selectedValue.value)
      .subscribe(result => {this.agendas = result})
    this.agendaDisabled = false;
  }

  onDataChanged(selectedValue: any) {
    this.horarios = selectedValue.value.horarios;
    this.horarioDisabled = false;
  }

  onSubmit(formData: NgForm) {
    this.api.createConsulta(this.selectedData.id.toString(), this.selectedHora)
      .subscribe(
        (result) => {
          this.consulta_marcada = "Consulta marcada com sucesso!";
          this.horarioDisabled = true;
          this.medicoDisabled = true;
          this.agendaDisabled = true;
          this.selectedEspecialidade = null;
          this.selectedMedico = null;
          this.selectedData = null;
          this.selectedHora = null;
        },
        (error) => {this.consulta_error = error.error.msg}
      )
  }
}
