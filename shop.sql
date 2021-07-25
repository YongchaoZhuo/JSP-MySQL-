/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.27 : Database - shop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shop`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cid` varchar(50) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`cid`,`cname`) values ('1','手机数码'),('2','电脑办公'),('3','家具家居'),('4','鞋靴箱包'),('5','图书音像'),('6','母婴孕婴');

/*Table structure for table `orderitem` */

DROP TABLE IF EXISTS `orderitem`;

CREATE TABLE `orderitem` (
  `itemid` varchar(50) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` varchar(50) DEFAULT NULL,
  `oid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fk_0001` (`pid`),
  KEY `fk_0002` (`oid`),
  CONSTRAINT `fk_0001` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`),
  CONSTRAINT `fk_0002` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderitem` */

insert  into `orderitem`(`itemid`,`count`,`subtotal`,`pid`,`oid`) values ('0f1e2f2b-b043-4534-8574-dafebd479aad',1,1299,'1','36724cb8-d3e5-4ddc-b768-64242331919c'),('216431fb-7dae-46ee-9530-fe143077adb4',1,1799,'6','5f64b69f-1647-4541-924b-5f4bfc8bda8e'),('2a61cfef-8621-409f-a101-1faaeee1c520',1,3299,'37','36724cb8-d3e5-4ddc-b768-64242331919c'),('38b415c4-9313-4f5c-b5a7-31d688931a7d',1,2298,'11','e32d6434-3f75-4599-a6c2-9db0ec50fef3'),('39fa7c07-c8bc-41a3-92ef-a78ba994a6dd',1,2299,'9','5f64b69f-1647-4541-924b-5f4bfc8bda8e'),('3c08b1a8-f3f7-43e9-a0d9-0fedd4bf79b9',1,5999,'42','dd2904df-184d-4b64-841e-6d9e871affc5'),('70d963bd-6be7-465b-afa4-19174e6da5fe',1,1799,'6','36724cb8-d3e5-4ddc-b768-64242331919c'),('8a8eac9b-43e0-486c-89a0-ec78e4b50c8a',6,15594,'10','541fb4b9-0cd7-4f01-81f0-99a1c30bf63e'),('9e7c71c7-a8fa-4a2c-8946-4df278f66978',1,2699,'2','54798af8-fbea-4daf-9766-33cb907d869e'),('a96543b3-5ca1-43f1-ad39-c69509e3fef8',10,48990,'47','36724cb8-d3e5-4ddc-b768-64242331919c'),('add1b7ad-bb25-4591-b2e6-875ecb2ace0c',1,1699,'23','5f64b69f-1647-4541-924b-5f4bfc8bda8e'),('aeccee46-f40c-4c27-bc29-bbd20ae852d8',1,2599,'10','2aefa9a6-b212-46b4-a982-170f1a3237ae'),('b0addb7d-baed-440f-87f1-615894446d75',1,2599,'10','b55d156c-3442-4f9e-bcf8-00d12dd56da3'),('b43adb68-e649-44b1-9f2c-9e7788748d98',1,1699,'23','e32d6434-3f75-4599-a6c2-9db0ec50fef3'),('bfe2ae3d-d56c-41d5-b966-44483e3efdcc',1,2499,'13','541fb4b9-0cd7-4f01-81f0-99a1c30bf63e'),('d99d3518-aff7-40f9-bfd4-81715984f8e4',1,2599,'10','e32d6434-3f75-4599-a6c2-9db0ec50fef3'),('ea2bd50d-f434-40a7-9201-d26915419bf1',1,2299,'50','5f64b69f-1647-4541-924b-5f4bfc8bda8e');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `oid` varchar(50) NOT NULL,
  `ordertime` datetime DEFAULT NULL,
  `total` double DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`oid`,`ordertime`,`total`,`state`,`address`,`name`,`telephone`,`uid`) values ('2aefa9a6-b212-46b4-a982-170f1a3237ae','2020-10-10 22:57:37',2599,0,'3333','3333','3333','1c3366f5-a892-492c-ad15-33875d4bf8f7'),('36724cb8-d3e5-4ddc-b768-64242331919c','2020-10-10 23:12:55',55387,0,'55555','5555','55555','a178bc00-d68c-45ce-bf42-e0de926083f2'),('541fb4b9-0cd7-4f01-81f0-99a1c30bf63e','2019-11-24 23:21:24',18093,0,'1231231','1231','12312','e38c5e16-3de8-4578-a9ab-251d6196b10b'),('54798af8-fbea-4daf-9766-33cb907d869e','2019-11-24 23:16:22',2699,0,'123312','12321','123123','e38c5e16-3de8-4578-a9ab-251d6196b10b'),('5f64b69f-1647-4541-924b-5f4bfc8bda8e','2021-06-24 08:10:50',8096,0,'商丘工学院','卓永超','13781510597','00a70fad-8640-4255-8b90-b39d4b4586da'),('b55d156c-3442-4f9e-bcf8-00d12dd56da3','2020-07-14 18:23:41',2599,0,'11','111','11','f55b7d3a352a4f0782c910b2c70f1ea4'),('dd2904df-184d-4b64-841e-6d9e871affc5','2019-12-09 11:08:44',5999,0,'gfggg','田艳梅','123123','00a70fad-8640-4255-8b90-b39d4b4586da'),('e32d6434-3f75-4599-a6c2-9db0ec50fef3','2019-11-11 19:33:03',6596,0,'123','23','11123','8550fa15-a9fa-4b0f-9027-2493f1ce1cc1');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pid` varchar(50) NOT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `pimage` varchar(200) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `pflag` int(11) DEFAULT NULL,
  `cid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `sfk_0001` (`cid`),
  CONSTRAINT `sfk_0001` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`pid`,`pname`,`market_price`,`shop_price`,`pimage`,`pdate`,`is_hot`,`pdesc`,`pflag`,`cid`) values ('1','荣耀Play5T活力版',1199,1099,'products/1/c_0001.jpg','2021-04-27',0,'荣耀Play5T活力版 超级快充 5000mAh大电池 6.6英寸全面屏 全网通6GB+128GB极光蓝',0,'1'),('10','小米Redmi K40 5G',2199,2099,'products/1/c_0010.jpg','2021-02-25',1,'Redmi K40 旗舰骁龙870 三星AMOLED 120Hz高刷直屏 4800万高清三摄相机 33W快充 8GB+128GB 幻境 游戏电竞智能5G手机',0,'1'),('11','小米Redmi 9A',699,599,'products/1/c_0014.jpg','2020-06-30',1,'Redmi 9A 5000mAh大电量 1300万AI相机 八核处理器 人脸解锁 4GB+64GB 湖光绿 游戏智能手机',0,'1'),('12','Apple iPhone 12',6799,6199,'products/1/c_0013.jpg','2020-10-14',1,'Apple iPhone 12 (A2404) 128GB 蓝色 支持移动联通电信5G 双卡双待手机',0,'1'),('13','小米Redmi Note 10 Pro',1699,1566,'products/1/c_0012.jpg','2021-05-26',1,'Redmi Note 10 Pro 5G 天玑1100液冷游戏芯 67W快充 120Hz旗舰变速金刚屏 月魄 6GB+128GB 游戏手机',0,'1'),('14','Apple iPhone 11 ',4999,4699,'products/1/c_0011.jpg','2019-09-13',0,'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待',0,'1'),('15','vivo Y70t',1499,1399,'products/1/c_0015.jpg','2021-05-26',1,'vivo Y70t 5G手机 8G+128GB 碧海蓝 4500mAh大电池 双引擎闪充 4800万后置三摄 双模5G全网通手机',0,'1'),('16','荣耀Play5T',1199,1099,'products/1/c_0016.jpg','2021-05-18',0,'荣耀Play5T 22.5W超级快充 5000mAh大电池 6.5英寸护眼屏 全网通8GB+128GB幻夜黑',0,'1'),('17','荣耀畅玩20',899,799,'products/1/c_0017.jpg','2021-04-26',0,'荣耀畅玩20 5000mAh超大电池续航 6.5英寸大屏 莱茵护眼 4GB+128GB 冰岛白 双卡双待 全网通',0,'1'),('18','小米Redmi K40 Pro+',3699,3499,'products/1/c_0018.jpg','2021-02-25',0,'Redmi K40 Pro+ 旗舰骁龙888 三星E4旗舰120Hz高刷直屏 一亿像素夜景相机 杜比全景音 33W快充 12GB+256GB 墨羽 游戏电竞智能5G手机',0,'1'),('19','荣耀X10',2399,2199,'products/1/c_0020.jpg','2020-05-20',1,'荣耀X10 5G双模 麒麟820 4300mAh续航 4000万高感光影像系统 6.63英寸升降全面屏 全网通 8GB+128GB 探速黑',0,'1'),('2','小米Redmi K40游戏增强版 ',2899,2699,'products/1/c_0002.jpg','2021-04-27',1,'Redmi K40游戏增强版 天玑1200处理器67W闪充 120Hz高刷直屏 12GB+256GB 暗影 游戏电竞智能5G手机',0,'1'),('20','vivo Y30 ',1299,1199,'products/1/c_0019.jpg','2020-06-30',0,' vivo Y30 8GB+128GB 水漾蓝 5000mAh大电池 AI智慧三摄 全网通智能手机',0,'1'),('21','小米 Redmi Note 9 4G',1099,999,'products/1/c_0021.jpg','2020-05-20',0,'Redmi Note 9 4G 6000mAh大电池 骁龙662处理器 18W快充 烟波蓝 6GB+128GB 游戏智能手机 ',0,'1'),('22','小米Redmi Note 9 5G',1599,1399,'products/1/c_0022.jpg','2021-02-25',1,'Redmi Note 9 5G 天玑800U 18W快充 4800万超清三摄 流影紫 6GB+256GB 游戏智能手机 ',0,'1'),('23','一加 OnePlus 9R',3499,3299,'products/1/c_0023.jpg','2021-04-27',1,'一加 OnePlus 9R 5G 120Hz 柔性屏12GB+256GB 蓝屿 骁龙870 65W快充 专业游戏配置 超大广角拍照手机',0,'1'),('24',' realme 真我Q3',1399,1299,'products/1/c_0024.jpg','2021-04-22',1,'realme 真我Q3 骁龙750G 120Hz可变帧电竞屏 30W智慧闪充 5000mAh大电池 迷幻银 8GB+128GB realmeq3双5G手机',0,'1'),('25','vivo Y52s',1699,1599,'products/1/c_0025.jpg','2020-12-12',0,' vivo Y52s 5G手机 8GB+128GB 莫奈彩 5000mAh大电池 4800万影像系统 90Hz灵动护眼屏 双模5G全网通手机',0,'1'),('26','vivo iQOO 7',3898,3698,'products/1/c_0026.jpg','2021-01-05',0,' vivo iQOO 7 8GB+256GB 黑境 高通骁龙888 120W超快闪充 KPL官方赛事电竞手机 双模5G全网通vivoiqoo7',0,'1'),('27','OPPO Reno5 5G',2499,2399,'products/1/c_0027.jpg','2020-12-12',0,'OPPO Reno5 5G 6400万水光人像四摄 65W超级闪充 8+128 星河入梦 全网通手机\r\n',0,'1'),('28','小米10S',3199,2899,'products/1/c_0028.jpg','2021-02-25',0,'小米10S 骁龙870 哈曼卡顿对称式双扬立体声 8GB+256GB 白色 旗舰手机',0,'1'),('29','小米Redmi Note 9 Pro',1599,1499,'products/1/c_0029.jpg','2020-11-24',0,'Redmi Note 9 Pro 5G 一亿像素 骁龙750G 33W快充 120Hz刷新率 湖光秋色 8GB+128GB 游戏智能手机',0,'1'),('3','荣耀50',2699,2499,'products/1/c_0003.jpg','2021-06-01',0,'荣耀50 1亿像素超清影像 5G 6.57英寸超曲屏 66W超级快充 3200万像素高清自拍 全网通版8GB+128GB 初雪水晶',0,'1'),('30','vivo Y53s',1799,1699,'products/1/c_0030.jpg','2021-06-11',0,'vivo Y53s 5G手机 8GB+128GB 海盐 5000mAh大电池 6400万超清主摄 90Hz高刷屏 双模5G全网通手机',0,'1'),('31','联想(Lenovo)天逸510S ',4649,4599,'products/1/c_0031.jpg','2019-06-20',0,'联想(Lenovo)天逸510S 酷睿版英特尔酷睿i5 台式机电脑整机(i5-10400 16G 1T+256G SSD wifi win10 )23英寸',0,'2'),('32','戴尔Vostro 3690-R14NBR',4899,4759,'products/1/c_0032.jpg','2020-12-12',0,' 戴尔dell成就3690 商用办公台式机电脑主机(11代i5-11400 16G 256G+1T 三年服务)+23.8英寸电脑显示器',0,'2'),('33','惠普TG01-279rcn',7499,7399,'products/1/c_0033.jpg','2021-02-25',0,'惠普(HP)暗影精灵6Pro十一代i7游戏台式机电脑主机(11代i7-11700F 16G  GTX1660Ti  256GBSSD+1TB 6G独显）',0,'2'),('34','联想（Lenovo）小新V3000经典版',4599,4499,'products/1/c_0034.jpg','2015-11-02',0,'14英寸超薄笔记本电脑（i7-5500U 4G 500G+8G SSHD 2G独显 全高清屏）黑色满1000減100，狂减！火力全开，横扫3天！',0,'2'),('35','华硕（ASUS）经典系列R557LI',3799,3699,'products/1/c_0035.jpg','2015-11-02',0,'15.6英寸笔记本电脑（i5-5200U 4G 7200转500G 2G独显 D刻 蓝牙 Win8.1 黑色）',0,'2'),('36','华硕（ASUS）X450J',4599,4399,'products/1/c_0036.jpg','2015-11-02',0,'14英寸笔记本电脑 （i5-4200H 4G 1TB GT940M 2G独显 蓝牙4.0 D刻 Win8.1 黑色）',0,'2'),('37','戴尔（DELL）灵越 飞匣3000系列',3399,3299,'products/1/c_0037.jpg','2015-11-03',0,' Ins14C-4528B 14英寸笔记本（i5-5200U 4G 500G GT820M 2G独显 Win8）黑',0,'2'),('38','惠普(HP)WASD 暗影精灵',5699,5499,'products/1/c_0038.jpg','2015-11-02',0,'15.6英寸游戏笔记本电脑(i5-6300HQ 4G 1TB+128G SSD GTX950M 4G独显 Win10)',0,'2'),('39','Apple 配备 Retina 显示屏的 MacBook',11299,10288,'products/1/c_0039.jpg','2015-11-02',0,'Pro MF840CH/A 13.3英寸宽屏笔记本电脑 256GB 闪存',0,'2'),('4','荣耀V40轻奢版 5G',3299,3099,'products/1/c_0004.jpg','2021-03-23',0,'荣耀V40轻奢版 5G 超级快充 6400万超清四摄 8GB+256GB蓝水翡翠 移动联通电信5G 双卡双待手机',0,'1'),('40','机械革命（MECHREVO）MR X6S-M',6799,6599,'products/1/c_0040.jpg','2015-11-02',0,'15.6英寸游戏本(I7-4710MQ 8G 64GSSD+1T GTX960M 2G独显 IPS屏 WIN7)黑色',0,'2'),('41','神舟（HASEE） 战神K660D-i7D2',5699,5499,'products/1/c_0041.jpg','2015-11-02',0,'15.6英寸游戏本(i7-4710MQ 8G 1TB GTX960M 2G独显 1080P)黑色',0,'2'),('42','微星（MSI）GE62 2QC-264XCN',6199,5999,'products/1/c_0042.jpg','2015-11-02',0,'15.6英寸游戏笔记本电脑（i5-4210H 8G 1T GTX960MG DDR5 2G 背光键盘）黑色',0,'2'),('43','雷神（ThundeRobot）G150S',5699,5499,'products/1/c_0043.jpg','2015-11-02',0,'15.6英寸游戏本 ( i7-4710MQ 4G 500G GTX950M 2G独显 包无亮点全高清屏) 金',0,'2'),('44','惠普（HP）轻薄系列 HP',3199,3099,'products/1/c_0044.jpg','2015-11-02',0,'15-r239TX 15.6英寸笔记本电脑（i5-5200U 4G 500G GT820M 2G独显 win8.1）金属灰',0,'2'),('45','未来人类（Terrans Force）T5',10999,9899,'products/1/c_0045.jpg','2015-11-02',0,'15.6英寸游戏本（i7-5700HQ 16G 120G固态+1TB GTX970M 3G GDDR5独显）黑',0,'2'),('46','戴尔（DELL）Vostro 3800-R6308 台式电脑',3299,3199,'products/1/c_0046.jpg','2015-11-02',0,'（i3-4170 4G 500G DVD 三年上门服务 Win7）黑',0,'2'),('47','联想（Lenovo）H3050 台式电脑',5099,4899,'products/1/c_0047.jpg','2015-11-11',0,'（i5-4460 4G 500G GT720 1G独显 DVD 千兆网卡 Win10）23英寸',0,'2'),('48','Apple iPad mini 2 ME279CH/A',2088,1888,'products/1/c_0048.jpg','2015-11-02',0,'（配备 Retina 显示屏 7.9英寸 16G WLAN 机型 银色）',0,'2'),('49','小米（MI）7.9英寸平板',1399,1299,'products/1/c_0049.jpg','2015-11-02',0,'WIFI 64GB（NVIDIA Tegra K1 2.2GHz 2G 64G 2048*1536视网膜屏 800W）白色',0,'2'),('5','小米Redmi K30S 至尊纪念版',2499,2399,'products/1/c_0005.jpg','2020-10-27',0,'Redmi K30S 至尊纪念版 双模5G 骁龙865 144HzLCD旗舰屏幕 8GB+256GB 星际黑 游戏手机',0,'1'),('50','Apple iPad Air 2 MGLW2CH/A',2399,2299,'products/1/c_0050.jpg','2015-11-12',0,'（9.7英寸 16G WLAN 机型 银色）',0,'2'),('6','OPPO A72',1399,1199,'products/1/c_0006.jpg','2020-07-02',0,' OPPO A72 双模5G 90Hz灵点屏 大电池 18W快充 后置三摄AI美颜拍照视频手机 6GB+128GB 霓虹',0,'1'),('7','荣耀50 Pro ',3699,3599,'products/1/c_0007.jpg','2021-06-16',0,'荣耀50 Pro 1亿像素超清影像 5G 6.72英寸超曲屏 100W超级快充 前置视频双摄 全网通版8GB+256GB 初雪水晶\r\n',0,'1'),('8','一加 OnePlus 9',3799,3589,'products/1/c_0008.jpg','2021-03-24',0,'一加 OnePlus 9 5G 120Hz 柔性屏8GB+128GB 紫翼 骁龙888 65W快充 哈苏专业模式 超广角拍照游戏手机',0,'1'),('9','小米11青春版 ',2399,2299,'products/1/c_0009.jpg','2021-03-29',0,'小米11青春版 骁龙780G处理器 AMOLED柔性直屏 8GB+256GB 清凉薄荷 5G时尚游戏手机',0,'1');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` varchar(50) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `manage` int(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`username`,`password`,`name`,`email`,`telephone`,`sex`,`manage`) values ('00a70fad-8640-4255-8b90-b39d4b4586da','admin','123456','卓永超','2237959650@qq.com','00000000','男',1),('0b4f34ab-4b1c-49b7-a60c-202b6c89d53c','zyc','123','卓永超','mrzhuoyc@163.com','110','男',0),('3adbe16a-bf53-4f29-b823-85c63397b0b8','a','a','a','11@163.com','11','男',0),('5d9fffdf-7cc4-4dc5-bd4e-686ce1b5e390','2237959650','123456','这一次','123456@163.com','123456','男',0),('61ef8474-2343-4563-a0d0-d16d6fc43eb7','gxf','123456','高晓峰','000@126.com','110','女',0),('c2fb506d-360c-4a82-ad5b-0a925782ff89','zyc1','123','111','mrzhuoyc@163.com','110','男',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
