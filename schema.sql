
CREATE DATABASE IF EXSIT population_db;
USE population_db;

DROP TABLE 'countries';
DROP TABLE 'population';

CREATE TABLE `countries` (
  `code` varchar(2) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `population` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `country_code` VARCHAR(2) NOT NULL,
  `year` INT NOT NULL,
  `population` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT  FOREIGN KEY (`country_code`) REFERENCES `countries` (`code`)  
);

