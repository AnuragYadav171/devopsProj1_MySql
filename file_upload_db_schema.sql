DROP SCHEMA IF EXISTS `file_upload_db`;
CREATE SCHEMA `file_upload_db`;
USE `file_upload_db` ;

DROP TABLE IF EXISTS `file_upload`;

CREATE TABLE `file_upload` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(100) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `file_upload`(`file_name`,`path`,`status`) VALUES('testAnuragFile','uploadsPath',0)