<?php

namespace App\Controller;

use App\Entity\Alumni;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class AlumniController extends AbstractController
{
    #[Route('/api/alumnis', name: 'api_alumnis_list', methods: ['GET'])]
    public function list(EntityManagerInterface $em): JsonResponse
    {
        $alumnis = $em->getRepository(Alumni::class)->findAll();

        // Transformer en tableau pour JSON
        $data = array_map(function (Alumni $a) {
            return [
                'id' => $a->getId(),
                'nom' => $a->getNom(),
                'prenom' => $a->getPrenom(),
                'linkedin' => $a->getLinkedin(),
                'promotion' => $a->getPromotion(),
                'formation' => $a->getFormation(),
                'profil' => $a->getProfil(),
                'email' => $a->getEmail(),
                'telephone' => $a->getTelephone(),
                'contacte_par' => $a->getContactePar(),
                'accord_itv' => $a->isAccordItv(),
                'date_passage' => $a->getDatePassage()?->format('Y-m-d'),
                'temoignage_parcours' => $a->getTemoignageParcours(),
                'date_rencontre' => $a->getDateRencontre()?->format('Y-m-d'),
            ];
        }, $alumnis);

        return $this->json($data);
    }

    #[Route('/api/alumnis/{id}', name: 'api_alumnis_show', methods: ['GET'])]
    public function show(EntityManagerInterface $em, int $id): JsonResponse
    {
        $a = $em->getRepository(Alumni::class)->find($id);

        if (!$a) {
            return $this->json(['error' => 'Alumni non trouvé'], 404);
        }

        return $this->json([
            'id' => $a->getId(),
            'nom' => $a->getNom(),
            'prenom' => $a->getPrenom(),
            'linkedin' => $a->getLinkedin(),
            'promotion' => $a->getPromotion(),
            'formation' => $a->getFormation(),
            'profil' => $a->getProfil(),
            'email' => $a->getEmail(),
            'telephone' => $a->getTelephone(),
            'contacte_par' => $a->getContactePar(),
            'accord_itv' => $a->isAccordItv(),
            'date_passage' => $a->getDatePassage()?->format('Y-m-d'),
            'temoignage_parcours' => $a->getTemoignageParcours(),
            'date_rencontre' => $a->getDateRencontre()?->format('Y-m-d'),
        ]);
    }
}
