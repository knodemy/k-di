/* To create table mdl_authorize_cardcredential to store the Authorize.net Customer details to perform transaction */
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

/* To create table mdl_authourize_student_mins to store the details of the lesson durations they are purchasing */
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

/* To create table mdl_enrol_activeenrol_list to track the course enrolment details of the user */
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

/* To create table mdl_enrol_activerecurring_list to track the recurring transactions for the active enrol list */
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

/* To create table mdl_enrol_authorize to store the Authorize.net Payment Transaction details */
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

/* To create table mdl_knouser_allocated_mins to track the course duration for the enrolled lesson */
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

--
-- Table structure for table `mdl_enrol_authorize_refunds`
--

CREATE TABLE IF NOT EXISTS `mdl_enrol_authorize_refunds` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `orderid` bigint(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `amount` varchar(10) NOT NULL DEFAULT '',
  `transid` bigint(20) DEFAULT '0',
  `settletime` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mdl_enroauthrefu_tra_ix` (`transid`),
  KEY `mdl_enroauthrefu_ord_ix` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Authorize.net refunds' AUTO_INCREMENT=1 ;


--
-- Dumping data for table `mdl_capabilities`
--

INSERT INTO `mdl_capabilities` (`name`, `captype`, `contextlevel`, `component`, `riskbitmask`) VALUES
('enrol/authorize:config', 'write', 50, 'enrol_authorize', 0),
('enrol/authorize:manage', 'write', 50, 'enrol_authorize', 0),
('enrol/authorize:unenrol', 'write', 50, 'enrol_authorize', 0),
('enrol/authorize:unenrolself', 'write', 50, 'enrol_authorize', 0),
('enrol/authorize:managepayments', 'write', 10, 'enrol_authorize', 8),
('enrol/authorize:uploadcsv', 'write', 10, 'enrol_authorize', 4);

--
-- Dumping data for table  `mdl_message_providers`
--

INSERT INTO `mdl_message_providers` (`name`, `component`, `capability`) VALUES
('authorize_enrolment', 'enrol_authorize', NULL);


--
-- Dumping data for table  `mdl_role_capabilities`
--

INSERT INTO `mdl_role_capabilities` (`contextid`, `roleid`, `capability`, `permission`, `timemodified`, `modifierid`) VALUES
(1, 1, 'enrol/authorize:config', 1, 1426825154, 2),
(1, 1, 'enrol/authorize:manage', 1, 1426825154, 2),
(1, 3, 'enrol/authorize:manage', 1, 1426825154, 2),
(1, 1, 'enrol/authorize:unenrol', 1, 1426825154, 2),
(1, 1, 'enrol/authorize:managepayments', 1, 1426825154, 2),
(1, 1, 'enrol/authorize:uploadcsv', 1, 1426825154, 2);


