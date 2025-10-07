-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: alumnis_db
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumni` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `linkedin` varchar(512) DEFAULT NULL,
  `promotion` smallint(5) unsigned DEFAULT NULL,
  `formation` varchar(255) DEFAULT NULL,
  `profil` longtext DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `contacte_par` varchar(255) DEFAULT NULL,
  `accord_itv` tinyint(1) DEFAULT NULL,
  `date_passage` date DEFAULT NULL,
  `temoignage_parcours` longtext DEFAULT NULL,
  `date_rencontre` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumni`
--

LOCK TABLES `alumni` WRITE;
/*!40000 ALTER TABLE `alumni` DISABLE KEYS */;
INSERT INTO `alumni` VALUES (1,'Alet','Fleur','https://www.linkedin.com/in/fleur-alet-bb237b174/',2019,'DUT MMI','Croupière au casino - Co-fondatrice de Kokofoo','fleur.alet@outlook.fr','802163','Isaia',NULL,NULL,NULL,NULL),(2,'Benjamin','Leila','profil LK',2021,'DUT MMI + LPCAN','Conseillère en communication - Gouvernement NC','leilabenjamin05@gemail.com','963103','Jean',NULL,NULL,NULL,NULL),(3,'Bermont ','Thomas','https://www.linkedin.com/in/thomas-bermont-423aa5204?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3Brw8K%2BOiORcSxvfwy%2BWReVQ%3D%3D',2017,'DUT GEA','Commercial bilingue - Notou découverte & transport',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Bonnace','Marine','profil LK',2022,'LP REVISION COMPTABLE','Comptable - Groupe Jeandot',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Bonneau','Yannick','https://www.linkedin.com/in/yannick-b-649640144?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BKmIR8McYSOO3WYxZTn3N9w%3D%3D',2016,'DUT GEA ','Administrateur du système d\'information comptable - Gouvernement ','yannick.bonneau9@gemail.com','801053','Shannon',NULL,NULL,NULL,NULL),(6,'Brune','Alexandre','https://www.linkedin.com/in/alexandre-brune-037?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BKackJn8eRUKsoU3Sw854bQ%3D%3D',2017,'DUT GEA + LP CD','Graphiste indep / chargé de projet - Avnear communication NC',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Carre','Soane','https://www.linkedin.com/in/soane-carr%C3%A9-998ba5192/',2018,'DUT MMI','Fondateur/Gérant de Kokofoo','soanecarr@yahoo.fr','704580','Shannon',0,NULL,NULL,NULL),(8,'Castaldo','Farella','https://www.linkedin.com/in/farella-castaldo-0b1268181?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BtWxy4JK8TIqRYUnMoQ4cJg%3D%3D',2019,'DUT GEA + LP CG','Comptable - ABI Sharp center',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Cau ','Victoria','https://www.linkedin.com/in/victoria-cau?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BlgPY2REtQmqFuEpFCbiTWQ%3D%3D',2018,'DUT GEA ','Auditeur financier - BDO NC',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Caune','Samantha','profil LK ',2020,'DUT MMI','Chef de projet numérique - La fabrik',NULL,NULL,'Asly',0,NULL,'oui',NULL),(11,'Cecchni','Jade','https://www.linkedin.com/in/jade-cecchini-42a566215?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BUquZYuOnT62LHAvlSmR8HQ%3D%3D',2021,'DUT GEA ','Comptable - Proxima',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Clément','Ewen','profil LK',2020,'DUT MMI + LP MIAW','Ingénieur informatique - Développeur Web - Gouvrenement NC',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Courtot','Brenda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Croze','Djo-hanna','profil LK ',2021,'LPCAN','Chargée de communication et développement numérique - CHS',NULL,NULL,NULL,1,NULL,NULL,NULL),(15,'Dalstein','Leslie','profil LK',2018,'LP Révision Comptable, Comptable ','Controleur de gestion - Aircalin',NULL,NULL,'Asly',NULL,NULL,NULL,NULL),(16,'Delaveau','Cyriaque','profil LK',2024,'DUT MMI + LP MIAW','Développeur Web - OPT NC',NULL,NULL,'Alicia',0,NULL,NULL,NULL),(17,'Doui','Edwing','https://www.linkedin.com/in/edwing-doui-436979186/',2019,'DUT MMI','Infographiste / Community Manager','edwinpbo@live.fr','903955','Enzo',NULL,NULL,NULL,NULL),(18,'Dubuisson','Coline','profil LK',2017,'LP Controle de gestion','Assistante de Direction commerciale Socalait',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'DuGuy','Antoine','profil LK',2021,'DUT MMI + LP CAN','Cadreur Monteur - vidéaste',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Falematagia','Kiteau','profil LK',2016,'DUT GEA','BNC - Chargé de crédit + Expérimenté métiers de la banque',NULL,NULL,'Naoki',NULL,NULL,NULL,NULL),(21,'Foord','Jodie','profil LK',2018,'DUT GEA','Gestionnaire de paie - Ocea NC',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Franceschini','Dempsey','profil LK',2023,'LP COMMERCE ET DISTRIBUTION ','Assistant responsable de Zone',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Fretray','Clément','profil LK',2022,'LPCAN (MMI)','Auto-entrepreneur - Rhetorik','rhetorik.formation@gemail.com','979738','Isaia',NULL,NULL,NULL,NULL),(24,'Gauchon','Solène','profil LK',2024,'BUT GEA','Comptable - Abalone Expertise Comptable, Consolidation et Commissariat aux Comptes','lionagauchon6@gemail.com',NULL,'Isaia',NULL,NULL,NULL,NULL),(25,'Gognetti','Solenn',NULL,2019,'DUT MMI','Formatrice Sgestion & Communication','gognetti.solenn@gemail.com','995930','Isaia',NULL,NULL,NULL,NULL),(26,'Hakomani','Milka','profil LK',2019,'DUT GEA','Assistante RH - Ballande SAS',NULL,NULL,'Asly',NULL,NULL,NULL,NULL),(27,'Hnepeune','Mélanie','https://www.linkedin.com/in/m%C3%A9lanie-hnepeune-75313a1a3?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3Bk4oDzFDbSz2dMl4urYpGDg%3D%3D',2021,'DUT GEA ','Gestionnaire RH - PRNC',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Katoa','Sinito','profil LK',2022,'LP MIAW','Technicien informatique - Gouvernement NC',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Katoa','Emilia','profil LK',2022,'DUT GEA','Chargée d\'assistance - Europ Assistance','ktvmya@gemail.com',NULL,'Isaia',NULL,NULL,NULL,NULL),(30,'Lange','Quentin','https://www.linkedin.com/in/quentin-lange-63b070188/',2017,'DUT MMI','Chargé de com - CMA','l.ange_quentin@icloud.com','783664','Isaia',NULL,NULL,NULL,NULL),(31,'Lapacas','Mètre',' profil LK ',2024,'BUT GEA',NULL,'m.lapacas@gemail.com',NULL,'Isaia',NULL,NULL,NULL,NULL),(32,'Larue','Oana','https://www.linkedin.com/in/oana-larue-25415613b/',2017,'DUT MMI','Chargée de Banque Digitale chez BNC','oana.larue@yahoo.com','843522','Isaia',NULL,NULL,NULL,NULL),(33,'Lauouvea','Moelogo','profil LK',2020,'LP Révision comptable, comptabilité','Comptable junior - Bolloré Logistics ',NULL,NULL,'lufina',NULL,NULL,NULL,NULL),(34,'Leroi','Tiffen','profil LK',2020,'LP Collaborateur Social et Paie','Gestionnaire paie et administration du personnel - CCI NC','t.leroi@cci.nc',NULL,'Lufina',1,NULL,NULL,NULL),(35,'Loueckhot','Franck','https://www.linkedin.com/in/franck-l-7b2b59199?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BoRCls8fOQk%2BrNpZtTaW1mA%3D%3D',2016,'DUT GEA + L30 éco gestion','Controleur des finances publiques - DGFP France',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'Luepack','Evody','https://www.linkedin.com/in/evody-luepack-16bb34169?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BfAbEJSrdSuqDYXU4mSZ2%2FQ%3D%3D',2019,'DUT GEA ','Agent comptable - Air loyauté',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'Mahboubi','Keiran','profil LK',2021,'LPCAN et LP Commerce et Distribution','Co-gérant de Billy\'s Burger',NULL,'986642','Jade',NULL,NULL,NULL,NULL),(38,'Maono','Aymrick','profil LK',2018,'DUT GEA','Agent de saisie - OPT NC',NULL,NULL,'Noah',NULL,NULL,NULL,NULL),(39,'Marie-Sainte','Maxime','profil LK',2023,'DUT MMI + LP CAN','Déplacement Australie','maxime.mariesainte022@gemail.com',NULL,'Isaia',NULL,NULL,NULL,NULL),(40,'Martot','Cédric','https://www.linkedin.com/in/c%C3%A9dric-martot/details/education/',2019,'DUT GEA','Conseiller de gestion de patrimoine et prévoyance',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'Montoux','Matéo',NULL,2024,'BUT MMI','Cadreur Monteur - vidéaste','matteomontout972@gemail.com','978267','Isaia',NULL,NULL,NULL,NULL),(42,'Moreau','Maiwen','https://www.linkedin.com/in/maiwenn-moreau?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3Brbrnfyv6Sq%2BLSmGC47erMA%3D%3D',2020,'DUT GEA ','Projet assistant in Non-Communicable Diseases Prevention - Pacific Community SPC',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'My','Glwadys','profil LK',2022,'LP CAN','Animatrice radio - NC1ère','my.glwadys@gemail.com',NULL,'Jade',1,NULL,NULL,NULL),(44,'Nak','Tina','https://www.linkedin.com/in/tina-iris-nak-frkhnc/',2020,'DUT MMI + LP Métiers de l\'informatique -\r\nApplications web, Technologies de l\'information','formation PEPITE',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'Ouassaoua','Esther','profil LK',2022,'DUT GEA + LP Collaborateur Social et Paie','Finance Payroll Officer - Pacific Community-SPC',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'Ouassaoua','Enola','https://www.linkedin.com/in/enola-ouassaoua-25a382244?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BDrlMFjSFTpupks4p80b%2BBw%3D%3D',2016,'DUT GEA','Chargée de mission RSE - BRL Groupe France',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'Ozoux','Marianne','https://www.linkedin.com/in/marianne-ozoux-3717541a4?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BowZ9IpRXSkCAZWroe7VYwg%3D%3D',2021,'DUT GEA + LP CD','Pilote d\'activité logistique - Vega',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'Pagès','Sarah','https://www.linkedin.com/in/sarah-pag%C3%A8s-57064b155?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BXGK6X35ZTbq77DKN6yN1Dw%3D%3D',2016,'DUT GEA','Gestionnaire paie / RH - Proxima',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'Pelizzo','Romain','profil LK',2022,'LP MIAW','Concepteur / Développeur d\'application - OPT',NULL,NULL,'Naoki',NULL,NULL,NULL,NULL),(50,'Pihahuna','Judicael','profil LK ',2021,'DUT MMI + LP CAN','Assistant Information et Publication - Pacific Community-SPC',NULL,NULL,'Enzo',1,NULL,NULL,NULL),(51,'Piotrowsky','Tori','https://www.linkedin.com/in/tori-piotrowsky-826272181?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BXy35sZTqTKK%2Fqz3rHT2sng%3D%3D',2019,'DUT GEA + LP CG','Analyste de gestion - OPT NC',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Qala','Didier','profil LK',2018,'DUT GEA','Coordinateur QHSE - TotalEnergies',NULL,NULL,'Dylan',NULL,NULL,NULL,NULL),(53,'Ragué','Prisca','profil LK',2018,'DUT GEA','Business partner Recrutement - PRNC','ragueprisca@hotemail.fr',NULL,'Alicia',1,NULL,NULL,NULL),(54,'Saimoen','Grégory','profil LK',2024,'LP MIAW','Concepteur / Développeur d\'application - OPT',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'Santacroce','Clara','https://www.linkedin.com/in/clara-santacroce-442056176?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BazZ9HScLSQCazVi0aiMuBQ%3D%3D',2016,'DUT GEA','Chargée marketing et communication digital - freelance france',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'Selefen','Sine','https://www.linkedin.com/in/sin%C3%A9-selefen/',2017,'DUT MMI','Coordinatrice Service civique -\r\nFédération des Oeuvres Laïques de Nouvelle-Calédonie',NULL,'507082',NULL,NULL,NULL,NULL,NULL),(57,'Tahmumu','Marie-Véronique','https://www.linkedin.com/in/marie-v%C3%A9ronique-tahmumu-957079147?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BHWX40ek9Q%2BGIFGV9gS2IFA%3D%3D',2016,'DUT GEA','Comptable - RBA (nc)',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'Taumalie','Marie-Stelephonela','htteps://www.linkedin.com/in/marie-stelephonela-taumaleie-10994b101?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BJwVvBz8rSgCGYtTSzunxcQ%3D%3D',2016,'DUT GEA','HR Business Partner - GBNC',NULL,NULL,'Asly',NULL,NULL,NULL,NULL),(59,'Temarii','Mairava','https://www.linkedin.com/in/mairava-temarii-0b8b34169?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BxjRHd9bvQvuX8zRGM6rCqA%3D%3D',2018,'DUT GEA + LP CG','Responsable controle interne - IEDOM IEOM',NULL,NULL,'Lufina',NULL,NULL,NULL,NULL),(60,'TEPA','HASSANE','https://www.linkedin.com/in/hass%C3%A2ne-tepa-533402187?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3B09APqtAPRwyQJe%2FbrLykAg%3D%3D',2020,'DUT MMI + LP MIAW','Développeur web - Lagoon','gctpub@lagoon.nc',NULL,NULL,NULL,NULL,NULL,NULL),(61,'Toagutu','Roane','profil LK',2020,'DUT GEA + LP Révision Comptable','Aide comptable - Socalait',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'Toekidjo','Surianti','�p',2017,'DUT MMI','UI/UX Designer / Strasbourg - Freshmile',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'Trantoine','Masinaekemai','https://www.linkedin.com/in/masinaekemai-trantoine-b35279184?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BmtelephonedRQkTBuwFeaibub%2FTXQ%3D%3D',2017,'DUT GEA + L3 éco gestion','Controleur crédit - TotalEnergies',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'Truvant','Anaïs','https://www.linkedin.com/in/ana%C3%AFs-truvant-58323b229?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3Ba3AX86psRrCYh9v7uIbInw%3D%3D',2019,'DUT GEA + LP CD','Responsable - Nouméa Pas Cher',NULL,NULL,'Enzo',NULL,NULL,NULL,NULL),(65,'Ujicas','Marion','https://www.linkedin.com/in/marion-ujicas-7957b51b3?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3Bff3y8%2FAhTZSe0MfDhB2ixw%3D%3D',2016,'DUT GEA','Intervenante sociale - croix rouge',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'Vanhalle','Alizée','profil LK',2018,'DUT GEA (2019) + LP Controle de gestion ','Controleur RHPA - Cafat',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,'Vanhalle ','Alyzée','https://www.linkedin.com/in/aliz%C3%A9e-vanhalle-682714119?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BuEY14rSYSx%2BaY3bhMJUUQg%3D%3D',2017,'DUT GEA + LP CG','Controleur CAFAT',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `alumni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20250930045404','2025-09-30 04:54:12',12);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-07 18:43:36
