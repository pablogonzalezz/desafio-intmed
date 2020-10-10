import { Component, NgModule, OnInit } from '@angular/core';
// import { MatButtonModule } from '@angular/material/button';
import { FormControl, FormGroup, NgForm } from '@angular/forms';
import { ApiService } from '../services/api.service';
import { Login } from '../interfaces/login.interface';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  hide = true;
  login: Login;
  login_error = '';
  remember_me: boolean = false;
  
  constructor(
    private api: ApiService,
    private router: Router
    ) { }

  ngOnInit(): void { }

  onSubmit(formData: NgForm) {
    if(formData.valid){
      
      this.api.makeLogin({username: formData.value.username, password: formData.value.password})
        .subscribe(
          (result) => {
            if (this.remember_me == true) {
              localStorage.setItem('intmed_logged_user_name', result.user)
              localStorage.setItem('intmed_logged_user_id', result.id)
            } else {
              sessionStorage.setItem('intmed_logged_user_name', result.user)
              sessionStorage.setItem('intmed_logged_user_id', result.id)
            }
            
            
            this.api.getToken({username: formData.value.username, password: formData.value.password})
              .subscribe(
                result => {
                  if (this.remember_me == true) {
                    localStorage.setItem('intmed_token', result.token);
                  } else {
                    sessionStorage.setItem('intmed_token', result.token);
                  }
                  
                  this.router.navigate(['/home'])
                }
              )
          }, 
          
          (error) => this.login_error = error.error.msg
        )
    }
    
  }

}
