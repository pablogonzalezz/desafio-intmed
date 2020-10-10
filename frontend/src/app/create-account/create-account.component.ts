import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { ApiService } from '../services/api.service'

@Component({
  selector: 'app-create-account',
  templateUrl: './create-account.component.html',
  styleUrls: ['./create-account.component.css']
})
export class CreateAccountComponent implements OnInit {
  hide = true;
  hide2 = true;
  form_errors: string;
  form_success: string;

  constructor(private apiService: ApiService) { }

  ngOnInit(): void {

  }

  onSubmit(formData: NgForm) {
    if(formData.valid) {
      if(formData.value.password1 == formData.value.password2) {

        this.apiService.signup({
          'username': formData.value.username,
          'email': formData.value.email,
          'password1': formData.value.password1,
          'password2': formData.value.password2
        })
        .subscribe(
          (result) => { this.form_success = "Conta criada com sucesso!" },
          (error) => { this.form_errors=error.error.msg}
        )
        
      } else {
        this.form_errors = "Confira a senha e tente novamente."
      }
    }
  }

}
