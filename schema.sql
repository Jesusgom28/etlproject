CREATE DATABASE IF NOT EXISTS etl_db;
USE etl_db;

DROP TABLE IF EXISTS gdp_dollars_2016;
DROP TABLE IF EXISTS population;
DROP TABLE IF EXISTS countries;

CREATE TABLE `countries` (
 `Country_code` varchar(3) NOT NULL,
 `Country_name` varchar(100) NOT NULL,
 PRIMARY KEY (`Country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `population` (
 `Country_code` VARCHAR(3) NOT NULL,
 `Population` FLOAT(30,3),
 PRIMARY KEY (`Country_code`),
 CONSTRAINT  FOREIGN KEY (`Country_code`) REFERENCES `countries` (`Country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `gdp_dollars_2016` (
 `Country_code` varchar(3) NOT NULL,
 `Units` varchar(45) NOT NULL,
 `Scale` varchar(45) NOT NULL,
 `GDP_2016_USDollars` float(30,10) DEFAULT NULL,
 PRIMARY KEY (`Country_code`),
 CONSTRAINT  FOREIGN KEY (`Country_code`) REFERENCES `countries` (`Country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
