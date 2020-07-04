/*
 Navicat Premium Data Transfer

 Source Server         : myshop
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : ofuns

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 29/06/2020 13:58:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `carDesc` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图描述',
  `imgpath` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图图片名',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `categoryid` int(10) NULL DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `typeidFK`(`categoryid`) USING BTREE,
  CONSTRAINT `typeidFK` FOREIGN KEY (`categoryid`) REFERENCES `goods_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES (1, '营养健康奶粉，让孩子喝的开心', 'car1.jpg', '2019-06-08 12:32:32', 4);
INSERT INTO `carousel` VALUES (2, '母婴超级秒杀，100元优惠券', 'car2.jpg', '2019-06-09 13:23:43', 5);
INSERT INTO `carousel` VALUES (3, '伊利奶制品199减00券', 'car3.jpg', '2019-06-01 12:23:13', 3);
INSERT INTO `carousel` VALUES (4, '泰迪熊，让您和宝宝出游玩的舒心', 'car4.jpg', '2019-06-11 13:34:56', 2);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `typeid` int(20) NULL DEFAULT NULL COMMENT '类型id',
  `imgpath` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片路径',
  `price` decimal(7, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `goodsDesc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品描述',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '商品上架时间',
  `state` smallint(1) NOT NULL DEFAULT 1 COMMENT '0:已删除，1：正常（默认）/已下架，2:已上架',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_fk`(`typeid`) USING BTREE,
  CONSTRAINT `typeid_fk` FOREIGN KEY (`typeid`) REFERENCES `goods_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '小黄鸭衣服', 1, '1.1.png', 100.00, '小黄鸭衣服，面料很舒服', '2019-08-30 10:00:27', 2);
INSERT INTO `goods` VALUES (2, '宝宝针织帽', 1, '1.2.png', 20.00, '宝宝手工针织帽', '2019-08-30 10:04:06', 0);
INSERT INTO `goods` VALUES (3, '宝宝连身衣', 1, '1.3.png', 78.00, '宝宝连身衣服，透气', '2019-08-30 10:04:59', 2);
INSERT INTO `goods` VALUES (4, '宝宝打底衣薄', 1, '1.4.png', 99.00, '宝宝打底衣服薄，耐脏', '2019-08-30 10:04:59', 2);
INSERT INTO `goods` VALUES (5, '宝宝打底衣厚', 1, '1.5.png', 99.00, '宝宝打底衣服厚，耐脏', '2019-08-30 10:07:43', 2);
INSERT INTO `goods` VALUES (6, '宝宝粉红衣服', 1, '1.6.png', 100.00, '宝宝粉红色衣服，舒服柔软', '2019-08-30 10:08:43', 2);
INSERT INTO `goods` VALUES (7, '宝宝白色衣服', 1, '1.7.png', 100.00, '宝宝白色衣服，舒服柔软白', '2019-08-30 10:11:35', 2);
INSERT INTO `goods` VALUES (8, '宝宝蓝色衣服', 1, '1.8.png', 100.00, '宝宝蓝色衣服，舒服柔软', '2019-08-30 10:12:13', 2);
INSERT INTO `goods` VALUES (9, '宝宝碗', 2, '2.1.png', 15.00, '宝宝吃饭碗，耐摔，安全', '2019-08-30 10:13:02', 2);
INSERT INTO `goods` VALUES (10, '宝宝奶瓶', 2, '2.2.png', 49.00, '宝宝奶瓶，采用食品级硅胶', '2019-08-30 10:31:09', 2);
INSERT INTO `goods` VALUES (11, '宝宝奶瓶2', 2, '2.3.png', 49.90, '宝宝奶瓶2，采用食品级硅胶', '2019-08-30 10:32:48', 2);
INSERT INTO `goods` VALUES (12, '摇床', 2, '2.4.png', 69.00, '宝宝睡觉摇床，睡的舒服', '2019-08-30 10:34:49', 2);
INSERT INTO `goods` VALUES (17, '儿童推车', 2, '2.5.png', 75.00, '儿童推车，推着宝宝到处玩', '2019-09-06 14:43:27', 2);
INSERT INTO `goods` VALUES (18, '家用儿童护栏', 2, '2.6.png', 80.00, '家用儿童护栏，有效防止宝宝摔倒', '2020-06-10 09:32:54', 1);
INSERT INTO `goods` VALUES (19, '儿童面霜', 3, '3.1.png', 40.00, '儿童面霜，保护宝宝幼嫩肌肤', '2020-06-25 09:33:02', 1);
INSERT INTO `goods` VALUES (20, '强生搽脸巾', 3, '3.2.png', 35.00, '强生脸巾，触手可得的柔软', '2020-06-11 09:33:07', 1);
INSERT INTO `goods` VALUES (21, '婴儿牛油果防晒霜', 3, '3.3.png', 79.00, '牛油果防晒霜，防晒一流', '2020-06-29 09:33:12', 1);
INSERT INTO `goods` VALUES (22, '强生护肤露', 3, '3.4.png', 89.00, '强生护肤露，保护肌肤', '2020-06-29 09:33:16', 1);
INSERT INTO `goods` VALUES (23, '宝宝沐浴露', 3, '3.5.png', 59.00, '宝宝专用沐浴露，无添加损伤肌肤成分', '2020-06-29 09:33:19', 1);
INSERT INTO `goods` VALUES (24, '芦荟霜', 3, '3.6.png', 69.00, '芦荟霜，持久保湿一整天', '2020-06-29 09:33:24', 1);
INSERT INTO `goods` VALUES (25, '\r\n儿童早教吉他', 4, '4.1.png', 39.00, '儿童早教吉他，音乐随处可得', '2020-06-29 09:33:27', 1);
INSERT INTO `goods` VALUES (26, '宝宝智力拼图', 4, '4.2.png', 30.00, '智力拼图，锻炼宝宝脑筋', '2020-06-29 09:33:30', 1);
INSERT INTO `goods` VALUES (27, '宝宝波浪鼓锤', 4, '4.3.png', 15.00, '波浪锤，到处敲也不会损伤物品哦', '2020-06-29 09:33:33', 1);
INSERT INTO `goods` VALUES (28, '儿童拨浪鼓', 4, '4.4.png', 19.00, '拨浪鼓，自己一个人玩的选择', '2020-06-29 09:33:36', 1);
INSERT INTO `goods` VALUES (29, '小赛车', 4, '4.5.png', 70.00, '小赛车，宝宝玩的开心', '2020-06-29 09:33:38', 1);
INSERT INTO `goods` VALUES (30, '遥控汽车', 4, '4.6.png', 190.00, '遥控小汽车', '2020-06-29 09:33:40', 1);
INSERT INTO `goods` VALUES (31, '薄脆小饼干', 5, '5.1.png', 45.00, '薄脆的小饼干，很好吃哦', '2020-06-29 09:33:43', 1);
INSERT INTO `goods` VALUES (32, '儿童奶酪棒', 5, '5.2.png', 35.00, '让宝宝拿着咬的奶酪棒', '2020-06-29 09:33:45', 1);
INSERT INTO `goods` VALUES (33, '雀巢能恩奶粉', 5, '5.3.png', 69.00, '能恩奶粉，宝宝爱喝，营养充分', '2020-06-29 09:33:47', 1);
INSERT INTO `goods` VALUES (34, '泰国香米饼', 5, '5.4.png', 35.00, '泰国香米制作米饼', '2020-06-29 09:33:49', 1);
INSERT INTO `goods` VALUES (35, '蓬松小面包', 5, '5.5.png', 35.00, '蓬松的小面包，入口即化', '2020-06-29 09:33:52', 1);
INSERT INTO `goods` VALUES (36, '有机鲜果酸奶', 5, '5.6.png', 49.00, '含水果营养，宝宝也能喝哦', '2020-06-29 09:33:55', 1);
INSERT INTO `goods` VALUES (37, '妈妈孕妇装', 6, '6.1.png', 165.00, '妈妈穿宽松的孕妇装', '2020-06-29 09:33:57', 1);
INSERT INTO `goods` VALUES (38, '背婴带', 6, '6.2.png', 70.00, '把宝宝随时背在身上', '2020-06-29 09:34:00', 1);
INSERT INTO `goods` VALUES (39, '妈咪包', 6, '6.3.png', 45.00, '容量大，带齐宝宝所需各种物品', '2020-06-29 09:34:02', 1);
INSERT INTO `goods` VALUES (40, '亲子学步带', 6, '6.4.png', 70.00, '亲子学步带，不怕摔倒', '2020-06-29 09:34:04', 1);
INSERT INTO `goods` VALUES (41, '孕妇安心枕蓝', 6, '6.5.png', 99.00, '孕妇专用人体工学枕头蓝色', '2020-06-29 09:34:06', 1);
INSERT INTO `goods` VALUES (42, '孕妇安心枕红', 6, '6.6.png', 99.00, '孕妇专用人体工学枕头红色', '2020-06-29 09:34:08', 1);
INSERT INTO `goods` VALUES (43, '黑灵芝沐浴露', 7, '7.1.png', 299.00, '灵芝沐浴露', '2020-06-29 09:34:11', 1);
INSERT INTO `goods` VALUES (44, '牛奶沐浴乳', 7, '7.2.png', 199.00, '牛奶成分沐浴乳，香一整天', '2020-06-29 09:34:14', 1);
INSERT INTO `goods` VALUES (45, 'aveeno护肤霜', 7, '7.3.png', 199.00, '护肤霜，持久护肤', '2020-06-29 09:34:16', 1);
INSERT INTO `goods` VALUES (46, '护肤山茶油', 7, '7.4.png', 299.00, '山茶油，长效保湿哦', '2020-06-29 09:34:18', 1);
INSERT INTO `goods` VALUES (47, '植物精油驱蚊贴', 7, '7.5.png', 45.00, '植物精油驱蚊，无异味，蚊虫无扰', '2020-06-29 09:34:21', 1);
INSERT INTO `goods` VALUES (48, '子初无味驱蚊液', 7, '7.6.png', 35.00, '驱蚊液，随手喷即可驱除蚊虫', '2020-06-29 09:34:24', 1);

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `typename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES (1, '儿童衣服');
INSERT INTO `goods_type` VALUES (2, '儿童用品');
INSERT INTO `goods_type` VALUES (3, '儿童护肤品');
INSERT INTO `goods_type` VALUES (4, '儿童玩具');
INSERT INTO `goods_type` VALUES (5, '儿童食品');
INSERT INTO `goods_type` VALUES (6, '妈妈用品');
INSERT INTO `goods_type` VALUES (7, '妈妈护肤品');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `imgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newsDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '1.jpg', '新西兰高质量乳铁蛋白 NEWMUK纽盾给出了答案', '2020-06-29 09:55:39');
INSERT INTO `news` VALUES (2, '2.jpg', '谁是了不起的营养食品免疫品牌？且看雅莱牛初乳', '2020-06-29 09:55:41');
INSERT INTO `news` VALUES (3, '3.jpg', '比蚊香安全，比蚊帐方便，你想要的全套靠谱驱蚊方式长这样', '2020-06-29 09:55:44');
INSERT INTO `news` VALUES (4, '4.jpg', '95后妈妈来了！她们的画像和消费观有何不同?', '2020-06-29 09:55:47');
INSERT INTO `news` VALUES (5, '5.jpg', '什么是叶黄素 叶黄素的作用及原理', '2020-06-29 09:55:49');
INSERT INTO `news` VALUES (6, '6.jpg', '儿童营养补充问题多，不如试试这个方法？', '2020-06-29 09:55:51');
INSERT INTO `news` VALUES (7, '7.jpg', '如何判断宝宝可能缺乏哪些维生素？', '2020-06-29 09:55:53');
INSERT INTO `news` VALUES (8, '8.jpg', '科学阐明孩子夏季补锌有多重要', '2020-06-29 09:55:55');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `orderid` int(50) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `userid` int(20) NULL DEFAULT NULL COMMENT '用户id',
  `total` decimal(10, 2) NULL DEFAULT NULL COMMENT '小计',
  `paytype` int(2) NULL DEFAULT NULL COMMENT '支付类型1、在线支付2、货到付款',
  `status` int(10) NULL DEFAULT NULL COMMENT '状态1未付款2、已付款',
  `shipname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流名称',
  `shipcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '订单创建时间',
  `closetime` datetime(0) NULL DEFAULT NULL COMMENT '订单关闭时间',
  `addressId` int(20) NULL DEFAULT NULL COMMENT '订单地址',
  `orderNo` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商户订单号',
  PRIMARY KEY (`orderid`) USING BTREE,
  INDEX `user_id`(`userid`) USING BTREE,
  CONSTRAINT `user_id` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 1, 15687.00, 1, 1, '菜鸟', '1010', '2019-09-10 11:22:14', '2019-09-18 11:22:24', 13, '201956153820915');
INSERT INTO `order` VALUES (2, 2, 1128.00, 1, 2, '顺丰', '46464', '2019-09-11 15:15:29', NULL, 12, '20195615382092');
INSERT INTO `order` VALUES (3, 1, 349.00, 2, 2, '中通', '498645468', '2019-09-12 15:16:11', NULL, 13, '20195615382093');
INSERT INTO `order` VALUES (4, 2, 4899.00, 3, 1, '百世', '4684546', '2019-09-18 15:18:17', NULL, 12, '20195615382094');

-- ----------------------------
-- Table structure for order_goods_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_goods_detail`;
CREATE TABLE `order_goods_detail`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `itemid` int(10) NULL DEFAULT NULL COMMENT '商品编号',
  `orderid` int(10) NULL DEFAULT NULL COMMENT '订单编号',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `num` int(10) NULL DEFAULT NULL COMMENT '数量',
  `total` decimal(10, 2) NULL DEFAULT NULL COMMENT '小计',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_id`(`orderid`) USING BTREE,
  INDEX `total`(`total`) USING BTREE,
  INDEX `goodsid_FK`(`itemid`) USING BTREE,
  CONSTRAINT `goodsid_FK` FOREIGN KEY (`itemid`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orderid_FK` FOREIGN KEY (`orderid`) REFERENCES `order` (`orderid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_goods_detail
-- ----------------------------
INSERT INTO `order_goods_detail` VALUES (1, 1, 1, 9999.00, 1, 9999.00);
INSERT INTO `order_goods_detail` VALUES (2, 2, 1, 5688.00, 1, 5688.00);
INSERT INTO `order_goods_detail` VALUES (3, 10, 3, 34.90, 10, 349.00);
INSERT INTO `order_goods_detail` VALUES (4, 11, 1, 49.90, 10, 499.00);
INSERT INTO `order_goods_detail` VALUES (5, 12, 1, 62.90, 10, 629.00);
INSERT INTO `order_goods_detail` VALUES (6, 4, 4, 4899.00, 1, 4899.00);

-- ----------------------------
-- Table structure for shopping_car
-- ----------------------------
DROP TABLE IF EXISTS `shopping_car`;
CREATE TABLE `shopping_car`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `goods_id` int(10) NULL DEFAULT NULL COMMENT '商品编号',
  `num` int(5) NULL DEFAULT NULL COMMENT '数量',
  `userid` int(10) NULL DEFAULT NULL COMMENT '用户id',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `shopcar_goodsid_FK`(`goods_id`) USING BTREE,
  INDEX `shopcar_userid_FK`(`userid`) USING BTREE,
  CONSTRAINT `shopcar_goodsid_FK` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopcar_userid_FK` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopping_car
-- ----------------------------
INSERT INTO `shopping_car` VALUES (1, 12, 3, 1, '2019-09-06 14:51:19');
INSERT INTO `shopping_car` VALUES (2, 11, 1, 1, '2019-09-06 14:51:40');
INSERT INTO `shopping_car` VALUES (3, 8, 2, 2, '2019-09-06 14:51:40');
INSERT INTO `shopping_car` VALUES (4, 10, 1, 1, '2019-09-06 15:51:40');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(96) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'xtd', '123', '13900000001');
INSERT INTO `user` VALUES (2, 'yy', '123', '13900000002');
INSERT INTO `user` VALUES (3, 'lff', '123', '13900000003');
INSERT INTO `user` VALUES (4, 'wly', '123', '13900000004');
INSERT INTO `user` VALUES (5, 'tzq', '123', '13900000005');
INSERT INTO `user` VALUES (6, 'scm', '123', '13900000006');
INSERT INTO `user` VALUES (7, 'aaa7', '123', '13900000007');

SET FOREIGN_KEY_CHECKS = 1;
