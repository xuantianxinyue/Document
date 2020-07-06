/*
SQLyog v10.2 
MySQL - 5.7.13 : Database - ofuns
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ofuns` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ofuns`;

/*Table structure for table `carousel` */

DROP TABLE IF EXISTS `carousel`;

CREATE TABLE `carousel` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `carDesc` varchar(150) DEFAULT NULL COMMENT '轮播图描述',
  `imgpath` varchar(150) DEFAULT NULL COMMENT '轮播图图片名',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `categoryid` int(10) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `typeidFK` (`categoryid`) USING BTREE,
  CONSTRAINT `typeidFK` FOREIGN KEY (`categoryid`) REFERENCES `goods_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `carousel` */

insert  into `carousel`(`id`,`carDesc`,`imgpath`,`createtime`,`categoryid`) values (1,'营养健康奶粉，让孩子喝的开心','car1.jpg','2019-06-08 12:32:32',4);
insert  into `carousel`(`id`,`carDesc`,`imgpath`,`createtime`,`categoryid`) values (2,'母婴超级秒杀，100元优惠券','car2.jpg','2019-06-09 13:23:43',5);
insert  into `carousel`(`id`,`carDesc`,`imgpath`,`createtime`,`categoryid`) values (3,'伊利奶制品199减100券','car3.jpg','2019-06-01 12:23:13',3);
insert  into `carousel`(`id`,`carDesc`,`imgpath`,`createtime`,`categoryid`) values (4,'泰迪熊，让您和宝宝出游玩的舒心','car4.jpg','2019-06-11 13:34:56',2);

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `name` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `typeid` int(20) DEFAULT NULL COMMENT '类型id',
  `imgpath` varchar(50) DEFAULT NULL COMMENT '商品图片路径',
  `price` decimal(7,2) DEFAULT NULL COMMENT '商品价格',
  `goodsDesc` varchar(1000) DEFAULT NULL COMMENT '商品描述',
  `createTime` datetime DEFAULT NULL COMMENT '商品上架时间',
  `state` smallint(1) NOT NULL DEFAULT '1' COMMENT '0:已删除，1：正常（默认）/已下架，2:已上架',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_fk` (`typeid`) USING BTREE,
  CONSTRAINT `typeid_fk` FOREIGN KEY (`typeid`) REFERENCES `goods_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `goods` */

insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (1,'小黄鸭衣服',1,'1.1.png','100.00','小黄鸭衣服，面料很舒服','2019-08-30 10:00:27',2);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (2,'宝宝针织帽',1,'1.2.png','20.00','宝宝手工针织帽','2019-08-30 10:04:06',0);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (3,'宝宝连身衣',1,'1.3.png','78.00','宝宝连身衣服，透气','2019-08-30 10:04:59',2);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (4,'宝宝打底衣薄',1,'1.4.png','99.00','宝宝打底衣服薄，耐脏','2019-08-30 10:04:59',2);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (5,'宝宝打底衣厚',1,'1.5.png','99.00','宝宝打底衣服厚，耐脏','2019-08-30 10:07:43',2);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (6,'宝宝粉红衣服',1,'1.6.png','100.00','宝宝粉红色衣服，舒服柔软','2019-08-30 10:08:43',2);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (7,'宝宝白色衣服',1,'1.7.png','100.00','宝宝白色衣服，舒服柔软白','2019-08-30 10:11:35',2);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (8,'宝宝蓝色衣服',1,'1.8.png','100.00','宝宝蓝色衣服，舒服柔软','2019-08-30 10:12:13',2);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (9,'宝宝碗',2,'2.1.png','15.00','宝宝吃饭碗，耐摔，安全','2019-08-30 10:13:02',2);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (10,'宝宝奶瓶',2,'2.2.png','49.00','宝宝奶瓶，采用食品级硅胶','2019-08-30 10:31:09',2);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (11,'宝宝奶瓶2',2,'2.3.png','49.90','宝宝奶瓶2，采用食品级硅胶','2019-08-30 10:32:48',2);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (12,'摇床',2,'2.4.png','69.00','宝宝睡觉摇床，睡的舒服','2019-08-30 10:34:49',2);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (17,'儿童推车',2,'2.5.png','75.00','儿童推车，推着宝宝到处玩','2019-09-06 14:43:27',2);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (18,'家用儿童护栏',2,'2.6.png','80.00','家用儿童护栏，有效防止宝宝摔倒','2020-06-10 09:32:54',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (19,'儿童面霜',3,'3.1.png','40.00','儿童面霜，保护宝宝幼嫩肌肤','2020-06-25 09:33:02',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (20,'强生搽脸巾',3,'3.2.png','35.00','强生脸巾，触手可得的柔软','2020-06-11 09:33:07',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (21,'婴儿牛油果防晒霜',3,'3.3.png','79.00','牛油果防晒霜，防晒一流','2020-06-29 09:33:12',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (22,'强生护肤露',3,'3.4.png','89.00','强生护肤露，保护肌肤','2020-06-29 09:33:16',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (23,'宝宝沐浴露',3,'3.5.png','59.00','宝宝专用沐浴露，无添加损伤肌肤成分','2020-06-29 09:33:19',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (24,'芦荟霜',3,'3.6.png','69.00','芦荟霜，持久保湿一整天','2020-06-29 09:33:24',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (25,'\r\n儿童早教吉他',4,'4.1.png','39.00','儿童早教吉他，音乐随处可得','2020-06-29 09:33:27',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (26,'宝宝智力拼图',4,'4.2.png','30.00','智力拼图，锻炼宝宝脑筋','2020-06-29 09:33:30',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (27,'宝宝波浪鼓锤',4,'4.3.png','15.00','波浪锤，到处敲也不会损伤物品哦','2020-06-29 09:33:33',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (28,'儿童拨浪鼓',4,'4.4.png','19.00','拨浪鼓，自己一个人玩的选择','2020-06-29 09:33:36',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (29,'小赛车',4,'4.5.png','70.00','小赛车，宝宝玩的开心','2020-06-29 09:33:38',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (30,'遥控汽车',4,'4.6.png','190.00','遥控小汽车','2020-06-29 09:33:40',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (31,'薄脆小饼干',5,'5.1.png','45.00','薄脆的小饼干，很好吃哦','2020-06-29 09:33:43',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (32,'儿童奶酪棒',5,'5.2.png','35.00','让宝宝拿着咬的奶酪棒','2020-06-29 09:33:45',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (33,'雀巢能恩奶粉',5,'5.3.png','69.00','能恩奶粉，宝宝爱喝，营养充分','2020-06-29 09:33:47',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (34,'泰国香米饼',5,'5.4.png','35.00','泰国香米制作米饼','2020-06-29 09:33:49',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (35,'蓬松小面包',5,'5.5.png','35.00','蓬松的小面包，入口即化','2020-06-29 09:33:52',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (36,'有机鲜果酸奶',5,'5.6.png','49.00','含水果营养，宝宝也能喝哦','2020-06-29 09:33:55',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (37,'妈妈孕妇装',6,'6.1.png','165.00','妈妈穿宽松的孕妇装','2020-06-29 09:33:57',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (38,'背婴带',6,'6.2.png','70.00','把宝宝随时背在身上','2020-06-29 09:34:00',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (39,'妈咪包',6,'6.3.png','45.00','容量大，带齐宝宝所需各种物品','2020-06-29 09:34:02',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (40,'亲子学步带',6,'6.4.png','70.00','亲子学步带，不怕摔倒','2020-06-29 09:34:04',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (41,'孕妇安心枕蓝',6,'6.5.png','99.00','孕妇专用人体工学枕头蓝色','2020-06-29 09:34:06',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (42,'孕妇安心枕红',6,'6.6.png','99.00','孕妇专用人体工学枕头红色','2020-06-29 09:34:08',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (43,'黑灵芝沐浴露',7,'7.1.png','299.00','灵芝沐浴露','2020-06-29 09:34:11',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (44,'牛奶沐浴乳',7,'7.2.png','199.00','牛奶成分沐浴乳，香一整天','2020-06-29 09:34:14',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (45,'aveeno护肤霜',7,'7.3.png','199.00','护肤霜，持久护肤','2020-06-29 09:34:16',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (46,'护肤山茶油',7,'7.4.png','299.00','山茶油，长效保湿哦','2020-06-29 09:34:18',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (47,'植物精油驱蚊贴',7,'7.5.png','45.00','植物精油驱蚊，无异味，蚊虫无扰','2020-06-29 09:34:21',1);
insert  into `goods`(`id`,`name`,`typeid`,`imgpath`,`price`,`goodsDesc`,`createTime`,`state`) values (48,'子初无味驱蚊液',7,'7.6.png','35.00','驱蚊液，随手喷即可驱除蚊虫','2020-06-29 09:34:24',1);

/*Table structure for table `goods_type` */

DROP TABLE IF EXISTS `goods_type`;

CREATE TABLE `goods_type` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `typename` varchar(50) DEFAULT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `goods_type` */

insert  into `goods_type`(`id`,`typename`) values (1,'儿童衣服');
insert  into `goods_type`(`id`,`typename`) values (2,'儿童用品');
insert  into `goods_type`(`id`,`typename`) values (3,'儿童护肤品');
insert  into `goods_type`(`id`,`typename`) values (4,'儿童玩具');
insert  into `goods_type`(`id`,`typename`) values (5,'儿童食品');
insert  into `goods_type`(`id`,`typename`) values (6,'妈妈用品');
insert  into `goods_type`(`id`,`typename`) values (7,'妈妈护肤品');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `imgpath` varchar(255) DEFAULT NULL,
  `newsDesc` varchar(255) DEFAULT NULL,
  `newsinfo` varchar(10000) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `news` */

insert  into `news`(`id`,`imgpath`,`newsDesc`, `newsinfo`,`createTime`) values (1,'1.jpg','新西兰高质量乳铁蛋白 NEWMUK纽盾给出了答案','很多妈妈都知道，母乳是最适合宝宝的口粮，其中一个重要原因就在于，母乳中含有多种能提高孩子免疫力的营养成分——乳铁蛋白。如果不能进行母乳喂养，该如何为宝宝补充乳铁蛋白呢？其实，只要认准了富含乳铁蛋白的伊利金领冠睿护，就能为宝宝带来母乳般呵护。乳铁蛋白

乳铁蛋白是母乳中含量丰富的天然免疫蛋白，可以有效地拦截并杀死入侵宝宝身体的细菌，防止病毒感染人体细胞，帮助宝宝对抗炎症，是帮助宝宝建立免疫功能的关键成分。能提高免疫力的奶粉往往也会添加这种珍稀的成分，比如伊利金领冠睿护婴幼儿配方奶粉就采用冷喷工艺，全面地保留了乳铁蛋白的活性，可以帮助宝宝筑起一道健康防线。

α－乳清蛋白和β－酪蛋白

母乳中含有一对重要的蛋白质组合——α－乳清蛋白和β－酪蛋白组合＊，它们不仅有利于吸收和利用，而且能够促进宝宝的生长发育、行为发育以及免疫系统发育。在宝宝对蛋白质需求格外旺盛的生长发育期，这对黄金蛋白组合不可或缺。伊利金领冠睿护基于伊利17年来的母乳研究，在配方中添加了α＋β黄金蛋白组合，能够给宝宝提供有效的保护和全面的营养，尤其适合免疫力较弱的宝宝。

益生元

宝宝的肠道粘膜十分脆弱，如果肠道内有害菌过多而益生菌过少，那么很容易因为肠道菌群失调而出现消化功能紊乱、吸收不良、拉肚子和便秘等症状。因此肠道功能健康也是提升宝宝免疫力的重要一环。益生元可以直接进入宝宝的肠道，促进双歧杆菌等益生菌的生长和繁殖，保护宝宝的小肚子，因此妈妈在选择奶粉时也要留意益生元的种类和含量。以伊利金领冠睿护为例，这款奶粉中含有低聚半乳糖（GOS）、低聚果糖（FOS）和异构化乳糖（LOS）三种益生元，可以促进益生菌的生长，消灭有害菌，大大提升宝宝的肠道舒适度，进而增强免疫力。','2020-06-29 09:55:39');
insert  into `news`(`id`,`imgpath`,`newsDesc`,`newsinfo`,`createTime`) values (2,'2.jpg','谁是了不起的营养食品免疫品牌？且看雅莱牛初乳','相比渗透率非常高的婴幼儿配方奶粉、纸尿裤，母婴营养食品渗透率非常低，加上消费年龄段更长，因此母婴营养食品市场未来的增量空间非常大。

　　但相比门槛较高的保健食品，母婴营养食品的进入门槛要低很多，加上母婴渠道为营养食品的销量创造了通路，一大批投机型的品牌进入了市场，市场上品牌超过2000个，而且新品牌不断增加中，产能过剩、产品同质化现场逐步凸显。而能够在异常拥挤的品牌赛道上脱颖而出，则绝对被称之为“了不起”的品牌。0-6岁是小众市场，营养食品真正的大市场在家庭消费。一部分优势品牌在母婴品类的基础上，已经开始往家庭消费布局。如雅莱牛初乳确定了“专注高端免疫 成就健康家庭”的目标，与竞争对手形成区隔，建立起属于自己的市场范围。

　　2020年4月，中国婴童网&育儿网&N20成员联合发布《2020母婴营养食品产业发展蓝皮书》中就植入了雅莱牛初乳，这是行业对于雅莱牛初乳对于营养食品免疫行业做出贡献的肯定，也是对于雅莱牛初乳链接全家健康新主张的认可。从母婴带链接家庭，雅莱牛初乳正一步步踏实前行，用奋斗和创新铸就中国健康产业梦。当别人还在用原有的打法布局营养食品免疫市场时，专业的雅莱牛初乳已先行一步，开启全家健康新玩法！未来，雅莱牛初乳还将继续深扎营养食品免疫领域，为更多的家庭输送专业高端的营养免疫产品。','2020-06-29 09:55:41');
insert  into `news`(`id`,`imgpath`,`newsDesc`,`newsinfo`,`createTime`) values (3,'3.jpg','比蚊香安全，比蚊帐方便，你想要的全套靠谱驱蚊方式长这样','随着天气逐渐温暖，有的地方都能穿短袖了，夏天的脚步近了，沉寂了一冬天的蚊子又开始蠢蠢欲动了！

　　通常我们会把被蚊虫叮咬看做一件“ 小事”，但其实，蚊子就像是病毒轰炸机，一只蚊子能携带80多种病毒，像乙型脑炎、登革热病、疟疾等等。根据科学调查与研究表明全球7亿人感染各种疾病，导致100万人死亡，真凶就是“蚊子”，因此蚊子也被称为杀人最多的动物。年年岁岁蚊相似，岁岁年年疫相同，被蚊子叮咬过后除了难忘的瘙痒与“红包”更应该关心——是否传染上疾病。因为它可能是刚去过隔壁家厕所的蚊子接着爬上你的餐桌，登上你的面包，溜进你的水杯。最后携带各种传染病病菌，通过叮咬你的皮肤，把毒液注射进你的身体。

　　而“受害人”之中最痛苦的要数宝宝了，嫩嫩的肌肤成了蚊子们，观光享受美餐的打卡圣地。所以，24h随时驱蚊才是健康之重。这不仅是防蚊虫叮咬，更是防细菌病毒传播。为了能驱蚊又能很好地保护我们的健康，安贝儿新推出喜羊羊与灰太狼天然精油驱蚊系列，天然草本植物精油强悍驱蚊，不添加避蚊胺安全无毒，是家里孕妇小孩都能用的驱蚊好物！','2020-06-29 09:55:44');
insert  into `news`(`id`,`imgpath`,`newsDesc`,`newsinfo`,`createTime`) values (4,'4.jpg','95后妈妈来了！她们的画像和消费观有何不同?','“比市场更了解宝宝需求的是妈妈，比妈妈更了解市场需求的是数据“。

　　随着90后、95后妈妈躯体向母婴消费市场大肆涌入，新生代家庭对与下一代养护的重视程度越来提高，持续增长的母婴市场规模和不断细化的母婴市场需求，为母婴企业的发展带来了前所未有的历史机遇。

　　如今的母婴产业范围涵盖了衣、食、住、用、行、育、乐等各个方面，为了分食母婴这块“超级蛋糕”，包括母婴用品厂家、实体零售企业、广告营销机构等行业上下游角色，纷纷开始进入母婴板块，加紧了在母婴市场的布局。而想要更好的了解母婴市场动向，实现精准营销与布局，充分了解新生代妈妈的消费偏好与基本用户数据，则是其中非常关键的一环。猝不及防地，最大的95后妈妈已经24岁了，就连85后妈妈都已经25-34了...

　　自2017年之后，95后妈妈开始粉墨登场。虽然当前的妈妈群体仍还以85后妈妈为主，但95后妈妈所占据的比例已在成倍速提升，慢慢将逐渐代替85后妈妈，成为母婴消费市场的主力军。针对95后妈妈常用的母婴类平台调研发现，95后妈妈对于像宝宝树、亲宝宝、妈妈网孕育、妈妈帮、柚宝宝等母婴综合类平台的渗透率和活跃指数都较高，综合电商类平台和母婴垂直类平台稍微次之。

　　这表明95后妈妈与80、85后妈妈一样，习惯在宝宝树、京东、小红书等综合性平台上获取育儿知识，并进行消费。','2020-06-29 09:55:47');
insert  into `news`(`id`,`imgpath`,`newsDesc`,`newsinfo`,`createTime`) values (5,'5.jpg','什么是叶黄素 叶黄素的作用及原理','叶黄素自然界中与玉米黄素共同存在，是构成玉米、蔬菜、水果、花卉等植物色素的主要组分，含于叶子的叶绿体中，可将吸收的光能传递给叶绿素a，推测对光氧化、光破坏具有保护作用。也是构成人眼视网膜黄斑区域的主要色素。叶黄素是人类日常食用生果及蔬菜时可吸收到的营养素，但吸收利用率一般较低。如果缺乏叶黄素，可服用补充剂。如果有较差消化系统的老年人，可以使用舌下的喷剂来补充叶黄素。早在1996年叶黄素已被加入为膳食补充剂。另外，过量吸取叶黄素会对肝脏造成多余的负担，建议用量每日大约为12毫克。

　　叶黄素主要存在于蔬菜中，虽然它属于类胡萝卜素，但是胡萝卜并不是叶黄素最好的食物来源，颜色越是深绿色的蔬菜，通常叶黄素的含量越高。如芥蓝、绿色花椰菜、菠菜、芦笋、绿色莴苣等，都含有丰富的叶黄素。蛋黄也是不错的叶黄素提供者。视网膜的主要色素成分：叶黄素与玉米黄素构成了蔬菜、水果、花卉等植物色素的主要组分，也是人眼视网膜黄斑区域*的主要色素。人类的眼睛含有高量的叶黄素，这种元素是人体无法制造的，必须靠摄入叶黄素来补充，若缺乏这种元素，眼睛就会失明。保护视力：叶黄素作为抗氧化剂和光保护作用，可促进视网膜细胞中视紫质（Rhodopsin）的再生成，可预防重度近视及视网膜剥离，并可增进视力、保护视力。','2020-06-29 09:55:49');
insert  into `news`(`id`,`imgpath`,`newsDesc`,`newsinfo`,`createTime`) values (6,'6.jpg','儿童营养补充问题多，不如试试这个方法？','宝贝的健康成长是每个父母的心愿，所以，在儿童生长发育时期，很多宝爸宝妈们就不断地给孩子补充各种营养素。经常会听到宝妈们说：我家娃枕秃了，赶紧买了钙片补一补；我家娃最近不爱吃饭，电视广告说缺锌，得补锌；我家补.......，市面广告的宣传加上现在父母的焦虑，对孩子就买了各样各样的营养素进行补充。美其名曰：绝对不能让孩子缺少营养，输在起跑线上！当孩子摄入合理的营养素时，身体机能保持良好的状态,可降低疾病发生的几率;而不合理的营养素摄入，会影响孩子的身体活动，甚至导致亚健康状态与疾病的发生。

　　所以，合理的摄入营养素才是保证健康的关键因素。但是营养素的合理摄入量并不是统一的,而是因人而异的,它和个体的遗传因素有密切的关系，这个遗传因素就是我们要说的基因。每个孩子都是独一无二的，拥有不一样的基因。基因型不同，对营养素的吸收、代谢都不同，携带不同基因型的个体对某些营养素的需求也是不同的。科学的基因检测，可以评估个体对多种营养素的代谢能力、吸收能力及偏好，可以为孩子们的营养膳食做出个性化指导，从而让身体获取均衡的营养成分、避免不合理的膳食摄入对身体造成伤害。','2020-06-29 09:55:51');
insert  into `news`(`id`,`imgpath`,`newsDesc`,`newsinfo`,`createTime`) values (7,'7.jpg','如何判断宝宝可能缺乏哪些维生素？','维生素是一种是维持人体健康所必需的一类有机化合物，它不供给能量，需要量又极少，但却是维持人体正常生理功能的重要物质。

　　维生素缺乏会影响生长发育；过量则会引起中毒。

　　一般情况下维生素来源于食物，比如维生素A、B、C 、叶酸等；只有维生素D和烟酸可在体内合成。可合成又受一些条件制约，以至于合成量不足仍需适当补充。维生素缺乏原因

　　1、食物供应严重不足，摄入不足；如：食物单一、储存不当、烹饪破坏等。比如叶酸受热损失。

　　2、吸收利用降低；如：消化系统疾病或摄入脂肪量过少从而影响脂溶性Vit的吸收。

　　3、维生素需要量相对增高；如：妊娠和哺乳期妇女、儿童、特殊工种、特殊环境下的人群。

　　4、不合理使用抗生素会导致对维生素的需要量增加。','2020-06-29 09:55:53');
insert  into `news`(`id`,`imgpath`,`newsDesc`,`newsinfo`,`createTime`) values (8,'8.jpg','科学阐明孩子夏季补锌有多重要','烈日炎炎，很多宝妈宝爸诉苦着天天带孩子去医院有多痛苦。

　　然而宝宝生病的原因却惊人类似。夏季是一年中最容易缺锌的季节， 每年7 、8 月份看病的宝宝， 缺锌的发生率高达6 0％ 以上。所以在盛夏来临之际，应做好补锌的准备。摄取不足锌主要来源于瘦肉、肝、蛋、奶等动物蛋白食品，夏天宝宝不喜欢吃荤腥，导致锌摄入减少。另外，夏天宝宝容易患上消化道疾病，也会影响锌的吸收。

　　出汗过多夏天气温高，容易出汗，汗中含有较多的锌，导致锌丢失过多，宝宝一天随汗液丢失的锌可高达4毫克。宝宝和树木一样，春夏季节生长发育较快，特别是新生儿和婴幼儿，他们本身生长发育就迅速，需要锌量大，所以容易出现锌缺乏。

　　其他原因人工喂养的宝宝更容易缺锌。因为初乳中含锌量比成熟乳高，宝宝出生后未哺初乳或母乳不足，又没有及时添加富锌辅食，就会导致锌摄入不足。另外，早产、偏食挑食、患佝偻病以及易出汗的宝宝都容易缺锌。柠檬酸锌为有机锌补剂，对胃刺激小，含锌量高，并且在人体内参与三羧酸循环，增强人体消化吸收功能，柠檬酸锌是存在人体母乳中的唯一的一种锌配合物,比牛奶中的锌更易于吸收,而且性能稳定。所以给宝宝补好锌，宝宝也能健康开心。','2020-06-29 09:55:55');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `orderid` int(50) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `userid` int(20) DEFAULT NULL COMMENT '用户id',
  `total` decimal(10,2) DEFAULT NULL COMMENT '小计',
  `paytype` int(2) DEFAULT NULL COMMENT '支付类型1、在线支付2、货到付款',
  `status` int(10) DEFAULT NULL COMMENT '状态1未付款2、已付款',
  `shipname` varchar(20) DEFAULT NULL COMMENT '物流名称',
  `shipcode` varchar(20) DEFAULT NULL COMMENT '物流单号',
  `createtime` datetime DEFAULT NULL COMMENT '订单创建时间',
  `closetime` datetime DEFAULT NULL COMMENT '订单关闭时间',
  `addressId` int(20) DEFAULT NULL COMMENT '订单地址',
  `orderNo` varchar(30) NOT NULL COMMENT '商户订单号',
  PRIMARY KEY (`orderid`) USING BTREE,
  KEY `user_id` (`userid`) USING BTREE,
  CONSTRAINT `user_id` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `order` */

insert  into `order`(`orderid`,`userid`,`total`,`paytype`,`status`,`shipname`,`shipcode`,`createtime`,`closetime`,`addressId`,`orderNo`) values (1,1,'15687.00',1,1,'菜鸟','1010','2019-09-10 11:22:14','2019-09-18 11:22:24',13,'201956153820915');
insert  into `order`(`orderid`,`userid`,`total`,`paytype`,`status`,`shipname`,`shipcode`,`createtime`,`closetime`,`addressId`,`orderNo`) values (2,2,'1128.00',1,2,'顺丰','46464','2019-09-11 15:15:29',NULL,12,'20195615382092');
insert  into `order`(`orderid`,`userid`,`total`,`paytype`,`status`,`shipname`,`shipcode`,`createtime`,`closetime`,`addressId`,`orderNo`) values (3,1,'349.00',2,2,'中通','498645468','2019-09-12 15:16:11',NULL,13,'20195615382093');
insert  into `order`(`orderid`,`userid`,`total`,`paytype`,`status`,`shipname`,`shipcode`,`createtime`,`closetime`,`addressId`,`orderNo`) values (4,2,'4899.00',3,1,'百世','4684546','2019-09-18 15:18:17',NULL,12,'20195615382094');

/*Table structure for table `order_goods_detail` */

DROP TABLE IF EXISTS `order_goods_detail`;

CREATE TABLE `order_goods_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `itemid` int(10) DEFAULT NULL COMMENT '商品编号',
  `orderid` int(10) DEFAULT NULL COMMENT '订单编号',
  `price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `num` int(10) DEFAULT NULL COMMENT '数量',
  `total` decimal(10,2) DEFAULT NULL COMMENT '小计',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`orderid`) USING BTREE,
  KEY `total` (`total`) USING BTREE,
  KEY `goodsid_FK` (`itemid`) USING BTREE,
  CONSTRAINT `goodsid_FK` FOREIGN KEY (`itemid`) REFERENCES `goods` (`id`),
  CONSTRAINT `orderid_FK` FOREIGN KEY (`orderid`) REFERENCES `order` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `order_goods_detail` */

insert  into `order_goods_detail`(`id`,`itemid`,`orderid`,`price`,`num`,`total`) values (1,1,1,'9999.00',1,'9999.00');
insert  into `order_goods_detail`(`id`,`itemid`,`orderid`,`price`,`num`,`total`) values (2,2,1,'5688.00',1,'5688.00');
insert  into `order_goods_detail`(`id`,`itemid`,`orderid`,`price`,`num`,`total`) values (3,10,3,'34.90',10,'349.00');
insert  into `order_goods_detail`(`id`,`itemid`,`orderid`,`price`,`num`,`total`) values (4,11,1,'49.90',10,'499.00');
insert  into `order_goods_detail`(`id`,`itemid`,`orderid`,`price`,`num`,`total`) values (5,12,1,'62.90',10,'629.00');
insert  into `order_goods_detail`(`id`,`itemid`,`orderid`,`price`,`num`,`total`) values (6,4,4,'4899.00',1,'4899.00');

/*Table structure for table `shopping_car` */

DROP TABLE IF EXISTS `shopping_car`;

CREATE TABLE `shopping_car` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `goods_id` int(10) DEFAULT NULL COMMENT '商品编号',
  `num` int(5) DEFAULT NULL COMMENT '数量',
  `userid` int(10) DEFAULT NULL COMMENT '用户id',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `shopcar_goodsid_FK` (`goods_id`) USING BTREE,
  KEY `shopcar_userid_FK` (`userid`) USING BTREE,
  CONSTRAINT `shopping_car_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `shopping_car_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `shopping_car` */

insert  into `shopping_car`(`id`,`goods_id`,`num`,`userid`,`create_date`) values (1,12,4,1,'2019-09-06 14:51:19');
insert  into `shopping_car`(`id`,`goods_id`,`num`,`userid`,`create_date`) values (2,11,2,1,'2019-09-06 14:51:40');
insert  into `shopping_car`(`id`,`goods_id`,`num`,`userid`,`create_date`) values (3,8,2,2,'2019-09-06 14:51:40');
insert  into `shopping_car`(`id`,`goods_id`,`num`,`userid`,`create_date`) values (4,10,1,1,'2019-09-06 15:51:40');
insert  into `shopping_car`(`id`,`goods_id`,`num`,`userid`,`create_date`) values (37,1,2,7,'2020-07-05 23:25:22');
insert  into `shopping_car`(`id`,`goods_id`,`num`,`userid`,`create_date`) values (38,3,1,7,'2020-07-06 00:32:02');
insert  into `shopping_car`(`id`,`goods_id`,`num`,`userid`,`create_date`) values (39,4,1,7,'2020-07-06 00:33:59');
insert  into `shopping_car`(`id`,`goods_id`,`num`,`userid`,`create_date`) values (40,5,2,7,'2020-07-06 00:34:06');
insert  into `shopping_car`(`id`,`goods_id`,`num`,`userid`,`create_date`) values (41,6,2,7,'2020-07-06 00:34:53');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(150) DEFAULT NULL COMMENT '用户名',
  `password` varchar(150) DEFAULT NULL COMMENT '密码',
  `phone` varchar(96) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`phone`) values (1,'xtd','123','13900000001');
insert  into `user`(`id`,`username`,`password`,`phone`) values (2,'yy','123','13900000002');
insert  into `user`(`id`,`username`,`password`,`phone`) values (3,'lff','123','13900000003');
insert  into `user`(`id`,`username`,`password`,`phone`) values (4,'wly','123','13900000004');
insert  into `user`(`id`,`username`,`password`,`phone`) values (5,'tzq','123','13900000005');
insert  into `user`(`id`,`username`,`password`,`phone`) values (6,'scm','123','13900000006');
insert  into `user`(`id`,`username`,`password`,`phone`) values (7,'yb','123','13900000007');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
