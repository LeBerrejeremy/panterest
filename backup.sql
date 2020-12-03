-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: panterest_dev
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20201116191851','2020-11-17 12:18:47',42);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pin`
--

DROP TABLE IF EXISTS `pin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B5852DF3A76ED395` (`user_id`),
  CONSTRAINT `FK_B5852DF3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pin`
--

LOCK TABLES `pin` WRITE;
/*!40000 ALTER TABLE `pin` DISABLE KEYS */;
INSERT INTO `pin` VALUES (1,'Star Wars','Le petit Anakin','2020-11-17 12:25:31','2020-11-18 16:43:08','s-w-anakin-5fb5410cd27c6721123874.jpg',1),(2,'Final fantasy 7','Meilleur jeux vidéo de tous les temps','2020-11-17 12:26:56','2020-11-18 16:42:33','ff7-5fb540e9b612e998135315.png',2),(3,'Le code','PHP, HTML, CSS... Le code c\'est la vie!','2020-11-17 12:33:01','2020-11-18 16:41:37','code-5fb540b109a93038592779.jpeg',1),(7,'City','La plus belle des villes','2020-11-18 17:23:02','2020-11-18 17:23:02','city-5fb54a6601a77989618653.jpg',2),(9,'Mon Pin','Oups j\'ai oublié mon image','2020-11-18 22:00:16','2020-11-18 22:00:16',NULL,1),(10,'Peinture','Une peinture de je sais pas qui','2020-11-18 23:11:36','2020-11-18 23:11:36','peinture-5fb59c1827a0e665494686.png',2),(12,'Tournesol','Houuu la jolie fleur!','2020-11-18 23:27:36','2020-11-18 23:27:36','sunflower-5fb59fd8deb3b046023931.jpg',1),(13,'Alice  in wonderland','Le chat du pays des merveilles','2020-11-18 23:31:44','2020-11-18 23:32:57','alice-cat-5fb5a119910be433970916.jpg',2),(14,'Lion','Le Roi Lion AAAAAAsimama namasi sibobo emahia!','2020-11-20 15:41:11','2020-11-20 15:41:11','lion-5fb7d58725d53707953707.jpg',1),(15,'Las Vegas Parano','Un super film relataant les folles années 70 au Etats-Unis d\'amérique','2020-11-20 15:43:25','2020-11-20 15:43:25','las-vegas-parano-5fb7d60d773c8107058950.jpg',2),(16,'Mexique','vive le mexique!','2020-11-21 18:47:09','2020-11-21 18:47:09','fete-des-morts-5fb9529ddb02f231433802.jpg',3);
/*!40000 ALTER TABLE `pin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'johndoe@example.com','[]','$argon2id$v=19$m=65536,t=4,p=1$Qc8/6udSnyrcdvEPS/WBAg$HFUL0OVNCeQBWdZyYRSEek1l74veqt0UdzpoB80IqZs','John','Doe','2020-11-19 13:45:41','2020-11-19 13:45:41',0),(2,'janedoe@example.com','[]','$argon2id$v=19$m=65536,t=4,p=1$ERmjcLvnruvQaHSgZnVzHw$m8uEFE9F4r3R83ceWEntPGffWmJqtr4hMeO9tHZ9W08','Jane','Doe','2020-11-19 13:49:11','2020-11-19 13:49:11',0),(3,'jeremyLeBerre@example.com','[]','$argon2id$v=19$m=65536,t=4,p=1$eic5ktp051jXad2SUYO7iQ$yNNq64XNx+170pLSw700QJmDAmAvEv749St2N6JhZ2M','Jérémy','Le Berre','2020-11-20 21:55:18','2020-11-20 21:55:54',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-03 23:07:25
