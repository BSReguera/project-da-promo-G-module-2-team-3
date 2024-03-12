-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_pelis
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `premios`
--

DROP TABLE IF EXISTS `premios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premios` (
  `id_premio` int NOT NULL AUTO_INCREMENT,
  `Ceremonia` varchar(20) DEFAULT NULL,
  `id_pelicula` varchar(10) NOT NULL,
  `Mejor_pelicula` varchar(255) DEFAULT NULL,
  `Mejor_director` varchar(255) DEFAULT NULL,
  `id_actor` varchar(100) NOT NULL,
  `Mejor_actor` varchar(255) DEFAULT NULL,
  `id_actriz` varchar(100) NOT NULL,
  `Mejor_actriz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_premio`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premios`
--

LOCK TABLES `premios` WRITE;
/*!40000 ALTER TABLE `premios` DISABLE KEYS */;
INSERT INTO `premios` VALUES (1,'26 de marzo2000','tt0169547',' American Beauty',' S. Mendes(American Beauty)','nm0000228',' K. Spacey(American Beauty)','nm0005476',' H. Swank(Boys don\'t cry)'),(2,'25 de marzo2001','tt0172495',' Gladiator',' S. Soderbergh(Traffic)','nm0000128',' R. Crowe(Gladiator)','nm0000210',' J. Roberts(Erin Brockovich)'),(3,'24 de marzode 2002','tt0268978',' A Beautiful Mind',' R. Howard(A Beautiful Mind)','nm0000243',' D. Washington(Training Day)','nm0000932',' H. Berry(Monster\'s Ball)'),(4,'23 de marzode 2003','tt0299658',' Chicago',' R. Polanski(The Pianist)','nm0004778',' A. Brody(The Pianist)','nm0000173','  N. Kidman(The Hours)'),(5,'29 de febrerode 2004','tt0167260',' The Lord of the Rings: The Return of the King',' P. Jackson(The Lord of the Rings: The Return of the King)','nm0000576',' S. Penn(Mystic River)','nm0000234',' C. Theron(Monster)'),(6,'27 de febrerode 2005','tt0405159',' Million Dollar Baby',' C. Eastwood(Million Dollar Baby)','nm0004937',' J. Foxx(Ray)','nm0005476',' H. Swank(Million Dollar Baby)'),(7,'5 de marzode 2006','tt0375679',' Crash',' A. Lee(Brokeback Mountain)','nm0000450',' P. S. Hoffman(Capote)','nm0000702',' R. Witherspoon(Walk the Line)'),(8,'25 de febrerode 2007','tt0407887',' The Departed',' M. Scorsese(The Departed)','nm0001845',' F. Whitaker(The Last King of Scotland)','nm0000545',' H. Mirren(The Queen)'),(9,'24 de febrerode 2008','tt0477348',' No Country for Old Men',' J. Coen E. Coen(No Country for Old Men)','nm0000358',' D. Day-Lewis(There Will Be Blood)','nm0182839',' M. Cotillard(La Môme)'),(10,'22 de febrerode 2009','tt1010048','  Slumdog Millionaire',' D. Boyle(Slumdog Millionaire)','nm0000576',' S. Penn(Milk)','nm0000701',' K. Winslet(The Reader)'),(11,'7 de marzode 2010','tt0887912',' The Hurt Locker',' K. Bigelow(The Hurt Locker)','nm0000313',' J. Bridges(Crazy Heart)','nm0000113',' S. Bullock(The Blind Side)'),(12,'27 de febrerode 2011','tt1504320',' The King\'s Speech',' T. Hooper(The King\'s Speech)','nm0000147',' C. Firth(The King\'s Speech)','nm0000204','  N. Portman(Black Swan)'),(13,'26 de febrerode 2012','tt1655442',' The Artist',' M. Hazanavicius(The Artist)','nm0241121',' J. Dujardin(The Artist)','nm0000658',' M. Streep(The Iron Lady)'),(14,'24 de febrerode 2013','tt1024648',' Argo',' A. Lee(Life of Pi)','nm0000358',' D. Day-Lewis(Lincoln)','nm2225369',' J. Lawrence(Silver Linings Playbook)'),(15,'2 de marzode 2014','tt2024544','  12 Years a Slave',' A. Cuarón(Gravity)','nm0000190',' M. McConaughey(Dallas Buyers Club)','nm0000949',' C. Blanchett(Blue Jasmine)'),(16,'22 de febrerode 2015','tt2562232',' Birdman or (The Unexpected Virtue of Ignorance)',' A. G. Iñárritu(Birdman or (The Unexpected Virtue of Ignorance))','nm1519666',' E. Redmayne(The Theory Of Everything)','nm0000194',' J.Moore(Still Alice)'),(17,'28 de febrerode 2016','tt1895587',' Spotlight',' A. G. Iñárritu(The Revenant)','nm0000138',' L. DiCaprio(The Revenant)','nm0488953',' B. Larson(Room)'),(18,'26 de febrerode 2017','tt4975722',' Moonlight','  D. Chazelle(La La Land)','nm0000729',' C. Affleck(Manchester by the Sea)','nm1297015',' E. Stone(La La Land)'),(19,'4 de marzode 2018','tt5580390',' The Shape of Water',' G. del Toro(The Shape of Water)','nm0000198',' G. Oldman(Darkest Hour)','nm0000531',' F. McDormand(Three Billboards Outside Ebbing, Missouri)'),(20,'24 de febrerode 2019','tt6966692',' Green Book',' A. Cuarón(Roma)','nm1785339','  R. Malek(Bohemian Rhapsody)','nm1469236',' O. Colman(La favorita)'),(21,'9 de febrerode 2020','tt6751668',' Parasite',' Bong J.(Parasite)','nm0001618','  J. Phoenix(Joker)','nm0000250',' R. Zellweger(Judy)'),(22,'25 de abrilde 2021','tt9770150',' Nomadland',' C. Zhao(Nomadland)','nm0000164',' A. Hopkins(The Father)','nm0000531',' F. McDormand(Nomadland)'),(23,'27 de marzode 2022','tt10366460','  CODA',' J. Campion(The Power of the Dog)','nm0000226',' W. Smith(King Richard)','nm1567113',' J. Chastain(The Eyes of Tammy Faye)'),(24,'12 de marzode 2023','tt6710474',' Everything Everywhere All at Once',' D. Kwan D. Scheinert(Everything Everywhere All at Once)','nm0000409',' B. Fraser(The Whale)','nm0000706',' M. Yeoh(Everything Everywhere All at Once)');
/*!40000 ALTER TABLE `premios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-09 17:51:35
