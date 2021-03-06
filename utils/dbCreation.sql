DROP TABLE IF EXISTS People;
CREATE TABLE People (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `eid` VARCHAR(16) NOT NULL ,
  `account` VARCHAR(32) NOT NULL,
  `fname` VARCHAR(128) NOT NULL,
  `lname` VARCHAR(128) NOT NULL,
  `country` VARCHAR(64) NOT NULL,
  `college` VARCHAR(64) NOT NULL,
  `email` VARCHAR(64) NOT NULL,
  `year` VARCHAR(64) NOT NULL,
  `status` VARCHAR(64) NOT NULL,
  `query` VARCHAR(64) NOT NULL,
  UNIQUE KEY(eid),
  UNIQUE KEY(account),
  UNIQUE KEY(email)
) ENGINE = MYISAM ;

DROP TABLE IF EXISTS Requests;
CREATE TABLE Requests(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `eid_from` VARCHAR(16) NOT NULL,
  `eid_to` VARCHAR(16) NOT NULL,
  UNIQUE KEY(eid_from, eid_to)
) ENGINE = MYISAM ;

DROP TABLE IF EXISTS Allocations;
CREATE TABLE Allocations(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `eid` VARCHAR(16) NOT NULL,
  `college` VARCHAR(16),
  `room` VARCHAR(16),
  `apartment` VARCHAR(128),
  `round` INT(2),
  UNIQUE KEY `eid` (`eid`)
) ENGINE = MYISAM ;

DROP TABLE IF EXISTS Groups;
CREATE TABLE Groups(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `score` INT NOT NULL
) ENGINE = MYISAM ;

DROP TABLE IF EXISTS InGroup;
CREATE TABLE InGroup(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `group_id` INT NOT NULL,
  `eid` VARCHAR(16) NOT NULL,
  UNIQUE KEY(group_id, eid)
) ENGINE = MYISAM ;

DROP TABLE IF EXISTS Apartment_Choices;
CREATE TABLE Apartment_Choices(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `number` VARCHAR(16) NOT NULL,
  `college` VARCHAR(64) NOT NULL,
  `group_id` VARCHAR(16) NOT NULL,
  `choice` INT(2) NOT NULL
) ENGINE = MYISAM ;
