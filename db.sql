/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmn5138
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmn5138` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmn5138`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmn5138/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmn5138/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmn5138/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusskechengxinxi` */

DROP TABLE IF EXISTS `discusskechengxinxi`;

CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';

/*Data for the table `discusskechengxinxi` */

insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-12 14:30:49',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-12 14:30:49',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-12 14:30:49',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-12 14:30:49',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-12 14:30:49',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-12 14:30:49',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusskechengzuoye` */

DROP TABLE IF EXISTS `discusskechengzuoye`;

CREATE TABLE `discusskechengzuoye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='课程作业评论表';

/*Data for the table `discusskechengzuoye` */

insert  into `discusskechengzuoye`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-12 14:30:49',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-12 14:30:49',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-12 14:30:49',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-12 14:30:49',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-12 14:30:49',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-12 14:30:49',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='讨论中心';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (81,'2021-04-12 14:30:49','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-04-12 14:30:49','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-04-12 14:30:49','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-04-12 14:30:49','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-04-12 14:30:49','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-04-12 14:30:49','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (11,'2021-04-12 14:30:49','教师1','123456','教师姓名1','男','http://localhost:8080/ssmn5138/upload/jiaoshi_zhaopian1.jpg','职称1','13823888881','773890001@qq.com'),(12,'2021-04-12 14:30:49','教师2','123456','教师姓名2','男','http://localhost:8080/ssmn5138/upload/jiaoshi_zhaopian2.jpg','职称2','13823888882','773890002@qq.com'),(13,'2021-04-12 14:30:49','教师3','123456','教师姓名3','男','http://localhost:8080/ssmn5138/upload/jiaoshi_zhaopian3.jpg','职称3','13823888883','773890003@qq.com'),(14,'2021-04-12 14:30:49','教师4','123456','教师姓名4','男','http://localhost:8080/ssmn5138/upload/jiaoshi_zhaopian4.jpg','职称4','13823888884','773890004@qq.com'),(15,'2021-04-12 14:30:49','教师5','123456','教师姓名5','男','http://localhost:8080/ssmn5138/upload/jiaoshi_zhaopian5.jpg','职称5','13823888885','773890005@qq.com'),(16,'2021-04-12 14:30:49','教师6','123456','教师姓名6','男','http://localhost:8080/ssmn5138/upload/jiaoshi_zhaopian6.jpg','职称6','13823888886','773890006@qq.com');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kemu` varchar(200) NOT NULL COMMENT '科目',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `kejianziyuan` varchar(200) DEFAULT NULL COMMENT '课件资源',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kemu`,`kechengtupian`,`shipinmingcheng`,`kechengshipin`,`kechengxiangqing`,`kejianziyuan`,`jiaoshigonghao`,`jiaoshixingming`,`jiaoshiyouxiang`,`faburiqi`,`clicktime`,`clicknum`) values (41,'2021-04-12 14:30:49','课程名称1','科目1','http://localhost:8080/ssmn5138/upload/kechengxinxi_kechengtupian1.jpg','视频名称1','','课程详情1','','教师工号1','教师姓名1','773890001@qq.com','2021-04-12','2021-04-12 14:30:49',1),(42,'2021-04-12 14:30:49','课程名称2','科目2','http://localhost:8080/ssmn5138/upload/kechengxinxi_kechengtupian2.jpg','视频名称2','','课程详情2','','教师工号2','教师姓名2','773890002@qq.com','2021-04-12','2021-04-12 14:30:49',2),(43,'2021-04-12 14:30:49','课程名称3','科目3','http://localhost:8080/ssmn5138/upload/kechengxinxi_kechengtupian3.jpg','视频名称3','','课程详情3','','教师工号3','教师姓名3','773890003@qq.com','2021-04-12','2021-04-12 14:30:49',3),(44,'2021-04-12 14:30:49','课程名称4','科目4','http://localhost:8080/ssmn5138/upload/kechengxinxi_kechengtupian4.jpg','视频名称4','','课程详情4','','教师工号4','教师姓名4','773890004@qq.com','2021-04-12','2021-04-12 14:30:49',4),(45,'2021-04-12 14:30:49','课程名称5','科目5','http://localhost:8080/ssmn5138/upload/kechengxinxi_kechengtupian5.jpg','视频名称5','','课程详情5','','教师工号5','教师姓名5','773890005@qq.com','2021-04-12','2021-04-12 14:30:49',5),(46,'2021-04-12 14:30:49','课程名称6','科目6','http://localhost:8080/ssmn5138/upload/kechengxinxi_kechengtupian6.jpg','视频名称6','','课程详情6','','教师工号6','教师姓名6','773890006@qq.com','2021-04-12','2021-04-12 14:30:49',6);

/*Table structure for table `kechengzuoye` */

DROP TABLE IF EXISTS `kechengzuoye`;

CREATE TABLE `kechengzuoye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) NOT NULL COMMENT '作业名称',
  `kemu` varchar(200) NOT NULL COMMENT '科目',
  `zuoyetupian` varchar(200) DEFAULT NULL COMMENT '作业图片',
  `zuoyeyaoqiu` varchar(200) DEFAULT NULL COMMENT '作业要求',
  `zuoyeneirong` longtext COMMENT '作业内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `zuoyefujian` varchar(200) DEFAULT NULL COMMENT '作业附件',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='课程作业';

