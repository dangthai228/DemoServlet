CREATE DATABASE  IF NOT EXISTS `xeduaf1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `xeduaf1`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: xeduaf1
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tblbantochuc`
--

DROP TABLE IF EXISTS `tblbantochuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbantochuc` (
  `idthanhvien` int NOT NULL,
  `vitri` varchar(45) NOT NULL,
  PRIMARY KEY (`idthanhvien`),
  CONSTRAINT `idthanhvien` FOREIGN KEY (`idthanhvien`) REFERENCES `tblthanhvien` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbantochuc`
--

LOCK TABLES `tblbantochuc` WRITE;
/*!40000 ALTER TABLE `tblbantochuc` DISABLE KEYS */;
INSERT INTO `tblbantochuc` VALUES (1,'bantochuc'),(2,'bantochuc');
/*!40000 ALTER TABLE `tblbantochuc` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `tblmuagiai`
--

DROP TABLE IF EXISTS `tblmuagiai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmuagiai` (
  `id` int NOT NULL,
  `ten` varchar(45) NOT NULL,
  `mota` varchar(45) NOT NULL,
  `trangthai` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmuagiai`
--

LOCK TABLES `tblmuagiai` WRITE;
/*!40000 ALTER TABLE `tblmuagiai` DISABLE KEYS */;
INSERT INTO `tblmuagiai` VALUES (1,'muagiai2018','Gi???i ??au xe th??? gi???i th?????ng ni??n n??m 2018','end'),(2,'muagiai2019','Gi???i ??au xe th??? gi???i th?????ng ni??n n??m 2019','end'),(3,'muagiai2020','Gi???i ??au xe th??? gi???i th?????ng ni??n n??m 2020','end'),(4,'muagiai2021','Gi???i ??au xe th??? gi???i th?????ng ni??n n??m 2021','end'),(5,'muagiai2022','Gi???i ??au xe th??? gi???i th?????ng ni??n n??m 2022','open'),(6,'VietNam2022','Gi???i ??ua xe ??? Vi???t Nam th?????ng ni??n n??m 2022','open');
/*!40000 ALTER TABLE `tblmuagiai` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `tblthanhvien`
--

DROP TABLE IF EXISTS `tblthanhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblthanhvien` (
  `id` int NOT NULL,
  `ten` varchar(30) NOT NULL,
  `tendangnhap` varchar(45) NOT NULL,
  `matkhau` varchar(45) NOT NULL,
  `ngaysinh` date NOT NULL,
  `sodienthoai` varchar(15) NOT NULL,
  `vaitro` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblthanhvien`
--

LOCK TABLES `tblthanhvien` WRITE;
/*!40000 ALTER TABLE `tblthanhvien` DISABLE KEYS */;
INSERT INTO `tblthanhvien` VALUES (1,'thaind','thai22820001','thai22820001','2000-08-22','0868734896','host'),(2,'admin','admin@net','thai22820001','2000-08-22','0868734896','host');
/*!40000 ALTER TABLE `tblthanhvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblchangdua`
--

DROP TABLE IF EXISTS `tblchangdua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblchangdua` (
  `id` int NOT NULL,
  `ten` varchar(45) NOT NULL,
  `sovongdua` int NOT NULL,
  `diadiem` varchar(45) NOT NULL,
  `thoigian` date NOT NULL,
  `mota` varchar(45) NOT NULL,
  `idmuagiai` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idmuagiai_idx` (`idmuagiai`),
  CONSTRAINT `idmuagiai` FOREIGN KEY (`idmuagiai`) REFERENCES `tblmuagiai` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblchangdua`
--

LOCK TABLES `tblchangdua` WRITE;
/*!40000 ALTER TABLE `tblchangdua` DISABLE KEYS */;
INSERT INTO `tblchangdua` VALUES (1,'???????ng ??ua LasVegas',2,'LasVegas','2022-12-01','Cu???c ??ua t???i th??nh ph??? LasVegas',5),(2,'???????ng ??ua Chicago',2,'Chicago','2022-12-02','Cu???c ??ua t???i th??nh ph??? Chicago',5),(3,'???????ng ??ua NewYork',2,'NewYork','2022-12-04','Cu???c ??ua t???i th??nh ph??? NewYork',5),(4,'???????ng ??ua De Monaco',1,'Monaco','2022-12-06','Cu???c ??ua t???i th??nh ph??? Monaco',5),(5,'???????ng ??ua Melbourne',3,'Australia','2022-12-10','Cu???c ??ua t???i ?????t n?????c Australia',5),(6,'???????ng ??ua Gilles Villeneuve',1,'Canada','2022-12-15','Cu???c ??ua t???i th??nh ph??? Monreal',5);
/*!40000 ALTER TABLE `tblchangdua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoidua`
--

DROP TABLE IF EXISTS `tbldoidua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldoidua` (
  `id` int NOT NULL,
  `ten` varchar(45) NOT NULL,
  `hang` varchar(45) NOT NULL,
  `mota` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoidua`
--

LOCK TABLES `tbldoidua` WRITE;
/*!40000 ALTER TABLE `tbldoidua` DISABLE KEYS */;
INSERT INTO `tbldoidua` VALUES (1,'Oracle Red Bull Racing','RedBull','Tr??? s??? ch??nh t???i Milton Keynes'),(2,'Mercedes','Mercedes','Tr??? s??? ch??nh t???i Brackley'),(3,'McLaren','McLaren','Tr??? s??? ch??nh t???i Working'),(4,'Alpiine','Alpine','Tr??? s??? ch??nh t???i Enstone'),(5,'Aston Martin','Aston Martin','Tr??? s??? ch??nh t???i Sliverstone'),(6,'Williams','Williams','Tr??? s??? ch??nh t???i Milton Grove');
/*!40000 ALTER TABLE `tbldoidua` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `tbltaydua`
--

DROP TABLE IF EXISTS `tbltaydua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltaydua` (
  `id` int NOT NULL,
  `ten` varchar(45) NOT NULL,
  `ngaysinh` date NOT NULL,
  `quoctich` varchar(45) NOT NULL,
  `tieusu` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltaydua`
--

LOCK TABLES `tbltaydua` WRITE;
/*!40000 ALTER TABLE `tbltaydua` DISABLE KEYS */;
INSERT INTO `tbltaydua` VALUES (1,'Michael Schumacher','1989-10-22','Anh','91 chi???n th???ng v?? 7 l???n v?? ?????ch'),(2,'Lewis Hamilton','1990-05-12','Anh','74 chi???n th???ng v?? 5 l???n v?? ?????ch'),(3,'Sebastian Vettel','1985-11-02','B???','52 chi???n th???ng v?? 4 l???n v?? ?????ch'),(4,'Alain Prost','1988-10-02','Anh','51 chi???n th???ng v?? 6 l???n v?? ?????ch'),(5,'Ayrton Senna','1989-02-12','M???','52 chi???n th???ng v?? 2 l???n v?? ?????ch'),(6,'Fernando Alonso','1982-03-02','T??y Ban Nha','32 chi???n th???ng v?? 2 l???n v?? ?????ch'),(7,'Nigel Mansell','1989-10-22','M???','31 chi???n th???ng v?? 4 l???n v?? ?????ch'),(8,'Jackie Stewart','1981-06-02','Anh','84 chi???n th???ng v?? 5 l???n v?? ?????ch'),(9,'Jim Clark','1983-12-09','Anh','43 chi???n th???ng v?? 2 l???n v?? ?????ch'),(10,'Jim Smith','1987-11-09','M???','40 chi???n th???ng v?? 2 l???n v?? ?????ch'),(11,'Niki Lauda','1985-09-09','??c','33 chi???n th???ng v?? 1 l???n v?? ?????ch');
/*!40000 ALTER TABLE `tbltaydua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoivien`
--

DROP TABLE IF EXISTS `tbldoivien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldoivien` (
  `id` int NOT NULL AUTO_INCREMENT,
  `batdau` date DEFAULT NULL,
  `ketthuc` date DEFAULT NULL,
  `mota` varchar(45) DEFAULT NULL,
  `iddoidua` int NOT NULL,
  `idtaydua` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iddoidua_idx` (`iddoidua`),
  KEY `idtaydua_idx` (`idtaydua`),
  CONSTRAINT `iddoidua` FOREIGN KEY (`iddoidua`) REFERENCES `tbldoidua` (`id`),
  CONSTRAINT `idtaydua` FOREIGN KEY (`idtaydua`) REFERENCES `tbltaydua` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `tbllichthi`
--

DROP TABLE IF EXISTS `tbllichthi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbllichthi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trangthai` varchar(45) NOT NULL,
  `idbantochuc` int NOT NULL,
  `iddoivien` int NOT NULL,
  `idchangdua` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idbantochuc_idx` (`idbantochuc`),
  KEY `idchangdua_idx` (`idchangdua`),
  KEY `iddoivien_idx` (`iddoivien`),
  CONSTRAINT `idbantochuc` FOREIGN KEY (`idbantochuc`) REFERENCES `tblbantochuc` (`idthanhvien`),
  CONSTRAINT `idchangdua` FOREIGN KEY (`idchangdua`) REFERENCES `tblchangdua` (`id`),
  CONSTRAINT `iddoivien` FOREIGN KEY (`iddoivien`) REFERENCES `tbldoivien` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;





/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-20 13:45:20
