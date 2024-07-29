CREATE SCHEMA IF NOT EXISTS `spotify` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `spotify`;

CREATE TABLE IF NOT EXISTS `spotify`.`credit_card_details`(
`id` INT NOT NULL AUTO_INCREMENT,
`card_number` INT NOT NULL,
`expiry_month` INT(2) NOT NULL,
`expiry_year` INT(2) NOT NULL,
`security_code` INT(3) NOT NULL,
PRIMARY KEY(`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`paypal_details`(
`id` INT NOT NULL AUTO_INCREMENT,
`username` VARCHAR(45) NOT NULL,
PRIMARY KEY(`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`payment_history`(
`id` INT NOT NULL AUTO_INCREMENT,
`date` DATETIME NOT NULL,
`order_number` INT NOT NULL,
PRIMARY KEY(`id`),
UNIQUE INDEX `order_number_UNIQUE` (`order_number` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`subscriptions`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `start_date` DATE NOT NULL,
    `renewal_date` DATE NOT NULL,
    `payment_form` ENUM('credit card', 'PayPal') NOT NULL,
    `credit_card_details_id` INT,
    `paypal_details_id` INT,
    `payment_history_id` INT NOT NULL,
PRIMARY KEY(`id`),
CONSTRAINT chk_payment_details CHECK ((payment_form = 'credit card' AND credit_card_details_id IS NOT NULL) OR (payment_form = 'PayPal' AND paypal_details_id IS NOT NULL)),
CONSTRAINT FOREIGN KEY(payment_history_id) REFERENCES payment_history(id))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`users` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(45) NOT NULL,
    `password` VARCHAR(45) NOT NULL,
    `username` VARCHAR(45) NOT NULL,
    `birthday` DATE NOT NULL,
    `sex` ENUM('male', 'female', 'other'),
    `country` VARCHAR(45),
    `postal_code` VARCHAR(45),
    `subscription_id` INT,
    PRIMARY KEY(`id`),
    CONSTRAINT FOREIGN KEY(subscription_id) REFERENCES subscriptions(id))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `spotify`.`playlists`(
`id` INT NOT NULL AUTO_INCREMENT,
`title` VARCHAR(100) NOT NULL,
`number_of_songs` INT NOT NULL,
`creation_date` DATETIME NOT NULL,
`status` ENUM('active', 'deleted') NOT NULL,
`deletion_date` DATETIME,
PRIMARY KEY(`id`),
CONSTRAINT deletion_date CHECK (status = 'deleted' AND deletion_date IS NOT NULL))
ENGINE = InnoDB;


