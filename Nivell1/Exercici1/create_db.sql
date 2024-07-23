CREATE DATABASE IF NOT EXISTS `cul_ampolla_db` DEFAULT CHARACTER SET utf8 ;
USE `cul_ampolla_db` ;

CREATE TABLE IF NOT EXISTS `cul_ampolla_db`.`address` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `street` VARCHAR(60) NOT NULL,
  `number` INT NOT NULL,
  `floor` INT,
  `door` INT,
  `city` VARCHAR(45) NOT NULL,
  `postal_code` VARCHAR(10) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `cul_ampolla_db`.`providors` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `address_id` INT NOT NULL,
  `phone` VARCHAR(15) NOT NULL,
  `fax` VARCHAR(15),
  `tax_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `cul_ampolla_db`.`employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `cul_ampolla_db`.`glasses` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `brand` VARCHAR(45) NOT NULL,
  `prescription` VARCHAR(45) NOT NULL,
  `type_of_frame` VARCHAR(45) NOT NULL,
  `frame_color` VARCHAR(45) NOT NULL,
  `lens_color` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `cul_ampolla_db`.`clients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `address_id` INT,
  `phone` VARCHAR(15) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `regisration date` INT,
  `recommendation` VARCHAR(45),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `cul_ampolla_db`.`purchases`(
`id` INT NOT NULL AUTO_INCREMENT,
`client_id`INT NOT NULL,
`sold_by` INT NOT NULL,
`product_id`INT NOT NULL,
`sale_period` VARCHAR(45),
PRIMARY KEY (`id`))
ENGINE = InnoDB;

ALTER TABLE providors ADD CONSTRAINT FOREIGN KEY(address_id) REFERENCES address(id);
ALTER TABLE clients ADD CONSTRAINT FOREIGN KEY(address_id) REFERENCES address(id);
ALTER TABLE glasses ADD providor_id INT NOT NULL;
ALTER TABLE glasses ADD CONSTRAINT FOREIGN KEY(providor_id) REFERENCES providors(id);
ALTER TABLE purchases ADD CONSTRAINT FOREIGN KEY(client_id) REFERENCES clients(id);
ALTER TABLE purchases ADD CONSTRAINT FOREIGN KEY(sold_by) REFERENCES employee(id);
ALTER TABLE purchases ADD CONSTRAINT FOREIGN KEY(product_id) REFERENCES glasses(id);