/*Data for the table `kechengzuoye` */

insert  into `kechengzuoye`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`zuoyetupian`,`zuoyeyaoqiu`,`zuoyeneirong`,`faburiqi`,`zuoyefujian`,`jiaoshigonghao`,`jiaoshixingming`,`jiaoshiyouxiang`) values (51,'2021-04-12 14:30:49','作业名称1','科目1','http://localhost:8080/ssmn5138/upload/kechengzuoye_zuoyetupian1.jpg','作业要求1','作业内容1','2021-04-12','','教师工号1','教师姓名1','773890001@qq.com'),(52,'2021-04-12 14:30:49','作业名称2','科目2','http://localhost:8080/ssmn5138/upload/kechengzuoye_zuoyetupian2.jpg','作业要求2','作业内容2','2021-04-12','','教师工号2','教师姓名2','773890002@qq.com'),(53,'2021-04-12 14:30:49','作业名称3','科目3','http://localhost:8080/ssmn5138/upload/kechengzuoye_zuoyetupian3.jpg','作业要求3','作业内容3','2021-04-12','','教师工号3','教师姓名3','773890003@qq.com'),(54,'2021-04-12 14:30:49','作业名称4','科目4','http://localhost:8080/ssmn5138/upload/kechengzuoye_zuoyetupian4.jpg','作业要求4','作业内容4','2021-04-12','','教师工号4','教师姓名4','773890004@qq.com'),(55,'2021-04-12 14:30:49','作业名称5','科目5','http://localhost:8080/ssmn5138/upload/kechengzuoye_zuoyetupian5.jpg','作业要求5','作业内容5','2021-04-12','','教师工号5','教师姓名5','773890005@qq.com'),(56,'2021-04-12 14:30:49','作业名称6','科目6','http://localhost:8080/ssmn5138/upload/kechengzuoye_zuoyetupian6.jpg','作业要求6','作业内容6','2021-04-12','','教师工号6','教师姓名6','773890006@qq.com');

/*Table structure for table `kemu` */

DROP TABLE IF EXISTS `kemu`;

CREATE TABLE `kemu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kemu` varchar(200) NOT NULL COMMENT '科目',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kemu` (`kemu`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='科目';

/*Data for the table `kemu` */

insert  into `kemu`(`id`,`addtime`,`kemu`) values (21,'2021-04-12 14:30:49','科目1'),(22,'2021-04-12 14:30:49','科目2'),(23,'2021-04-12 14:30:49','科目3'),(24,'2021-04-12 14:30:49','科目4'),(25,'2021-04-12 14:30:49','科目5'),(26,'2021-04-12 14:30:49','科目6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-12 14:30:49','标题1','简介1','http://localhost:8080/ssmn5138/upload/news_picture1.jpg','内容1'),(102,'2021-04-12 14:30:49','标题2','简介2','http://localhost:8080/ssmn5138/upload/news_picture2.jpg','内容2'),(103,'2021-04-12 14:30:49','标题3','简介3','http://localhost:8080/ssmn5138/upload/news_picture3.jpg','内容3'),(104,'2021-04-12 14:30:49','标题4','简介4','http://localhost:8080/ssmn5138/upload/news_picture4.jpg','内容4'),(105,'2021-04-12 14:30:49','标题5','简介5','http://localhost:8080/ssmn5138/upload/news_picture5.jpg','内容5'),(106,'2021-04-12 14:30:49','标题6','简介6','http://localhost:8080/ssmn5138/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-12 14:30:49');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (31,'2021-04-12 14:30:49','学生1','123456','学生姓名1','男','http://localhost:8080/ssmn5138/upload/xuesheng_touxiang1.jpg','13823888881','773890001@qq.com'),(32,'2021-04-12 14:30:49','学生2','123456','学生姓名2','男','http://localhost:8080/ssmn5138/upload/xuesheng_touxiang2.jpg','13823888882','773890002@qq.com'),(33,'2021-04-12 14:30:49','学生3','123456','学生姓名3','男','http://localhost:8080/ssmn5138/upload/xuesheng_touxiang3.jpg','13823888883','773890003@qq.com'),(34,'2021-04-12 14:30:49','学生4','123456','学生姓名4','男','http://localhost:8080/ssmn5138/upload/xuesheng_touxiang4.jpg','13823888884','773890004@qq.com'),(35,'2021-04-12 14:30:49','学生5','123456','学生姓名5','男','http://localhost:8080/ssmn5138/upload/xuesheng_touxiang5.jpg','13823888885','773890005@qq.com'),(36,'2021-04-12 14:30:49','学生6','123456','学生姓名6','男','http://localhost:8080/ssmn5138/upload/xuesheng_touxiang6.jpg','13823888886','773890006@qq.com');

/*Table structure for table `xueshengchengji` */

DROP TABLE IF EXISTS `xueshengchengji`;

CREATE TABLE `xueshengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `zuoyetupian` varchar(200) DEFAULT NULL COMMENT '作业图片',
  `xueshengchengji` int(11) NOT NULL COMMENT '学生成绩',
  `pingji` varchar(200) NOT NULL COMMENT '评级',
  `pingyu` longtext NOT NULL COMMENT '评语',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='学生成绩';

