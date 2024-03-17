import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { HttpClientModule, HttpClient } from '@angular/common/http';
import { OnInit } from '@angular/core';
@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, HttpClientModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent implements OnInit {
  title = 'client';

  stuff: string = 'hi';

  constructor(
    private http: HttpClient
  ) {}

  ngOnInit() {
    this.http.get('/api/whoami/').subscribe(
      {
        next: (data: any) => {
          this.stuff = data.user;
        }
      }

      );
  }
}
