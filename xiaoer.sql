/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.22 : Database - xiaoerdata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoerdata` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `xiaoerdata`;

/*Table structure for table `commodity` */

DROP TABLE IF EXISTS `commodity`;

CREATE TABLE `commodity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `describe` varchar(100) DEFAULT NULL,
  `src` varchar(500) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `naem` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `commodity` */

insert  into `commodity`(`id`,`name`,`describe`,`src`,`price`) values 
(1,'点点积木块','点点积木块 简约风格，学龄前儿童的启蒙玩具，锻炼儿童空间感和逻辑能力','images/img03.png',348),
(2,'翻毛皮垃圾桶','翻毛皮垃圾桶 简约风格，引领2021新时尚，全新创新，给你带来不一样的奢侈感','images/img24.png',254),
(3,'便携简约清扫扫帚','便携简约清扫扫帚 简约风格，不仅好看还实用，采用猪毛鬓，获第十届红点奖设计','images/img21.png',234),
(4,'黑白笔筒','简约时尚设计 打破传统 给你带来不一样的感受 让你的生活不再传统','images/img04.png',134),
(5,'创意水壶','创意水壶 简约风格，引领2021新时尚，全新创新，给你带来不一样的奢侈感','images/img43.png',248),
(6,'陶瓷狗盆','陶瓷狗盆 简约风格，引领2021新时尚，全新创新，给你带来不一样的奢侈感','images/img44.png',248),
(7,'时尚时钟','时尚时钟 简约风格，引领2021新时尚，全新创新，给你带来不一样的奢侈感','images/img46.png',248),
(8,'银质挖耳勺','银质挖耳勺 简约风格，引领2021新时尚，全新创新，给你带来不一样的奢侈感','images/img47.png',248),
(9,'银质夹子','银质夹子 简约风格，引领2021新时尚，全新创新，给你带来不一样的奢侈感','images/img48.png',248),
(10,'银质汤勺','银质汤勺 简约风格，引领2021新时尚，全新创新，给你带来不一样的奢侈感','images/img49.png',248);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `commodity_id` int NOT NULL,
  `commodity_size` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`id`,`commodity_id`,`commodity_size`,`user_id`) values 
(9,5,1,2),
(10,1,1,2),
(25,1,1,2);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`) values 
(1,'admin','@sry13761424107'),
(2,'xpp011','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
