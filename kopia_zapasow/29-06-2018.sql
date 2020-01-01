-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: bookweb_sql
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adres`
--

DROP TABLE IF EXISTS `adres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adres` (
  `id_adresu` int(11) NOT NULL AUTO_INCREMENT,
  `id_klienta` int(11) NOT NULL,
  `miasto` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `ulica` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `numer` varchar(6) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `kod_pocztowy` varchar(6) NOT NULL,
  `kraj` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `wojewodztwo` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id_adresu`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adres`
--

LOCK TABLES `adres` WRITE;
/*!40000 ALTER TABLE `adres` DISABLE KEYS */;
INSERT INTO `adres` VALUES (25,25,'admin','admin','admin','admin','Polska','ma?opolskie'),(26,26,'Wola Rz?dzi?ska','Jod??wka-Wa?ki','147b','33-150','Polska','ma?opolskie'),(28,28,'321','321','321','321','321','321');
/*!40000 ALTER TABLE `adres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `id_autora` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  PRIMARY KEY (`id_autora`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'dominik','pajonk'),(2,'jon','zbylut'),(3,'J.K.','Rowling');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategoria`
--

DROP TABLE IF EXISTS `kategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategoria` (
  `id_kategorii` int(11) NOT NULL AUTO_INCREMENT,
  `id_ksiazki` int(11) NOT NULL,
  `nazwa_kategorii` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id_kategorii`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoria`
--

LOCK TABLES `kategoria` WRITE;
/*!40000 ALTER TABLE `kategoria` DISABLE KEYS */;
INSERT INTO `kategoria` VALUES (1,1,'Fantastyczne'),(2,2,'Przygodowe'),(3,3,'Romanse'),(4,4,'Kryminały'),(5,5,'Bajki'),(6,6,'Horror'),(7,7,'Fantastyczne'),(8,8,'Przygodowe'),(9,9,'Romanse'),(10,1,'Kryminały'),(11,2,'Bajki'),(12,3,'Horror'),(13,4,'Fantastyczne'),(14,5,'Przygodowe'),(15,6,'Romanse'),(16,7,'Kryminały'),(17,8,'Bajki'),(18,9,'Horror'),(22,10,'Fantasy'),(23,10,'Dla dzieci'),(24,0,'Dla dzieci'),(25,11,'Fantasy'),(26,11,'Przygodowe'),(27,11,'Dla dzieci'),(28,12,'Fantasy'),(29,12,'Przygodowe'),(30,12,'Dla dzieci'),(31,13,'Fantasy'),(32,13,'Przygodowe'),(33,13,'Dla dzieci'),(34,14,'Fantasy'),(35,14,'Przygodowe'),(36,14,'Dla dzieci'),(37,15,'Fantasy'),(38,15,'Przygodowe'),(39,15,'Dla dzieci'),(40,16,'Fantasy'),(41,16,'Przygodowe'),(42,16,'Dla dzieci');
/*!40000 ALTER TABLE `kategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klient`
--

DROP TABLE IF EXISTS `klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klient` (
  `id_klienta` int(11) NOT NULL AUTO_INCREMENT,
  `id_adresu` int(11) NOT NULL,
  `imie` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `pesel` int(11) NOT NULL,
  `numer_telefonu` int(11) NOT NULL,
  `email` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `haslo` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `ranga` varchar(32) COLLATE utf8_polish_ci NOT NULL DEFAULT 'Użytkownik',
  PRIMARY KEY (`id_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klient`
--

LOCK TABLES `klient` WRITE;
/*!40000 ALTER TABLE `klient` DISABLE KEYS */;
INSERT INTO `klient` VALUES (25,25,'Dominik','Pająk',0,784099089,'dominik00801@gmail.com','123','Użytkownik'),(26,26,'admin','admin',0,666528114,'admin@bookweb.pl','123','Administrator'),(27,0,'imie','nazwisko',0,123,'zzz','123',''),(28,28,'321','321',0,312,'321','321','Użytkownik');
/*!40000 ALTER TABLE `klient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ksiazka`
--

DROP TABLE IF EXISTS `ksiazka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ksiazka` (
  `id_ksiazki` int(11) NOT NULL AUTO_INCREMENT,
  `tytul` blob,
  `autor` varchar(50) NOT NULL,
  `rok_wydania` int(4) NOT NULL,
  `cena` decimal(10,0) NOT NULL,
  `jezyk_ksiazki` varchar(20) NOT NULL,
  `wydawnictwo` varchar(30) NOT NULL,
  `status` varchar(32) DEFAULT NULL,
  `shortdesc` varchar(2000) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL DEFAULT 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  PRIMARY KEY (`id_ksiazki`),
  KEY `autor` (`autor`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ksiazka`
