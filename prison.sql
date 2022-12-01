/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - prison
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`prison` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `prison`;

/*Table structure for table `addc` */

DROP TABLE IF EXISTS `addc`;

CREATE TABLE `addc` (
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `cno` varchar(200) DEFAULT NULL,
  `des` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addc` */

insert  into `addc`(`pid`,`pname`,`type`,`cno`,`des`) values ('PID-1','xxx','Theif','C101','jdjdj dfjjdjs');

/*Table structure for table `adde` */

DROP TABLE IF EXISTS `adde`;

CREATE TABLE `adde` (
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `cid` varchar(200) DEFAULT NULL,
  `cname` varchar(200) DEFAULT NULL,
  `dur` varchar(200) DEFAULT NULL,
  `sdate` varchar(200) DEFAULT NULL,
  `itime` varchar(200) DEFAULT NULL,
  `otime` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adde` */

insert  into `adde`(`pid`,`pname`,`cid`,`cname`,`dur`,`sdate`,`itime`,`otime`) values ('PID-1','xxx','J12','Java','80 Hourse','1-Jun-2017','10:00AM','1:00PM');

/*Table structure for table `addemp` */

DROP TABLE IF EXISTS `addemp`;

CREATE TABLE `addemp` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `eid` varchar(200) DEFAULT NULL,
  `ename` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `deg` varchar(200) DEFAULT NULL,
  `ser` varchar(200) DEFAULT NULL,
  `jdate` varchar(200) DEFAULT NULL,
  `sal` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `addemp` */

insert  into `addemp`(`id`,`eid`,`ename`,`gender`,`deg`,`ser`,`jdate`,`sal`) values (1,'EMP-1','YUVI','Male','ME','3 Years','17-Jun-2015','12000');

/*Table structure for table `addjai` */

DROP TABLE IF EXISTS `addjai`;

CREATE TABLE `addjai` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `jid` varchar(200) DEFAULT NULL,
  `jname` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `age` varchar(200) DEFAULT NULL,
  `ser` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `jdate` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `addjai` */

insert  into `addjai`(`id`,`jid`,`jname`,`gender`,`age`,`ser`,`mobile`,`jdate`) values (1,'JAI-1','VELU','MALE','27','2 Years','7708150152','22-Jun-2015'),(2,'JAI-2','aCHU','Male','24','1 Year','7708150152','22-Jun-2016'),(3,'JAI-3','Bhuvi','Female','34','6 Years','7708150152','20-Jun-2013');

/*Table structure for table `addpri` */

DROP TABLE IF EXISTS `addpri`;

CREATE TABLE `addpri` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `ptype` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `qual` varchar(200) DEFAULT NULL,
  `addre` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `pin` varchar(200) DEFAULT NULL,
  `edate` varchar(200) DEFAULT NULL,
  `rdate` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `addpri` */

insert  into `addpri`(`id`,`pid`,`pname`,`ptype`,`gender`,`qual`,`addre`,`city`,`state`,`pin`,`edate`,`rdate`) values (1,'PID-1','xxx','Theif','Male','12','Vadapalani','Chennai','Tamilnadu','600026','22-Jun-2016','22-Jun-2020'),(2,'PID-2','yyy','Murder','Male','10','Vadapalani','Chennai','Tamilnadu','600026','22-Jun-2017','22-Jun-2018'),(3,'PID-2','zzz','Murder','Male','12','Vadapalani','Chennai','Tamilnadu','600026','22-Jun-2017','22-Jun-2018');

/*Table structure for table `addr` */

DROP TABLE IF EXISTS `addr`;

CREATE TABLE `addr` (
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `rem` varchar(200) DEFAULT NULL,
  `hdate` varchar(200) DEFAULT NULL,
  `ndate` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addr` */

insert  into `addr`(`pid`,`pname`,`rem`,`hdate`,`ndate`,`type`) values ('PID-1','xxx','15 Days','14-Jun-2017','30-Jun-2017','Theif');

/*Table structure for table `addtrans` */

DROP TABLE IF EXISTS `addtrans`;

CREATE TABLE `addtrans` (
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `fro` varchar(200) DEFAULT NULL,
  `too` varchar(200) DEFAULT NULL,
  `rea` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addtrans` */

insert  into `addtrans`(`pid`,`pname`,`type`,`fro`,`too`,`rea`) values ('PID-1','xxx','Theif','Tihar Jail','Puzhal Jail','Some Health Issue');

/*Table structure for table `addtri` */

DROP TABLE IF EXISTS `addtri`;

CREATE TABLE `addtri` (
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `course` varchar(200) DEFAULT NULL,
  `dur` varchar(200) DEFAULT NULL,
  `sdate` varbinary(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addtri` */

insert  into `addtri`(`pid`,`pname`,`course`,`dur`,`sdate`) values ('PID-2','yyy','12th','360 Days','22-Jun-2017');

/*Table structure for table `addvis` */

DROP TABLE IF EXISTS `addvis`;

CREATE TABLE `addvis` (
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `vname` varchar(200) DEFAULT NULL,
  `ld` varchar(200) DEFAULT NULL,
  `nd` varchar(200) DEFAULT NULL,
  `itime` varchar(200) DEFAULT NULL,
  `otime` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `relation` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `iauth` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addvis` */

insert  into `addvis`(`pid`,`pname`,`vname`,`ld`,`nd`,`itime`,`otime`,`addr`,`relation`,`gender`,`iauth`) values ('PID-1','xxx','Bhuvi','1-Jun-2017','1-Jul-2017','10:00AM','1:00PM','Vadapalani','Sister','Female','VELU');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
