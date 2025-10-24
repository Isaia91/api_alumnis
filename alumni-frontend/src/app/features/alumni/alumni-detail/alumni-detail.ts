// src/app/features/alumni/alumni-detail/alumni-detail.component.ts
import { Component, OnInit, inject, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ActivatedRoute, RouterLink } from '@angular/router';
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
  selector: 'app-alumni-detail',
  standalone: true,
  imports: [CommonModule, RouterLink],
  templateUrl: './alumni-detail.html',
  styleUrls: ['./alumni-detail.css'],
  schemas: [CUSTOM_ELEMENTS_SCHEMA]
})
export class AlumniDetailComponent implements OnInit {
  private route = inject(ActivatedRoute);
  private http = inject(HttpClient);

  loading = true;
  error: string | null = null;
  data: AlumniDto | null = null;

  ngOnInit() {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.http.get<AlumniDto>(`/api/alumnis/${id}`).subscribe({
      next: a => { this.data = a; this.loading = false; },
      error: _ => { this.error = 'Alumni introuvable'; this.loading = false; }
    });
  }

  displayName(a: AlumniDto) { return `${a.prenom ?? ''} ${a.nom ?? ''}`.trim(); }

  itemClass(a: AlumniDto) {
    // Donne un style de couverture différent selon l’ID (3 variantes)
    const n = (a.id ?? 0) % 3;
    return ['item-a', 'item-b', 'item-c'][n];
  }

  initials(a: AlumniDto) {
    const p = (a.prenom || '').trim();
    const n = (a.nom || '').trim();
    const i1 = p ? p[0] : '';
    const i2 = n ? n[0] : '';
    return (i1 + i2).toUpperCase() || 'AL';
  }
}
