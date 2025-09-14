/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - govt_hsp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`govt_hsp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `govt_hsp`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('Admin','Admin');

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL auto_increment,
  `hospital` text,
  `speciality` text,
  `name` text,
  `experience` text,
  `days` text,
  `time` text,
  `contact` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `doctor` */

insert  into `doctor`(`id`,`hospital`,`speciality`,`name`,`experience`,`days`,`time`,`contact`) values (2,'Gandhi','Cardiologists','venkat','2','M,T,W','10Am-12Pm','1234567890');

/*Table structure for table `hsp` */

DROP TABLE IF EXISTS `hsp`;

CREATE TABLE `hsp` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `description` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `hsp` */

insert  into `hsp`(`id`,`name`,`description`) values (1,'Gandhi','it is a big hsp');

/*Table structure for table `medicine` */

DROP TABLE IF EXISTS `medicine`;

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL auto_increment,
  `hspname` text,
  `medicine` text,
  `availability` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `medicine` */

insert  into `medicine`(`id`,`hspname`,`medicine`,`availability`) values (1,'Gandhi','paracetomol','120');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `email` text,
  `mobile` text,
  `address` text,
  `username` text,
  `password` text,
  `date` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`email`,`mobile`,`address`,`username`,`password`,`date`) values (1,'kishan','kishan@gmail.com','1234567890','hyd','kishan','123','2021-04-15 18:31:32');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
