// src/app/features/alumni/alumni-list/alumni-list.ts
import { Component, OnInit, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { RouterLink } from '@angular/router';
import { QRCodeComponent } from 'angularx-qrcode';
import { HttpClient } from '@angular/common/http';

type AlumniDto = {
  id: number; nom: string; prenom: string;
  linkedin?: string|null; promotion?: string|null; formation?: string|null;
  profil?: string|null; email?: string|null; telephone?: string|null;
  contacte_par?: string|null; accord_itv?: boolean;
  date_passage?: string|null; temoignage_parcours?: string|null;
  date_rencontre?: string|null;
};

@Component({
  selector: 'app-alumni-list',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterLink, QRCodeComponent],
  templateUrl: './alumni-list.html'
})
export class AlumniListComponent implements OnInit {
  private http = inject(HttpClient);
  items: AlumniDto[] = [];
  loading = false;
  error: string | null = null;

  // <-- simple propriété string (pas un signal)
  search = '';

  ngOnInit() { this.load(); }

  load() {
    this.loading = true;
    this.error = null;
    this.http.get<AlumniDto[]>('/api/alumnis').subscribe({
      next: res => { this.items = res; this.loading = false; },
      error: _ => { this.error = 'Erreur de chargement'; this.loading = false; }
    });
  }

  filtered(): AlumniDto[] {
    const s = this.search.toLowerCase().trim();
    if (!s) return this.items;
    return this.items.filter(a =>
      [a.nom, a.prenom, a.formation, a.promotion, a.profil]
        .some(v => (v ?? '').toLowerCase().includes(s))
    );
  }

  displayName(a: AlumniDto) { return `${a.prenom ?? ''} ${a.nom ?? ''}`.trim(); }

  qrUrl(a: AlumniDto) { return `${location.origin}/alumni/${a.id}`; }
}
