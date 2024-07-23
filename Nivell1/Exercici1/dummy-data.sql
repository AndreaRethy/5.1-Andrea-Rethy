USE `cul_ampolla_db`;

/* Insert dummy data into `address` table */
INSERT INTO `address` (`street`, `number`, `floor`, `door`, `city`, `postal_code`, `country`)
VALUES
('Main Street', 1, 2, 3, 'New York', '10001', 'USA'),
('High Street', 2, 3, 4, 'Los Angeles', '90001', 'USA'),
('Broadway', 3, 4, 5, 'Chicago', '60601', 'USA'),
('Wall Street', 4, 5, 6, 'Houston', '77001', 'USA'),
('Fifth Avenue', 5, 6, 7, 'Phoenix', '85001', 'USA'),
('Elm Street', 6, 1, 1, 'Philadelphia', '19019', 'USA'),
('Oak Street', 7, 2, 2, 'San Antonio', '78201', 'USA'),
('Maple Street', 8, 3, 3, 'San Diego', '92101', 'USA'),
('Pine Street', 9, 4, 4, 'Dallas', '75201', 'USA'),
('Cedar Street', 10, 5, 5, 'San Jose', '95101', 'USA'),
('Birch Avenue', 11, 6, 6, 'Austin', '73301', 'USA'),
('Spruce Street', 12, 1, 1, 'Jacksonville', '32099', 'USA'),
('Ash Boulevard', 13, 2, 2, 'San Francisco', '94101', 'USA'),
('Hickory Lane', 14, 3, 3, 'Columbus', '43085', 'USA'),
('Willow Road', 15, 4, 4, 'Fort Worth', '76101', 'USA'),
('Chestnut Drive', 16, 5, 5, 'Charlotte', '28201', 'USA'),
('Poplar Street', 17, 6, 6, 'Indianapolis', '46201', 'USA'),
('Redwood Avenue', 18, 1, 1, 'Seattle', '98101', 'USA'),
('Sycamore Lane', 19, 2, 2, 'Denver', '80201', 'USA');


/* Insert dummy data into `providors` table */
INSERT INTO `providors` (`name`, `address_id`, `phone`, `fax`, `tax_id`)
VALUES
('Optic World', 1, 1234567890, 1234567891, 'TX123456A'),
('Vision Express', 2, 2345678901, 2345678902, 'TX234567B'),
('Eye See You', 3, 3456789012, 3456789013, 'TX345678C'),
('Clear View', 4, 4567890123, 4567890124, 'TX456789D'),
('Focus Point', 5, 5678901234, 5678901235, 'TX567890E'),
('Spectacle Shop', 6, 6789012345, 6789012346, 'TX678901F'),
('Lens Masters', 7, 7890123456, 7890123457, 'TX789012G'),
('Bright Eyes', 8, 8901234567, 8901234568, 'TX890123H'),
('Glasses Galore', 9, 9012345678, 9012345679, 'TX901234I'),
('Visionary', 10, 1012345678, 1012345679, 'TX101234J');

/* Insert dummy data into `employee` table */
INSERT INTO `employee` (`name`)
VALUES
('John Doe'),
('Jane Smith'),
('Alice Johnson'),
('Bob Brown'),
('Charlie Davis');

/* Insert dummy data into `glasses` table */
INSERT INTO `glasses` (`brand`, `prescription`, `type_of_frame`, `frame_color`, `lens_color`, `price`, `providor_id`)
VALUES
('Ray-Ban', 'Single Vision', 'Full Rim', 'Black', 'Green', '150', 1),
('Oakley', 'Progressive', 'Half Rim', 'Red', 'Blue', '200', 2),
('Gucci', 'Bifocal', 'Rimless', 'Gold', 'Brown', '250', 3),
('Prada', 'Single Vision', 'Full Rim', 'Silver', 'Gray', '300', 4),
('Versace', 'Progressive', 'Half Rim', 'Blue', 'Yellow', '350', 5),
('Armani', 'Bifocal', 'Rimless', 'Green', 'Pink', '400', 6),
('Dolce & Gabbana', 'Single Vision', 'Full Rim', 'Yellow', 'Purple', '450', 7),
('Fendi', 'Progressive', 'Half Rim', 'Purple', 'Black', '500', 8),
('Tom Ford', 'Bifocal', 'Rimless', 'Pink', 'Red', '550', 9),
('Chanel', 'Single Vision', 'Full Rim', 'Orange', 'Green', '600', 10);

/* Insert dummy data into `clients` table */
INSERT INTO `clients` (`name`, `address_id`, `phone`, `email`, `regisration date`, `recommendation`)
VALUES
('Client A', 11, 1111111111, 'clienta@example.com', 20230101, 'Ad'),
('Client B', 12, 2222222222, 'clientb@example.com', 20230102, 'Flyer'),
('Client C', 13, 3333333333, 'clientc@example.com', 20230103, 'Friend'),
('Client D', 14, 4444444444, 'clientd@example.com', 20230104, 'Website'),
('Client E', 15, 5555555555, 'cliente@example.com', 20230105, 'Ad'),
('Client F', 16, 6666666666, 'clientf@example.com', 20230106, 'Flyer'),
('Client G', 17, 7777777777, 'clientg@example.com', 20230107, 'Friend'),
('Client H', 18, 8888888888, 'clienth@example.com', 20230108, 'Website'),
('Client I', 19, 9999999999, 'clienti@example.com', 20230109, 'Ad');

/* Insert dummy data into `purchases` table */
INSERT INTO `purchases` (`client_id`, `sold_by`, `product_id`, `sale_period`)
VALUES
(1, 1, 1, 'Spring'),
(2, 2, 2, 'Summer'),
(3, 3, 3, 'Autumn'),
(4, 4, 4, 'Winter'),
(5, 5, 5, 'Spring'),
(6, 4, 6, 'Summer'),
(7, 4, 7, 'Autumn'),
(8, 2, 8, 'Winter'),
(9, 5, 9, 'Spring'),
(1, 1, 10, 'Summer');