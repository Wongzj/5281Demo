/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.13-MariaDB : Database - PetMall
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`PetMall` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PetMall`;

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
                       `id` varchar(100) DEFAULT NULL,
                       `name` varchar(20) DEFAULT NULL,
                       `price` varchar(20) DEFAULT NULL,
                       `description` varchar(60) DEFAULT NULL,
                       `img` varchar(20) DEFAULT NULL,
                       `userId` varchar(66) DEFAULT NULL,
                       `p_class` varchar(20) DEFAULT NULL,
                       `p_color` varchar(11) DEFAULT NULL,
                       `p_specification` varchar(12) DEFAULT NULL,
                       `p_num` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `car` */

insert  into `car`(`id`,`name`,`price`,`description`,`img`,`userId`,`p_class`,`p_color`,`p_specification`,`p_num`) values ('c20459ca-2978-443f-b','pedigree dog food age 1-6','200','成犬中小型 5大健康活力表现','pedigree.jpeg','7065e571-2e16-2bfd-06c5-eff1c155130d','30',NULL,'4kg',10),
                                                                                                                          ('247563e3-ab6e-fe51-a','pedigree dog food adult','150','chicken & vegetables','pedigree.jpg','7065e571-2e16-2bfd-06c5-eff1c155130d','40',NULL,'3kg',10),
                                                                                                                          ('4fb439ab-bb4e-d818-d','fashion cloth suit','300','make your cool pet','cloth.jpg','00b06059-95a1-1462-9e56-ef523d9eb8cf','50','yellow','L',1),
                                                                                                                          ('f6ddb4d5-3a12-e99a-9','pet home','500','comfortable home','cathome.jpg','66f7985c-650c-01d6-c850-987ddf2a7292','10',NULL,'gray',1),
                                                                                                                          ('73608d3a-bc0a-704f-0','foobler pet toy','1000','an intelligent pet toy, make your pet happy','foobler.jpg','66f7985c-650c-01d6-c850-987ddf2a7292','20',NULL,'basic edition',1),
                                                                                                                          ('025d13bf-5323-80b2-5','royal canin dog food','100','an economic pet food','royal_canin.jpg','66f7985c-650c-01d6-c850-987ddf2a7292','30',NULL,'4kg',3),
                                                                                                                          ('4fb439ab-bb4e-d818-d','fashion cloth suit','300','make your cool pet','cloth.jpg','f67ce978-e1c9-e83c-ce31-8696149fe118','50','yellow','M',1),
                                                                                                                          ('c20459ca-2978-443f-b','pedigree dog food age 1-6','200','成犬中小型 5大健康活力表现','pedigree.jpeg','admin','30',NULL,'4kg',5),
                                                                                                                          ('c20459ca-2978-443f-b','pedigree dog food age 1-6','200','成犬中小型 5大健康活力表现','pedigree.jpeg','e84f0d72-2ff3-7cae-542c-f11f98d1062f','30',NULL,'4kg',1);

/*Table structure for table `announcement` */

DROP TABLE IF EXISTS `announcement`;

CREATE TABLE `announcement` (
                           `a_title` varchar(100) DEFAULT NULL,
                           `a_detail` varchar(3000) DEFAULT NULL,
                           `a_id` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `announcement` */

insert  into `announcement`(`a_title`,`a_detail`,`a_id`) values ('Buy pet food to win phone','#Buy pet food to win phone#\n\nActivity rules: \n\n1. Activity period: 1/4/2022 - 1/5/2022\n\n2. How to participate: Purchase any of the food products in the Pet Mall during the activity period and post a valid review for a chance to win a mobile phone prize; \n valid review requirements are as follows: you must upload a real and valid review text (at least 15 words) and 1-3 pictures, the content can be your evaluation of the quality of the product or shopping experience, etc.\n\n3. Prizes：\nFirst class prize(1 person): iphone 13 pro max\nSecond class prize(2 person):iphone 13\nThird class prize(3 person): apple tablet\nForth class prize(6 person): samsung smartphone\n\n4. Prize extraction and distribution:\n The winner will be randomly selected by the system among the users who meet the requirements of the activity, and the list of physical winners will be announced in the Pet Mall announcement within 15-20 working days after the end of the activity; the prize will be sent to the default delivery address within 15-20 working days after the winner''s announcement. Please ensure that the default address you fill in is correct and that your contact number is kept open. If the prize is not issued due to the failure of the user, the prize will be automatically forfeited.','0864aee3-f0dd-5329-3c23-12fd1rd0g'),
                                                          ('Buy more, get more discount','#Hot discount#\n\n1. Activity period: 30/4/2022 - 30/5/2022\n\n2. How to participate: 10% off the total price with the purchase of two items, 20% off the total price with the purchase of three items.','1864aee3-f0dd-hjf9-3c23-12fdb1d05'),
                                                          ('Buy pedigree, get cash back','1. Activity period: 30/4/2022 - 30/5/2022\n\n2. How to participate: Get 20% cashback on pedigree branded products when you pay with a co-branded credit card during the activity period.','0864aee3-f0dd-5gh9-3c13-12fhb1d0b'),
                                                          ('Welcome announcement','#We already open#\n\nPet Shop is open for business, we are a professional trading platform for pet supplies.\nWelcome you to shop in our mall, we will ask you to provide the most intimate service, the most quality products.','0864bee3-f0dd-3229-3c23-12fdb1d0b');

/*Table structure for table `points` */

DROP TABLE IF EXISTS `points`;

CREATE TABLE `points` (
                         `userId` varchar(50) DEFAULT NULL,
                         `num` varchar(40) DEFAULT NULL,
                         `rest` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `points` */

insert  into `points`(`userId`,`num`,`rest`) values ('admin','100','100');

/*Table structure for table `my_order` */

DROP TABLE IF EXISTS `my_order`;

CREATE TABLE `my_order` (
                            `id` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `p_name` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `price` varchar(20) DEFAULT NULL,
                            `description` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `img` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `userId` varchar(50) DEFAULT NULL,
                            `my_address` varchar(50) DEFAULT NULL,
                            `p_class` varchar(20) DEFAULT NULL,
                            `consignee` varchar(11) DEFAULT NULL,
                            `mobile` varchar(11) DEFAULT NULL,
                            `p_color` varchar(11) DEFAULT NULL,
                            `p_specification` varchar(20) DEFAULT NULL,
                            `orderDate` varchar(20) DEFAULT NULL,
                            `orderCode` varchar(20) DEFAULT NULL,
                            `actual_price` varchar(11) DEFAULT NULL,
                            `userName` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*Data for the table `my_order` */

insert  into `my_order`(`id`,`p_name`,`price`,`description`,`img`,`userId`,`my_address`,`p_class`,`consignee`,`mobile`,`p_color`,`p_specification`,`orderDate`,`orderCode`,`actual_price`,`userName`) values ('73608d3a-bc0a-704f-0','foobler pet toy','1000','an intelligent pet toy, make your pet happy','foobler.jpg','66f7985c-650c-01d6-c850-987ddf2a7292','City University of Hong Kong','20','alice','63332222',NULL,'basic edition','2022-4-1 21:09','1555942446000','1000','alice'),
                                                                                                                                                                                                 ('73608d3a-bc0a-704f-0','foobler pet toy','1000','an intelligent pet toy, make your pet happy','foobler.jpg','c9ceaa28-e3ac-e74f-4820-ee0d2f0bf3df','City University of Hong Kong','20','bob','60001111',NULL,'basic edition','2022-4-2 20:20','1555994150000','1000','bob'),
                                                                                                                                                                                                 ('4fb439ab-bb4e-d818-d','fashion cloth suit','300','make your cool pet','cloth.jpg','f67ce978-e1c9-e83c-ce31-8696149fe118','Kowloon, Hong Kong','50','express station','61110000','yellow','S','2022-4-1 17:06','1556802360000','300','david'),
                                                                                                                                                                                                 ('73608d3a-bc0a-704f-0','foobler pet toy','1000','an intelligent pet toy, make your pet happy','foobler.jpg','e84f0d72-2ff3-7cae-542c-f11f98d1062f','Chinese University of Hong Kong','20','my sister','65554444',NULL,'basic edition','2022-3-27 10:19','1558876780000','1000','cindy');

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
                           `userName` varchar(20) DEFAULT NULL,
                           `productId` varchar(22) DEFAULT NULL,
                           `reviewDate` varchar(50) DEFAULT NULL,
                           `reviewText` varchar(300) DEFAULT NULL,
                           `review_id` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `review` */

insert  into `review`(`userName`,`productId`,`reviewDate`,`reviewText`,`review_id`) values ('david','4fb439ab-bb4e-d818-d','Sun Apr 3 2022 09:23:42 GMT+0800 (中国标准时间)','very good','192d2493-07e3-2ba8-hna1-b9750d9adf'),
                                                                                      ('david','4fb439ab-bb4e-d818-d','Sun Apr 3 2022 09:24:06 GMT+0800 (中国标准时间)','fashionable','192d2493-07e3-dca8-05a1-b9750d9adf'),
                                                                                      ('alice','73608d3a-bc0a-704f-0','Sat Apr 2 2022 11:06:11 GMT+0800 (中国标准时间)','cheap','192dhn93-07e3-2ba8-05a1-b9750d9adf'),
                                                                                      ('bob','73608d3a-bc0a-704f-0','Sun Apr 3 2022 11:08:26 GMT+0800 (中国标准时间)','good quality','192d2493-07e3-2ba8-05a1-b9750d9ahf');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
                               `id` varchar(20) DEFAULT NULL,
                               `name` varchar(20) DEFAULT NULL,
                               `price` int(12) DEFAULT NULL,
                               `description` varchar(50) DEFAULT NULL,
                               `img` varchar(33) CHARACTER SET latin1 DEFAULT NULL,
                               `p_class` varchar(20) DEFAULT NULL,
                               `sales` varchar(500) DEFAULT '0',
                               `p_detail` varchar(1000) DEFAULT NULL,
                               `stock` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`price`,`description`,`img`,`p_class`,`sales`,`p_detail`,`stock`) values ('247563e3-ab6e-fe51-a','pedigree dog food adult',150,'chicken & vegetables','pedigree.jpg','40','9','<img src=\"static/gnImage/pedigree1.PNG\" alt=\"\"><img src=\"static/gnImage/pedigree2.PNG\">',1301),
                                                                                                        ('f6ddb4d5-3a12-e99a-9','pet home',500,'comfortable home','cathome.jpg','10','2','<img src=\"static/gnImage/home1.PNG\" alt=\"\"><img src=\"static/gnImage/home2.PNG\" alt=\"\">',198),
                                                                                                        ('025d13bf-5323-80b2-5','royal canin dog food',100,'an economic pet food','royal_canin.jpg','30','100','<img src=\"static/gnImage/royal1.PNG\" alt=\"\"><img src=\"static/gnImage/royal2.PNG\" alt=\"\">',900),
                                                                                                        ('c20459ca-2978-443f-b','pedigree dog food age 1-6',200,'成犬中小型 5大健康活力表现','pedigree.jpeg','30','6','<img src=\"static/gnImage/pedigree3.PNG\" alt=\"\"><img src=\"static/gnImage/pedigree4.PNG\" alt=\"\">',4002),
                                                                                                        ('73608d3a-bc0a-704f-0','foobler pet toy',1000,'an intelligent pet toy, make your pet happy','foobler.jpg','20','4','<img src=\"static/gnImage/foobler1.PNG\" alt=\"\"><img src=\"static/gnImage/foobler2.PNG\" alt=\"\">',16),
                                                                                                        ('abc081d8-060c-5d3a-6','RW Simple Solution',120,'針對各類型寵物污漬，包括排泄物污漬及嘔吐漬等','other.jpg','50','1','<img src=\"static/gnImage/other1.PNG\" alt=\"\"><img src=\"static/gnImage/other2.PNG\" alt=\"\">',299),
                                                                                                        ('4fb439ab-bb4e-d818-d','fashion cloth suit',300,'make your cool pet','cloth.jpg','50','15','<img src=\"static/gnImage/cloth1.PNG\" alt=\"\"><img src=\"static/gnImage/cloth2.PNG\" alt=\"\">',5);

/*Table structure for table `user_info` */


DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
                             `userId` varchar(333) NOT NULL,
                             `userName` varchar(12) DEFAULT NULL,
                             `password` varchar(18) DEFAULT NULL,
                             `userImg` varchar(33) DEFAULT NULL,
                             `points` varchar(22) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_info` */

