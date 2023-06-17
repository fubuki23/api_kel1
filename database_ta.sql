/*
SQLyog Professional v12.4.3 (64 bit)
MySQL - 10.4.28-MariaDB : Database - db_project_ahir
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_project_ahir` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `db_project_ahir`;

/*Table structure for table `kegiatan` */

DROP TABLE IF EXISTS `kegiatan`;

CREATE TABLE `kegiatan` (
  `id` char(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `jenis` varchar(25) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` varchar(25) DEFAULT NULL,
  `tempat` text DEFAULT NULL,
  `nama_pnt` varchar(55) DEFAULT NULL,
  `no_idn` char(11) DEFAULT NULL,
  `jenis_kelamin` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `kegiatan` */

insert  into `kegiatan`(`id`,`judul`,`jenis`,`deskripsi`,`tanggal`,`jam`,`tempat`,`nama_pnt`,`no_idn`,`jenis_kelamin`,`status`) values 
('SMUTI001','Seminar EOT','Akademik','Seminar nasional bersama pak sandiaga uno mentri bla bla bla','2023-09-23','11:00 - 14:00','GSG','Umar WHK','18312221','Laki-Laki','Mahasiswa'),
('UTI000122','EXPO robotik','Akademik','-','2023-06-23','09:00 - Selesai','Gelanggang Serba Guna','Bapak Ganjar','DSN124232','Laki-Laki','Dosen');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user` */

insert  into `user`(`id_user`,`name`,`username`,`pass`,`role`) values 
(8,'wira','user','ee11cbb19052e40b07aac0ca060c23ee','Direksi'),
(9,'admin','admin','2edd8267a9481a190cf116bef013336f','Admin'),
(10,'Hadi','hadi','76671d4b83f6e6f953ea2dfb75ded921','Programmer');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
