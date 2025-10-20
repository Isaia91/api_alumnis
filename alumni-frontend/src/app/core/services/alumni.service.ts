import { Injectable, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { AlumniDto } from '../models/alumni';


@Injectable({ providedIn: 'root' })
export class AlumniService {
  private http = inject(HttpClient);
  private baseUrl = '/api/alumnis'; // same host via proxy; or full URL


  list(): Observable<AlumniDto[]> {
    return this.http.get<AlumniDto[]>(this.baseUrl);
  }


  get(id: number): Observable<AlumniDto> {
    return this.http.get<AlumniDto>(`${this.baseUrl}/${id}`);
  }
}
