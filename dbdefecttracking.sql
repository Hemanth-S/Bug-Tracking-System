/*
MySQL Data Transfer
Source Host: localhost
Source Database: dbdefecttracking
Target Host: localhost
Target Database: dbdefecttracking
Date: 12/17/2010 2:29:04 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for tbldefect
-- ----------------------------
CREATE TABLE `tbldefect` (
  `DEFECTID` int(10) NOT NULL auto_increment,
  `userId` varchar(15) NOT NULL,
  `headLine` varchar(20) NOT NULL,
  `state` varchar(15) NOT NULL,
  `severity` varchar(20) default NULL,
  `project` varchar(50) NOT NULL,
  `environment` varchar(30) default NULL,
  `priority` varchar(10) NOT NULL,
  `resolutionGroup` varchar(20) default NULL,
  `testPhase` varchar(20) default NULL,
  `submitterId` varchar(10) default NULL,
  `submitterName` varchar(30) default NULL,
  `submittedDate` varchar(20) default NULL,
  `qualityCenterRef` varchar(20) default NULL,
  `remedyRef` varchar(20) default NULL,
  `crType` varchar(20) default NULL,
  `qualitedInVersion` varchar(20) default NULL,
  `areaAffected` varchar(30) default NULL,
  `description` varchar(250) default NULL,
  PRIMARY KEY  (`DEFECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblqueries
-- ----------------------------
CREATE TABLE `tblqueries` (
  `QUERYID` int(10) NOT NULL,
  `USERID` varchar(15) NOT NULL,
  `QUERYNAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) default NULL,
  PRIMARY KEY  (`QUERYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tblqueryfilter
-- ----------------------------
CREATE TABLE `tblqueryfilter` (
  `QUERYFILTERID` int(10) NOT NULL,
  `FILTERANME` varchar(50) NOT NULL,
  `DEFAULTVALUE` varchar(20) default NULL,
  `QUERYID` int(10) NOT NULL,
  PRIMARY KEY  (`QUERYFILTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tbluser
-- ----------------------------
CREATE TABLE `tbluser` (
  `USERID` varchar(15) NOT NULL,
  `PASSWORD` varchar(10) NOT NULL,
  `FULLNAME` varchar(30) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  PRIMARY KEY  (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tbtpresentation
-- ----------------------------
CREATE TABLE `tbtpresentation` (
  `PRESENTATIONID` int(10) NOT NULL,
  `PRESENTATIONFIELDNAME` varchar(50) NOT NULL,
  `QUERYID` int(10) NOT NULL,
  PRIMARY KEY  (`PRESENTATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `tbldefect` VALUES ('1', 'admin', 'Test', 'open', 's1', 'Prj1', 'no', 'p1', 'g1', 'main', 'ad11', 'Sudipta', '12-09-2010', 'hhh', 'qqq', 'oo', null, 'test', 'hii');
INSERT INTO `tblqueries` VALUES ('1', 'admin', 'Test', 'personal');
INSERT INTO `tblqueryfilter` VALUES ('1', '', 'P1', '1');
INSERT INTO `tbluser` VALUES ('admin', 'admin', 'Admin', 'admin@admin.com');
INSERT INTO `tbtpresentation` VALUES ('1', '', '1');
