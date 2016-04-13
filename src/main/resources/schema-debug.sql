-- --------------------------------------------------------
-- 主机:                           192.168.57.176
-- 服务器版本:                        5.5.30 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 auto_boss_rate 的数据库结构
DROP DATABASE IF EXISTS `auto_boss_rate`;
CREATE DATABASE IF NOT EXISTS `auto_boss_rate` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `auto_boss_rate`;


-- 导出  表 auto_boss_rate.t_area 结构
DROP TABLE IF EXISTS `t_area`;
CREATE TABLE IF NOT EXISTS `t_area` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `creator` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modifier` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 auto_boss_rate.t_flow 结构
DROP TABLE IF EXISTS `t_flow`;
CREATE TABLE IF NOT EXISTS `t_flow` (
  `id` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `operator_area_id` varchar(32) DEFAULT NULL,
  `creator` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modifier` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='加油包';

-- 数据导出被取消选择。


-- 导出  表 auto_boss_rate.t_flow_pool 结构
DROP TABLE IF EXISTS `t_flow_pool`;
CREATE TABLE IF NOT EXISTS `t_flow_pool` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `creator` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modifier` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 auto_boss_rate.t_operator 结构
DROP TABLE IF EXISTS `t_operator`;
CREATE TABLE IF NOT EXISTS `t_operator` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `creator` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modifier` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='运营商';

-- 数据导出被取消选择。


-- 导出  表 auto_boss_rate.t_operator_area 结构
DROP TABLE IF EXISTS `t_operator_area`;
CREATE TABLE IF NOT EXISTS `t_operator_area` (
  `id` varchar(32) NOT NULL,
  `area_id` varchar(32) DEFAULT NULL,
  `operator_id` varchar(32) DEFAULT NULL,
  `creator` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modifier` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 auto_boss_rate.t_package 结构
DROP TABLE IF EXISTS `t_package`;
CREATE TABLE IF NOT EXISTS `t_package` (
  `id` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `over_price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `over_discount` decimal(10,2) DEFAULT NULL,
  `operator_area_id` varchar(32) DEFAULT NULL,
  `creator` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modifier` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 auto_boss_rate.t_user_his 结构
DROP TABLE IF EXISTS `t_user_his`;
CREATE TABLE IF NOT EXISTS `t_user_his` (
  `id` varchar(50) NOT NULL,
  `size` varchar(50) DEFAULT NULL,
  `creator` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modifier` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  视图 auto_boss_rate.v_operator_area 结构
DROP VIEW IF EXISTS `v_operator_area`;
-- 创建临时表以解决视图依赖性错误
CREATE TABLE `v_operator_area` (
	`id` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`operator_id` VARCHAR(32) NULL COLLATE 'utf8_general_ci',
	`area_id` VARCHAR(32) NULL COLLATE 'utf8_general_ci',
	`operator` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`area` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`create_time` DATETIME NULL COMMENT '创建时间',
	`modified_time` DATETIME NULL COMMENT '修改时间'
) ENGINE=MyISAM;


-- 导出  视图 auto_boss_rate.v_operator_area 结构
DROP VIEW IF EXISTS `v_operator_area`;
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `v_operator_area`;
CREATE ALGORITHM=UNDEFINED DEFINER=`iflytek`@`%` SQL SECURITY DEFINER VIEW `v_operator_area` AS select `oa`.`id` AS `id`,`oa`.`operator_id` AS `operator_id`,`oa`.`area_id` AS `area_id`,`o`.`name` AS `operator`,`a`.`name` AS `area`,`oa`.`create_time` AS `create_time`,`oa`.`modified_time` AS `modified_time` from ((`t_operator_area` `oa` left join `t_operator` `o` on((`oa`.`operator_id` = `o`.`id`))) left join `t_area` `a` on((`oa`.`area_id` = `a`.`id`)));
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
