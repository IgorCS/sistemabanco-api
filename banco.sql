/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.5.21 : Database - banco
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`banco` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `banco`;

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  `serie` VARCHAR(255) NOT NULL,
  `unidade` VARCHAR(255) NOT NULL,
  `valor` DECIMAL(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `item` */

INSERT  INTO `item`(`id`,`descricao`,`serie`,`unidade`,`valor`) VALUES 
(1,'TESTES 1','1° ANO','CENTRO',1000.00),
(2,'TESTES SELETIVO 2020','3° ANO DO EM','CENTRO',700.00),
(3,'TESTES SELETIVO 2019_02','33','ILHOTAS',600.00),
(5,'TESTES SELETIVO CEV _ 02','P´RE VESTIBULAR','ILHOTAS',1000.00);

/*Table structure for table `lancamento` */

DROP TABLE IF EXISTS `lancamento`;

CREATE TABLE `lancamento` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `dt_evento` DATETIME NOT NULL,
  `vl_total` DECIMAL(8,2) NOT NULL,
  `observacao` VARCHAR(1000) DEFAULT NULL,
  `hora_inicial` VARCHAR(255) DEFAULT NULL,
  `hora_final` VARCHAR(255) DEFAULT NULL,
  `dt_inicial_inscricoes` DATETIME DEFAULT NULL,
  `dt_final_inscricoes` DATETIME DEFAULT NULL,
  `status` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `lancamento` */

INSERT  INTO `lancamento`(`id`,`dt_evento`,`vl_total`,`observacao`,`hora_inicial`,`hora_final`,`dt_inicial_inscricoes`,`dt_final_inscricoes`,`status`) VALUES 
(11,'2019-06-20 00:00:00',1022.00,'testes','07:00','11:00','2019-06-13 00:00:00','2019-06-21 00:00:00','0'),
(12,'2019-06-11 00:00:00',0.00,'wdwwqe','07:00','12:00','2019-06-20 12:00:00','2019-06-20 00:00:00','1'),
(13,'2019-06-17 00:00:00',22.00,'asdasasdff','07:00','11:30','2019-06-18 00:00:00','2019-06-26 00:00:00','1'),
(14,'2019-06-15 00:00:00',0.00,'TESTES_2020-01','07:00','11:00','2019-06-12 00:00:00','2019-06-22 00:00:00','1'),
(15,'2019-06-17 00:00:00',1000.00,'testes','07:00','12:00','2019-06-04 00:00:00','2019-06-17 00:00:00','1'),
(16,'2019-06-04 00:00:00',600.00,'TESTES','07:00','12:00','2019-06-04 00:00:00','2019-06-11 00:00:00','1'),
(18,'2019-06-11 00:00:00',1600.00,'ter','07:00','11:00','2019-06-10 00:00:00','2019-06-25 00:00:00','1');

/*Table structure for table `lancamentoitem` */

DROP TABLE IF EXISTS `lancamentoitem`;

CREATE TABLE `lancamentoitem` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_lancamento` INT(11) NOT NULL,
  `id_item` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_lancamento` (`id_lancamento`),
  KEY `id_item` (`id_item`),
  CONSTRAINT `lancamentoitem_ibfk_1` FOREIGN KEY (`id_lancamento`) REFERENCES `lancamento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lancamentoitem_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `lancamentoitem` */

INSERT  INTO `lancamentoitem`(`id`,`id_lancamento`,`id_item`) VALUES 
(10,11,2),
(11,11,3),
(12,13,3),
(15,15,5),
(16,16,3),
(19,18,3),
(20,18,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
