CREATE TABLE IF NOT EXISTS `mdl_authorize_cardcredential` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` bigint(100) NOT NULL,
  `profileid` bigint(100) NOT NULL,
  `paymentid` bigint(100) NOT NULL,
  `details` varchar(200) DEFAULT NULL,
  `status` int(10) NOT NULL,
  `timecreated` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `mdl_authourize_student_mins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL,
  `coursename` varchar(50) DEFAULT NULL,
  `reference_id` bigint(20) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `initial_minutes` int(11) DEFAULT NULL,
  `total_minutes` int(11) DEFAULT NULL,
  `packagename` varchar(100) DEFAULT NULL,
  `timecreated` int(11) DEFAULT NULL,
  `timemodified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `mdl_enrol_activeenrol_list` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `paymentmethod` varchar(50) NOT NULL DEFAULT 'cc',
  `ccname` varchar(255) NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `instanceid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `transid` bigint(20) NOT NULL DEFAULT '0',
  `status` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `settletime` bigint(10) NOT NULL DEFAULT '0',
  `amount` varchar(10) NOT NULL DEFAULT '',
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `itemname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Holds all known information about Active enrol authorize.net transactions' AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `mdl_enrol_activerecurring_list` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `paymentmethod` varchar(30) NOT NULL DEFAULT 'cc',
  `startdate` date NOT NULL,
  `ccname` varchar(255) NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `instanceid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `subscribeid` bigint(20) NOT NULL DEFAULT '0',
  `status` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `settletime` bigint(10) NOT NULL DEFAULT '0',
  `amount` varchar(10) NOT NULL DEFAULT '',
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `itemname` varchar(200) NOT NULL DEFAULT 'None',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Holds' AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `mdl_enrol_authorize` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `paymentmethod` varchar(50) NOT NULL DEFAULT 'cc',
  `refundinfo` bigint(30) NOT NULL DEFAULT '0',
  `ccname` varchar(255) NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `instanceid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `transid` bigint(20) NOT NULL DEFAULT '0',
  `status` bigint(10) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `settletime` bigint(10) NOT NULL DEFAULT '0',
  `amount` varchar(10) NOT NULL DEFAULT '',
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `itemname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroauth_cou_ix` (`courseid`),
  KEY `mdl_enroauth_use_ix` (`userid`),
  KEY `mdl_enroauth_sta_ix` (`status`),
  KEY `mdl_enroauth_tra_ix` (`transid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Holds all known information about authorize.net transactions' AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `mdl_knouser_allocated_mins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `allocated_minutes` int(11) DEFAULT NULL,
  `scheduled_minutes` int(11) DEFAULT NULL,
  `inactive_completed_mins` int(11) DEFAULT NULL,
  `active_mins` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `timecreated` int(11) DEFAULT NULL,
  `allocate_timemodified` int(11) DEFAULT NULL,
  `scheduled_timemodified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


UPDATE `mdl_paypal_package` SET `duration` = '15' WHERE `mdl_paypal_package`.`id` =1;
UPDATE `mdl_paypal_package` SET `duration` = '30' WHERE `mdl_paypal_package`.`id` =2;
UPDATE `mdl_paypal_package` SET `duration` = '60' WHERE `mdl_paypal_package`.`id` =3;
UPDATE `mdl_paypal_package` SET `duration` = '120' WHERE `mdl_paypal_package`.`id` =4;
UPDATE `mdl_paypal_package` SET `name` ='Code Camp',`description` = 'Duration 8 Hours',`course_name` = 'Code Camp',`cost` ='40',`duration` = '8',`max_students` ='1' WHERE `mdl_paypal_package`.`id` =5;
UPDATE `mdl_paypal_package` SET `name` ='Girls Code Camp',`description` = 'Duration 6 Hours',`course_name` = 'Girls Code Camp',`cost` ='249',`duration` = '8' WHERE `mdl_paypal_package`.`id` =6;
UPDATE `mdl_paypal_package` SET `status`='0' WHERE `mdl_paypal_package`.`id` =7;
UPDATE `mdl_paypal_package` SET `status`='0' WHERE `mdl_paypal_package`.`id` =8;