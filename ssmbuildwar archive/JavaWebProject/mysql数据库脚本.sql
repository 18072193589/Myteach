-- phpMyAdmin SQL Dump
-- version 3.0.1.1
-- http://www.phpmyadmin.net
--
-- �������汾: 5.1.29
-- PHP �汾: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- --------------------------------------------------------

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a', 'a'); 

CREATE TABLE IF NOT EXISTS `t_userInfo` (
  `user_name` varchar(30)  NOT NULL COMMENT 'user_name',
  `password` varchar(30)  NOT NULL COMMENT '��¼����',
  `name` varchar(20)  NOT NULL COMMENT '����',
  `gender` varchar(4)  NOT NULL COMMENT '�Ա�',
  `birthDate` varchar(20)  NULL COMMENT '��������',
  `userPhoto` varchar(60)  NOT NULL COMMENT 'ѧ����Ƭ',
  `xl` varchar(20)  NOT NULL COMMENT 'ѧ��',
  `telephone` varchar(20)  NOT NULL COMMENT '��ϵ�绰',
  `email` varchar(50)  NOT NULL COMMENT '����',
  `address` varchar(80)  NULL COMMENT '��ͥ��ַ',
  `jianliFile` varchar(60)  NOT NULL COMMENT '�����ļ�',
  `smrzzl` varchar(60)  NOT NULL COMMENT 'ʵ����֤����',
  `shzt` varchar(20)  NOT NULL COMMENT '���״̬',
  `regTime` varchar(20)  NULL COMMENT 'ע��ʱ��',
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `t_company` (
  `companyUserName` varchar(30)  NOT NULL COMMENT 'companyUserName',
  `password` varchar(20)  NOT NULL COMMENT '��¼����',
  `qyjb` varchar(20)  NOT NULL COMMENT '���ü���',
  `companyName` varchar(20)  NOT NULL COMMENT '��ҵ����',
  `gszch` varchar(20)  NOT NULL COMMENT '����ע���',
  `yyzz` varchar(60)  NOT NULL COMMENT 'Ӫҵִ��',
  `gsxz` varchar(20)  NOT NULL COMMENT '��˾����',
  `gsgm` varchar(20)  NOT NULL COMMENT '��˾��ģ',
  `gghy` varchar(20)  NOT NULL COMMENT '��˾��ҵ',
  `lxr` varchar(20)  NOT NULL COMMENT '��ϵ��',
  `lxdh` varchar(20)  NOT NULL COMMENT '��ϵ�绰',
  `companyDesc` varchar(8000)  NOT NULL COMMENT '��˾����',
  `address` varchar(80)  NOT NULL COMMENT '��˾��ַ',
  `shzt` varchar(20)  NOT NULL COMMENT '���״̬',
  PRIMARY KEY (`companyUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `t_jobType` (
  `jobTypeId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ְλ����id',
  `jobTypeName` varchar(20)  NOT NULL COMMENT 'ְλ�������',
  `jobTypeDesc` varchar(800)  NOT NULL COMMENT 'ְλ�������',
  PRIMARY KEY (`jobTypeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_job` (
  `jobId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ְλid',
  `jobTypeObj` int(11) NOT NULL COMMENT 'ְλ���',
  `jobName` varchar(40)  NOT NULL COMMENT 'ְλ����',
  `jobDesc` varchar(8000)  NOT NULL COMMENT 'ְλ����',
  `salary` varchar(50)  NOT NULL COMMENT '����н��',
  `zprs` int(11) NOT NULL COMMENT '��Ƹ����',
  `xlyq` varchar(20)  NOT NULL COMMENT 'ѧ��Ҫ��',
  `yxqx` varchar(30)  NOT NULL COMMENT '��Ч����',
  `gzqy` varchar(20)  NOT NULL COMMENT '��������',
  `gzdz` varchar(80)  NOT NULL COMMENT '������ַ',
  `viewNum` int(11) NOT NULL COMMENT '�������',
  `companyObj` varchar(30)  NOT NULL COMMENT '������ҵ',
  `addTime` varchar(20)  NULL COMMENT '����ʱ��',
  PRIMARY KEY (`jobId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_delivery` (
  `deliveryId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Ͷ��id',
  `jobObj` int(11) NOT NULL COMMENT 'ӦƸְλ',
  `userObj` varchar(30)  NOT NULL COMMENT 'ӦƸ��',
  `deliveryTime` varchar(20)  NULL COMMENT 'Ͷ��ʱ��',
  `handleTime` varchar(20)  NULL COMMENT '����ʱ��',
  `clzt` varchar(20)  NOT NULL COMMENT '����״̬',
  `tzxx` varchar(800)  NOT NULL COMMENT '֪ͨ��Ϣ',
  `gzpj` varchar(500)  NOT NULL COMMENT '��������',
  PRIMARY KEY (`deliveryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_jobRecord` (
  `recordId` int(11) NOT NULL AUTO_INCREMENT COMMENT '��¼id',
  `title` varchar(60)  NOT NULL COMMENT '����',
  `content` varchar(8000)  NOT NULL COMMENT '����',
  `userObj` varchar(30)  NOT NULL COMMENT '��¼��',
  `recordDate` varchar(20)  NULL COMMENT '��¼ʱ��',
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_leaveword` (
  `leaveWordId` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `leaveTitle` varchar(80)  NOT NULL COMMENT '���Ա���',
  `leaveContent` varchar(2000)  NOT NULL COMMENT '��������',
  `userObj` varchar(30)  NOT NULL COMMENT '������',
  `leaveTime` varchar(20)  NULL COMMENT '����ʱ��',
  `replyContent` varchar(1000)  NULL COMMENT '����ظ�',
  `replyTime` varchar(20)  NULL COMMENT '�ظ�ʱ��',
  PRIMARY KEY (`leaveWordId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_notice` (
  `noticeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `title` varchar(80)  NOT NULL COMMENT '����',
  `content` varchar(5000)  NOT NULL COMMENT '��������',
  `publishDate` varchar(20)  NULL COMMENT '����ʱ��',
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_webLink` (
  `linkId` int(11) NOT NULL AUTO_INCREMENT COMMENT '��¼id',
  `webName` varchar(50)  NOT NULL COMMENT '��վ����',
  `webLogo` varchar(60)  NOT NULL COMMENT '��վLogo',
  `webAddress` varchar(80)  NOT NULL COMMENT '��վ��ַ',
  PRIMARY KEY (`linkId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

ALTER TABLE t_job ADD CONSTRAINT FOREIGN KEY (jobTypeObj) REFERENCES t_jobType(jobTypeId);
ALTER TABLE t_job ADD CONSTRAINT FOREIGN KEY (companyObj) REFERENCES t_company(companyUserName);
ALTER TABLE t_delivery ADD CONSTRAINT FOREIGN KEY (jobObj) REFERENCES t_job(jobId);
ALTER TABLE t_delivery ADD CONSTRAINT FOREIGN KEY (userObj) REFERENCES t_userInfo(user_name);
ALTER TABLE t_jobRecord ADD CONSTRAINT FOREIGN KEY (userObj) REFERENCES t_userInfo(user_name);
ALTER TABLE t_leaveword ADD CONSTRAINT FOREIGN KEY (userObj) REFERENCES t_userInfo(user_name);


