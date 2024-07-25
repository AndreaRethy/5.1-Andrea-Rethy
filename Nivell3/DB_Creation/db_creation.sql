CREATE SCHEMA IF NOT EXISTS `spotify` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `spotify`;

CREATE TABLE IF NOT EXISTS `spotify`.`users` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(45) NOT NULL,
    `password` VARCHAR(45) NOT NULL,
    `username` VARCHAR(45) NOT NULL,
    `birthday` DATE NOT NULL,
    `sex` ENUM('male', 'female', 'other'),
    `country` VARCHAR(45),
    `postal_code` VARCHAR(45),
    PRIMARY KEY(`id`))
ENGINE = InnoDB;