insert  into `user_info`(`userId`,`userName`,`password`,`userImg`,`points`) values ('66f7985c-650c-01d6-c850-987ddf2a7292','alice','123456',NULL,'0'),
                                                                              ('e84f0d72-2ff3-7cae-542c-f11f98d1062f','cindy','111111',NULL,'0'),
                                                                              ('c9ceaa28-e3ac-e74f-4820-ee0d2f0bf3df','bob','111111',NULL,'0'),
                                                                              ('admin','admin','admin',NULL,'100'),
                                                                              ('f67ce978-e1c9-e83c-ce31-8696149fe118','david','123456',NULL,'0'),
                                                                              ('7065e571-2e16-2bfd-06c5-eff1c155130d','peter','000000',NULL,'0');

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
                               `userId` varchar(50) DEFAULT NULL,
                               `userAddress` varchar(50) DEFAULT NULL,
                               `userName` varchar(20) DEFAULT NULL,
                               `mobile` varchar(11) DEFAULT NULL,
                               `consignee` varchar(11) DEFAULT NULL,
                               `address_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `address` */

insert  into `address`(`userId`,`userAddress`,`userName`,`mobile`,`consignee`,`address_id`) values ('7065e571-2e16-2bfd-06c5-eff1c155130d','Beijing','peter','60010001','sister','1555226574000'),('7065e571-2e16-2bfd-06c5-eff1c155130d','Hong Kong','peter','67778888','peter','1555251142000');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;