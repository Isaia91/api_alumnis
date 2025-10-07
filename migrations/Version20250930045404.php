<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20250930045404 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE alumni (id INT UNSIGNED AUTO_INCREMENT NOT NULL, nom VARCHAR(255) NOT NULL, prenom VARCHAR(255) DEFAULT NULL, linkedin VARCHAR(512) DEFAULT NULL, promotion SMALLINT UNSIGNED DEFAULT NULL, formation VARCHAR(255) DEFAULT NULL, profil LONGTEXT DEFAULT NULL, email VARCHAR(320) DEFAULT NULL, telephone VARCHAR(32) DEFAULT NULL, contacte_par VARCHAR(255) DEFAULT NULL, accord_itv TINYINT(1) DEFAULT NULL, date_passage DATE DEFAULT NULL, temoignage_parcours LONGTEXT DEFAULT NULL, date_rencontre DATE DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE alumni');
    }
}
