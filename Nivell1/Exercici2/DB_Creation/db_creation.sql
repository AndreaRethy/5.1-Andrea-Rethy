CREATE SCHEMA IF NOT EXISTS `pizzeria_db` DEFAULT CHARACTER SET utf8 ;
USE `pizzeria_db` ;


CREATE TABLE IF NOT EXISTS `pizzeria_db`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `address` VARCHAR(150) NOT NULL,
  `postal code` VARCHAR(11) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `province` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pizzeria_db`.`orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date_time` DATETIME NOT NULL,
  `total_price` INT NOT NULL,
  `delivery_method_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pizzeria_db`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` VARCHAR(250) NOT NULL,
  `image_ref` VARCHAR(45) NOT NULL,
  `price` INT NOT NULL,
  `product_type_id` INT NOT NULL,
  `pizza_category_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pizzeria_db`.`pizza_categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pizzeria_db`.`shops` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `address` VARCHAR(45) NOT NULL,
  `postal code` VARCHAR(11) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `province` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pizzeria_db`.`employees` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `NIF` VARCHAR(25) NOT NULL,
  `phone` VARCHAR(15) NOT NULL,
  `position_id` INT NOT NULL,
  `shop_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `NIF_UNIQUE` (`NIF` ASC) VISIBLE)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pizzeria_db`.`positions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pizzeria_db`.`product_types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pizzeria_db`.`delivery_methods` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pizzeria_db`.`delivery_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `delivery_time` DATETIME NOT NULL,
  `delivery_method_id` INT NOT NULL,
  `employee_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `pizzeria_db`.`ordered_items` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `quantity` INT NOT NULL,
  `product_id` INT NOT NULL,
  `order_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

ALTER TABLE orders ADD CONSTRAINT FOREIGN KEY(delivery_method_id) REFERENCES delivery_methods(id);
ALTER TABLE orders ADD CONSTRAINT FOREIGN KEY(customer_id) REFERENCES customers(id);
ALTER TABLE products ADD CONSTRAINT FOREIGN KEY(product_type_id) REFERENCES product_types(id);
ALTER TABLE products ADD CONSTRAINT FOREIGN KEY(pizza_category_id) REFERENCES pizza_categories(id);
ALTER TABLE employees ADD CONSTRAINT FOREIGN KEY(position_id) REFERENCES positions(id);
ALTER TABLE employees ADD CONSTRAINT FOREIGN KEY(shop_id) REFERENCES shops(id);
ALTER TABLE delivery_details ADD CONSTRAINT FOREIGN KEY(delivery_method_id) REFERENCES delivery_methods(id);
ALTER TABLE delivery_details ADD CONSTRAINT FOREIGN KEY(employee_id) REFERENCES employees(id);
ALTER TABLE ordered_items ADD CONSTRAINT FOREIGN KEY(product_id) REFERENCES products(id);
ALTER TABLE ordered_items ADD CONSTRAINT FOREIGN KEY(order_id) REFERENCES orders(id);