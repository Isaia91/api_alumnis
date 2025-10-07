<?php

namespace App\Entity;

use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity]
#[ORM\Table(name: 'alumni')]
class Alumni
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer', options: ['unsigned' => true])]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private string $nom;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $prenom = null;

    #[ORM\Column(length: 512, nullable: true)]
    private ?string $linkedin = null;

    #[ORM\Column(type: 'smallint', nullable: true, options: ['unsigned' => true])]
    private ?int $promotion = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $formation = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $profil = null;

    #[ORM\Column(length: 320, nullable: true)]
    private ?string $email = null;

    #[ORM\Column(length: 32, nullable: true)]
    private ?string $telephone = null;

    #[ORM\Column(name: 'contacte_par', length: 255, nullable: true)]
    private ?string $contactePar = null;

    #[ORM\Column(name: 'accord_itv', type: Types::BOOLEAN, nullable: true)]
    private ?bool $accordItv = null;

    #[ORM\Column(name: 'date_passage', type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $datePassage = null;

    #[ORM\Column(name: 'temoignage_parcours', type: Types::TEXT, nullable: true)]
    private ?string $temoignageParcours = null;

    #[ORM\Column(name: 'date_rencontre', type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $dateRencontre = null;

    // ---- Getters / Setters (génère avec maker:entity si tu veux) ----
    public function getId(): ?int { return $id ?? null; }
    public function getNom(): string { return $this->nom; }
    public function setNom(string $nom): self { $this->nom = $nom; return $this; }

    public function getPrenom(): ?string { return $this->prenom; }
    public function setPrenom(?string $prenom): self { $this->prenom = $prenom; return $this; }

    public function getLinkedin(): ?string { return $this->linkedin; }
    public function setLinkedin(?string $linkedin): self { $this->linkedin = $linkedin; return $this; }

    public function getPromotion(): ?int { return $this->promotion; }
    public function setPromotion(?int $promotion): self { $this->promotion = $promotion; return $this; }

    public function getFormation(): ?string { return $this->formation; }
    public function setFormation(?string $formation): self { $this->formation = $formation; return $this; }

    public function getProfil(): ?string { return $this->profil; }
    public function setProfil(?string $profil): self { $this->profil = $profil; return $this; }

    public function getEmail(): ?string { return $this->email; }
    public function setEmail(?string $email): self { $this->email = $email; return $this; }

    public function getTelephone(): ?string { return $this->telephone; }
    public function setTelephone(?string $telephone): self { $this->telephone = $telephone; return $this; }

    public function getContactePar(): ?string { return $this->contactePar; }
    public function setContactePar(?string $contactePar): self { $this->contactePar = $contactePar; return $this; }

    public function isAccordItv(): ?bool { return $this->accordItv; }
    public function setAccordItv(?bool $accordItv): self { $this->accordItv = $accordItv; return $this; }

    public function getDatePassage(): ?\DateTimeInterface { return $this->datePassage; }
    public function setDatePassage(?\DateTimeInterface $datePassage): self { $this->datePassage = $datePassage; return $this; }

    public function getTemoignageParcours(): ?string { return $this->temoignageParcours; }
    public function setTemoignageParcours(?string $temoignageParcours): self { $this->temoignageParcours = $temoignageParcours; return $this; }

    public function getDateRencontre(): ?\DateTimeInterface { return $this->dateRencontre; }
    public function setDateRencontre(?\DateTimeInterface $dateRencontre): self { $this->dateRencontre = $dateRencontre; return $this; }// ou génère tout avec maker
}