--

LOCK TABLES `ksiazka` WRITE;
/*!40000 ALTER TABLE `ksiazka` DISABLE KEYS */;
INSERT INTO `ksiazka` VALUES (1,'Test','1',1333,32,'pl','brak','','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(2,'test2','2',1234,234,'pl','non','','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(3,'pajonk w krainie czarow','1',1099,55,'pl','non','','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(4,'kukumba','1',1099,55,'pl','non','','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(5,'szarrzujemy','1',1099,432,'pl','non','','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(6,'Pan Tadeusz','1',1099,666,'pl','non','','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(7,'Soplica','1',1099,784,'pl','non','','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(8,'Harry Potter','2',1099,14,'pl','non','','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(10,'Harry Potter i Insygnia Śmierci','3',2007,40,'','','','Harry Potter i Insygnia Śmierci: Część I – amerykańsko-brytyjski film na podstawie powieści autorstwa J.K. Rowling o tym samym tytule. Jest on siódmym obrazem z serii o Harrym Potterze. Ostatni tom powieści został podzielony na dwie odrębne części.'),(11,'Harry Potter i Komnata Tajemnic','3',1998,38,'','','','Harry Potter i Komnata Tajemnic – druga część książki z cyklu Harry Potter.'),(12,'Harry Potter i Kamień Filozoficzny','3',1997,37,'','','','Harry Potter i Kamień Filozoficzny – pierwsza książka z siedmiotomowego cyklu autorstwa angielskiej powieściopisarki J.K. Rowling, przedstawiająca początek historii młodego czarodzieja Harry’ego Pottera.'),(13,'Harry Potter i Czara Ognia','3',200,40,'','','','Harry Potter i Czara Ognia – czwarta część cyklu powieści J.K. Rowling o przygodach kilkunastoletniego czarodzieja'),(14,'Harry Potter i Książę Półkrwi','3',2005,40,'','','','Harry Potter i Książę Półkrwi – powieść brytyjskiej pisarki J.K. Rowling, 6. część losów młodego czarodzieja – Harry’ego Pottera. Książka została wydana 16 lipca 2005 i 28 stycznia 2006.'),(15,'Harry Potter i więzień Azkabanu','3',1999,38,'','','','Harry Potter i więzień Azkabanu – powieść brytyjskiej pisarki J.K.Rowling, 3. część losów Harry’ego Pottera.'),(16,'Harry Potter i przeklęte dziecko','3',2016,50,'','','','Harry Potter i przeklęte dziecko – dwuczęściowa westendowa sztuka teatralna napisana przez Jacka Thorne’a na podstawie historii autorstwa J.K. Rowling, reżyserowana przez Johna Tiffany’ego.');
/*!40000 ALTER TABLE `ksiazka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocena_ksiazki`
--

DROP TABLE IF EXISTS `ocena_ksiazki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ocena_ksiazki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_klienta` int(11) NOT NULL,
  `id_ksiazki` int(11) NOT NULL,
  `ocena` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocena_ksiazki`
--

LOCK TABLES `ocena_ksiazki` WRITE;
/*!40000 ALTER TABLE `ocena_ksiazki` DISABLE KEYS */;
INSERT INTO `ocena_ksiazki` VALUES (1,28,3,4),(2,26,1,3),(3,26,16,4),(4,26,15,3),(5,26,14,5),(6,26,13,5),(7,26,12,5),(8,26,11,5);
/*!40000 ALTER TABLE `ocena_ksiazki` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-29 20:19:08
