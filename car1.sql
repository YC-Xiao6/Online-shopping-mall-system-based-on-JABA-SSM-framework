/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.40 : Database - car
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`car` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `car`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `role` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `seller` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`uname`,`password`,`name`,`role`,`sid`) values (1,'123','123','超级管理员',1,1),(2,'123456','123456','李四',2,2),(5,'2','2','深度2',2,2),(6,'3','3','的阿斗',2,5);

/*Table structure for table `car_buy` */

DROP TABLE IF EXISTS `car_buy`;

CREATE TABLE `car_buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  CONSTRAINT `car_buy_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `car_detail` (`cid`),
  CONSTRAINT `car_buy_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `car_buy` */

insert  into `car_buy`(`id`,`uid`,`cdate`,`cid`) values (3,2,'2020-04-02 14:14:04',1),(4,1,'2020-04-02 17:36:24',1),(5,1,'2020-04-02 17:36:51',1),(6,1,'2020-04-02 17:42:41',1),(7,1,'2020-04-02 17:48:39',1);

/*Table structure for table `car_detail` */

DROP TABLE IF EXISTS `car_detail`;

CREATE TABLE `car_detail` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) NOT NULL,
  `lprice` double NOT NULL,
  `uprice` double NOT NULL,
  `sprice` double NOT NULL,
  `cintroduce` varchar(500) DEFAULT NULL,
  `cdetail` varchar(500) DEFAULT NULL,
  `ca` varchar(500) DEFAULT NULL,
  `cb` varchar(500) DEFAULT NULL,
  `cc` varchar(500) DEFAULT NULL,
  `cd` varchar(500) DEFAULT NULL,
  `ce` varchar(500) DEFAULT NULL,
  `cf` varchar(500) DEFAULT NULL,
  `cg` varchar(500) DEFAULT NULL,
  `ch` varchar(500) DEFAULT NULL,
  `ci` varchar(500) DEFAULT NULL,
  `cj` varchar(500) DEFAULT NULL,
  `cimage` varchar(200) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `sid` (`sid`),
  CONSTRAINT `car_detail_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `seller` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `car_detail` */

insert  into `car_detail`(`cid`,`cname`,`lprice`,`uprice`,`sprice`,`cintroduce`,`cdetail`,`ca`,`cb`,`cc`,`cd`,`ce`,`cf`,`cg`,`ch`,`ci`,`cj`,`cimage`,`sid`) values (1,'奥迪Q5L 全部在售 2020款 2018款',38.33,51.77,12.95,'推荐选择下方[移动优惠购]奥迪Q5L适合家庭用户，科技配置、后排空间、油耗低','排量: 2.0T 油耗: 6.9-7.4L','4753mm*1873mm*1659mm','6.9-7.3L/100km(工信部)','2.0T 252马力','210-231km/h','6.7-8.6s','前置四驱','5门5座SUV','中国大陆','中型SUV','国V（IOS）','upload/b3.jpg',2),(3,'aa',1,1,1,'a','a','a','a','a','a','a','a','a','a','a','a','a',4);

/*Table structure for table `car_img` */

DROP TABLE IF EXISTS `car_img`;

CREATE TABLE `car_img` (
  `cmid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`cmid`),
  KEY `cid` (`cid`),
  CONSTRAINT `car_img_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `car_detail` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `car_img` */

insert  into `car_img`(`cmid`,`cid`,`pic`) values (1,1,'upload/q1.jpg'),(2,1,'upload/q2.jpg'),(3,1,'upload/q3.jpg'),(4,1,'upload/q4.jpg');

/*Table structure for table `car_list` */

DROP TABLE IF EXISTS `car_list`;

CREATE TABLE `car_list` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(100) NOT NULL,
  `llprice` double NOT NULL,
  `luprice` double NOT NULL,
  `limage` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`lid`),
  KEY `cid` (`cid`),
  CONSTRAINT `car_list_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `car_detail` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `car_list` */

insert  into `car_list`(`lid`,`lname`,`llprice`,`luprice`,`limage`,`cid`) values (1,'奔驰大C级',30.8,47.78,'upload/51.png',1),(2,'捷达VS7',10.88,13.68,'upload/52.png',1),(3,'哪吒U',16.98,19.88,'upload/53.png',1),(4,'奥迪Q7',60.88,69.88,'upload/54.png',1),(5,'迈巴赫S级',316.88,319.88,'upload/55.png',1),(6,'比亚迪宋经典版',6.88,6.988,'upload/56.png',1),(7,'本田CR-V',17.88,18.88,'upload/61.png',1),(8,'途胜',15.88,16.88,'upload/62.png',1),(9,'瑞虎7',6.88,7.88,'upload/63.png',1),(10,'长安CS55',8.29,9.29,'upload/64.png',1),(11,'奔驰GLS',126.88,129.88,'upload/65.png',1),(12,'雷克萨斯ES',46.88,47.88,'upload/66.png',1);

/*Table structure for table `seller` */

DROP TABLE IF EXISTS `seller`;

CREATE TABLE `seller` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `consphone` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `seller` */

insert  into `seller`(`sid`,`consphone`,`sname`,`address`) values (1,'11111111111','超级管理员','北京'),(2,'00000000000','厦门大邦奥迪','海沧区马青路1233号'),(3,'111111111111','超级','北京'),(4,'111111111111','超级管理','北京'),(5,'12345678911','厦门一汽大众','厦门市思明区');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `telephone` varchar(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`telephone`,`uname`,`password`) values (1,'11111111111','lisi','12345678'),(2,'11111111112','wds','12345678');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
