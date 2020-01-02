/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : axz

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-01-02 17:43:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '要闻');
INSERT INTO `category` VALUES ('2', '政治');
INSERT INTO `category` VALUES ('3', '经济');
INSERT INTO `category` VALUES ('4', '军事');
INSERT INTO `category` VALUES ('5', '人文');
INSERT INTO `category` VALUES ('6', '科技');

-- ----------------------------
-- Table structure for get_news
-- ----------------------------
DROP TABLE IF EXISTS `get_news`;
CREATE TABLE `get_news` (
  `category_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(50) NOT NULL,
  `html_content` mediumtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `hot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`news_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `get_news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of get_news
-- ----------------------------
INSERT INTO `get_news` VALUES ('1', '1', '2019-12-05 20:56:42', '韩国瑜拒绝“统一”的和平宣言 “台独”偷笑', '       台媒报道，中国国民党2020候选人韩国瑜13日将赴离岛金门拜票，并搭船至烈屿（小金门）发表攸关两岸关系的《和平宣言》。由于金门的地理位置在台湾与大陆之间，在两岸关系上的地位举足轻重，韩国瑜此行备受瞩目。\r\n\r\n今年3月，韩国瑜访问厦门，抚今追昔曾感慨战争没有赢家，和平没有输家，相信2300万台湾同胞一定要能深刻了解，用尽一切办法，让两岸和平往来。\r\n\r\n曾经的金门历经战火硝烟，当年古宁头一役，超过4000解放军阵亡，超过5000人被俘，之后八二三炮战，历时 44天，总共落下炮弹47万余发，国军死伤千人，金门成为1949年后，“中华民国”境内唯一遭受解放军猛烈攻击的地方。\r\n\r\n然而，一甲子过去，金门却成了沟通两岸的桥梁与纽带，小三通由此起航，当年的战地前线，现在熙来人往间听到最多的是大陆口音，“匪区”人民特意来看“三民主义统一中国”的照壁，当五星旗与青天白日满地红旗可相映同辉，过去的对立紧张已被繁华喧闹淹没。\r\n\r\n其实，没有台湾政治人物的宣言，金门已和平了40年，从1979年大陆率先发出告台湾同胞书以后，金厦海面便是潮平两岸阔风正一帆悬。不久前一家台媒社论曾写，“武统对同胞心灵契合毫无保住，反而进一步疏远彼此的心理距离”，在金门却成了最具代表的反例！\r\n\r\n究其原因，当年国共在此厮杀，是一个中国之下的制度之争，正因为是兄弟事、家务事，才有了日后两门同开两马先行，才有惠台让利三通四流，劫波渡尽终能一泯恩仇！所以，不是“武统”带来了心理的距离，而是在台湾本岛，有人先先认同了叛离，才把“武统”和“一国两制”当做求“独”理由，成为两岸和平的威胁与隐患！\r\n\r\n韩国瑜前不久曾说，共产党无时无刻不想并吞中华民国，以此论之，民进党修订国安五法，中共代理人法，国民党不是更该支持，又为何要说此举会破坏两岸和平？韩国瑜说，反对一国两制并非民进党的专利，然而，三十年前，国民党反对是要矢志统一追求一国一制，现在又到底是反两制还是反一国呢？\r\n\r\n其实，和平的大门早已打开，大陆四十年前就已经向同胞招手，反而台湾自李登辉开始明知大势难阻，却拂逆潮流不愿开大门走大路？而面对有人选择求去，自诩捍卫“中华民国”宪法的中国国民党，依其固有之领土疆域，不仅不抗独力辩，反要责怪北京，既然台独是因、武统是果，如此做法岂不是本末倒置？\r\n\r\n韩国瑜要发表和平宣言，但比宣言更重要的是指出和平的方向，当107年前为民族复兴的中国招牌沦为台独去中求独的遮羞布，面对捍卫“中华民国”的话语权已经被民进党成功窃夺，若仍把保台视为并吞， 甚至对台湾社会趋独拒统的大势毫无警觉，自我麻痹幻想“维持现状”，待“中华民国”立国精神与价值已被肢解于无形，面对大陆只剩捍卫国家主权与领土完整一途，又该如何善政？\r\n\r\n韩国瑜应明辨，四十年过去，现在比金门更适合宣扬和平的地方在台湾本岛，在民进党党部、在喜乐岛联盟，在台湾民政府，在凯达格兰大道前的总统府，如今，真正保卫ROC余气的是中国共产党，那个被修法列入敌人的8000万人组织，要发表和平宣言，何必远到中国福建省金门县，他该调转回头让台湾省重光，届时两岸的永续和平，虽不中亦不远矣。\r\n\r\n', null, '0');

-- ----------------------------
-- Table structure for news_comment
-- ----------------------------
DROP TABLE IF EXISTS `news_comment`;
CREATE TABLE `news_comment` (
  `comment_id` int(20) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '-1',
  `reply_id` int(11) NOT NULL DEFAULT '-1',
  `parent_id` int(11) DEFAULT '0',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approve` int(11) DEFAULT '0',
  `disapprove` int(11) DEFAULT '0',
  `content` varchar(20000) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `news_id` (`news_id`),
  KEY `user_id` (`user_id`),
  KEY `reply_id` (`reply_id`),
  CONSTRAINT `news_comment_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `get_news` (`news_id`),
  CONSTRAINT `news_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `news_comment_ibfk_3` FOREIGN KEY (`reply_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_comment
-- ----------------------------
INSERT INTO `news_comment` VALUES ('141', '1', '104', '-1', '0', '2019-12-11 17:16:32', '0', '0', '瓜子，泡面，矿泉水');
INSERT INTO `news_comment` VALUES ('142', '1', '105', '104', '141', '2019-12-11 17:16:58', '0', '0', '来包瓜子');
INSERT INTO `news_comment` VALUES ('143', '1', '106', '104', '141', '2019-12-11 17:17:51', '0', '0', '来瓶矿泉水');
INSERT INTO `news_comment` VALUES ('144', '1', '104', '105', '141', '2019-12-11 17:18:11', '0', '0', '三块');
INSERT INTO `news_comment` VALUES ('145', '1', '-1', '-1', '0', '2019-12-11 18:22:27', '0', '0', '特殊');
INSERT INTO `news_comment` VALUES ('146', '1', '-1', '-1', '145', '2019-12-11 18:22:31', '0', '0', '法法');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) NOT NULL,
  `user_name` varchar(128) NOT NULL,
  `passwd` varchar(128) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userimg` varchar(60) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `privately_owned` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `NAME` (`user_name`),
  UNIQUE KEY `name_2` (`user_name`),
  UNIQUE KEY `NAME_3` (`user_name`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_name_2` (`user_name`),
  UNIQUE KEY `passwd` (`passwd`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('-1', '', '匿名用户', '', '2019-12-11 10:41:52', null, null, '0');
INSERT INTO `user` VALUES ('104', '1', '列车销售员', 'c4ca4238a0b923820dcc509a6f75849b', '2019-12-11 10:47:54', null, '1', '0');
INSERT INTO `user` VALUES ('105', '2', '乘客1', 'c81e728d9d4c2f636f067f89cc14862c', '2019-12-11 10:48:28', null, '2', '0');
INSERT INTO `user` VALUES ('106', '3', '乘客2', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2019-12-11 11:02:39', null, '3', '0');
INSERT INTO `user` VALUES ('107', '4', '乘客3', 'a87ff679a2f3e71d9181a67b7542122c', '2019-12-11 11:02:50', null, '4', '0');