/*Data for the table `xueshengchengji` */

insert  into `xueshengchengji`(`id`,`addtime`,`zuoyemingcheng`,`zuoyetupian`,`xueshengchengji`,`pingji`,`pingyu`,`xuehao`,`xueshengxingming`,`jiaoshigonghao`,`jiaoshixingming`) values (71,'2021-04-12 14:30:49','作业名称1','http://localhost:8080/ssmn5138/upload/xueshengchengji_zuoyetupian1.jpg',1,'优秀','评语1','学号1','学生姓名1','教师工号1','教师姓名1'),(72,'2021-04-12 14:30:49','作业名称2','http://localhost:8080/ssmn5138/upload/xueshengchengji_zuoyetupian2.jpg',2,'优秀','评语2','学号2','学生姓名2','教师工号2','教师姓名2'),(73,'2021-04-12 14:30:49','作业名称3','http://localhost:8080/ssmn5138/upload/xueshengchengji_zuoyetupian3.jpg',3,'优秀','评语3','学号3','学生姓名3','教师工号3','教师姓名3'),(74,'2021-04-12 14:30:49','作业名称4','http://localhost:8080/ssmn5138/upload/xueshengchengji_zuoyetupian4.jpg',4,'优秀','评语4','学号4','学生姓名4','教师工号4','教师姓名4'),(75,'2021-04-12 14:30:49','作业名称5','http://localhost:8080/ssmn5138/upload/xueshengchengji_zuoyetupian5.jpg',5,'优秀','评语5','学号5','学生姓名5','教师工号5','教师姓名5'),(76,'2021-04-12 14:30:49','作业名称6','http://localhost:8080/ssmn5138/upload/xueshengchengji_zuoyetupian6.jpg',6,'优秀','评语6','学号6','学生姓名6','教师工号6','教师姓名6');

/*Table structure for table `xueshengzuoye` */

DROP TABLE IF EXISTS `xueshengzuoye`;

CREATE TABLE `xueshengzuoye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `zuoyetupian` varchar(200) DEFAULT NULL COMMENT '作业图片',
  `zuoyeyaoqiu` varchar(200) DEFAULT NULL COMMENT '作业要求',
  `xueshengzuoda` longtext COMMENT '学生作答',
  `fujianxinxi` varchar(200) DEFAULT NULL COMMENT '附件信息',
  `tijiaoriqi` date DEFAULT NULL COMMENT '提交日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='学生作业';

/*Data for the table `xueshengzuoye` */

insert  into `xueshengzuoye`(`id`,`addtime`,`kemu`,`zuoyemingcheng`,`zuoyetupian`,`zuoyeyaoqiu`,`xueshengzuoda`,`fujianxinxi`,`tijiaoriqi`,`jiaoshigonghao`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (61,'2021-04-12 14:30:49','科目1','作业名称1','http://localhost:8080/ssmn5138/upload/xueshengzuoye_zuoyetupian1.jpg','作业要求1','学生作答1','','2021-04-12','教师工号1','学号1','学生姓名1','是',''),(62,'2021-04-12 14:30:49','科目2','作业名称2','http://localhost:8080/ssmn5138/upload/xueshengzuoye_zuoyetupian2.jpg','作业要求2','学生作答2','','2021-04-12','教师工号2','学号2','学生姓名2','是',''),(63,'2021-04-12 14:30:49','科目3','作业名称3','http://localhost:8080/ssmn5138/upload/xueshengzuoye_zuoyetupian3.jpg','作业要求3','学生作答3','','2021-04-12','教师工号3','学号3','学生姓名3','是',''),(64,'2021-04-12 14:30:49','科目4','作业名称4','http://localhost:8080/ssmn5138/upload/xueshengzuoye_zuoyetupian4.jpg','作业要求4','学生作答4','','2021-04-12','教师工号4','学号4','学生姓名4','是',''),(65,'2021-04-12 14:30:49','科目5','作业名称5','http://localhost:8080/ssmn5138/upload/xueshengzuoye_zuoyetupian5.jpg','作业要求5','学生作答5','','2021-04-12','教师工号5','学号5','学生姓名5','是',''),(66,'2021-04-12 14:30:49','科目6','作业名称6','http://localhost:8080/ssmn5138/upload/xueshengzuoye_zuoyetupian6.jpg','作业要求6','学生作答6','','2021-04-12','教师工号6','学号6','学生姓名6','是','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
