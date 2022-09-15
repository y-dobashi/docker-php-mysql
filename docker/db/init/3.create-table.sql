USE example_db;

CREATE TABLE vEvent (
  vEventId int not null AUTO_INCREMENT,
  ucdId varchar(32),
  mediaId varchar(32),
  PRIMARY KEY (vEventId)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE rRule (
  rRuleId int not null AUTO_INCREMENT,
  vEventId int not null,
  dtStart DATETIME NOT NULL,
  dtEnd DATETIME,
  freq varchar(8),
  until DATETIME,
  cnt int,
--  interval int default 1,
  bySecond varchar(170),
  byMinute varchar(170),
  byHour varchar(61),
  byDay varchar(35),
  byMonthDay varchar(200),
  byYearDay varchar(3078),
  byWeekNo varchar(353),
  byMonth varchar(29),
  wkSt char(2) default 'mo',
  created DATETIME,
  updated DATETIME,
  PRIMARY KEY (rRuleId)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE exDate (
  exDateId int not null AUTO_INCREMENT,
  rRuleId int not null,
  dt DATETIME NOT NULL,
  created DATETIME,
  updated DATETIME,
  PRIMARY KEY (exDateId)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;
    
    
CREATE TABLE recurrence (
  recurrenceId int not null AUTO_INCREMENT,
  rRuleId int not null,
  dtStart DATETIME NOT NULL,
  dtEnd DATETIME,
  created DATETIME,
  updated DATETIME,
  PRIMARY KEY (recurrenceId)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;
