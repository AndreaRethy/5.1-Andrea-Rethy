USE `pizzeria_db`;

/* Insert dummy data for customers */
INSERT INTO `customers` (name, surname, address, `postal code`, city, province, phone)
VALUES 
('John', 'Doe', '123 Main St', '12345', 'Springfield', 'Illinois', '123-456-7890'),
('Jane', 'Smith', '456 Elm St', '67890', 'Shelbyville', 'Illinois', '234-567-8901'),
('Michael', 'Johnson', '789 Oak St', '11223', 'Capital City', 'Illinois', '345-678-9012'),
('Emily', 'Davis', '101 Pine St', '44556', 'Ogdenville', 'Illinois', '456-789-0123'),
('Daniel', 'Martinez', '202 Birch St', '77889', 'North Haverbrook', 'Illinois', '567-890-1234'),
('Sarah', 'Miller', '303 Cedar St', '99000', 'Brockway', 'Illinois', '678-901-2345'),
('David', 'Garcia', '404 Maple St', '33221', 'Springfield', 'Illinois', '789-012-3456'),
('Laura', 'Rodriguez', '505 Walnut St', '55443', 'Shelbyville', 'Illinois', '890-123-4567'),
('Robert', 'Wilson', '606 Cherry St', '77665', 'Capital City', 'Illinois', '901-234-5678'),
('Sophia', 'Martinez', '707 Chestnut St', '99887', 'Ogdenville', 'Illinois', '012-345-6789');

/* Insert dummy data for positions */
INSERT INTO `positions` (name)
VALUES 
('kitchen'),
('delivery');

/* Insert dummy data for shops */
INSERT INTO `shops` (address, `postal code`, city, province)
VALUES 
('1001 Pizzeria Ave', '12345', 'Springfield', 'Illinois'),
('2002 Pizzeria Blvd', '67890', 'Shelbyville', 'Illinois');

/* Insert dummy data for employees */
INSERT INTO `employees` (name, surname, NIF, phone, position_id, shop_id)
VALUES 
('Alex', 'Brown', 'A12345678', '123-456-7890', 1, 1),
('Emma', 'Jones', 'B23456789', '234-567-8901', 2, 1),
('Lucas', 'Martinez', 'C34567890', '345-678-9012', 1, 2),
('Lily', 'White', 'D45678901', '456-789-0123', 2, 2),
('James', 'Taylor', 'E56789012', '567-890-1234', 2, 1),
('Grace', 'Harris', 'F67890123', '678-901-2345', 2, 2);

/* Insert dummy data for pizza categories */
INSERT INTO `pizza_categories` (name)
VALUES 
('Classic'),
('Specialty'),
('Vegan');

/* Insert dummy data for product types */
INSERT INTO `product_types` (name)
VALUES 
('pizza'),
('hamburger'),
('drinks');

/* Insert dummy data for products */
INSERT INTO `products` (name, description, image_ref, price, product_type_id, pizza_category_id)
VALUES 
('Margherita', 'Classic pizza with tomatoes and mozzarella', 'margherita.jpg', 10, 1, 1),
('Pepperoni', 'Pepperoni pizza with mozzarella', 'pepperoni.jpg', 12, 1, 1),
('Veggie Deluxe', 'Pizza with mixed vegetables', 'veggie_deluxe.jpg', 14, 1, 3),
('BBQ Chicken', 'Pizza with BBQ sauce and chicken', 'bbq_chicken.jpg', 16, 1, 2),
('Cheeseburger', 'Beef patty with cheese', 'cheeseburger.jpg', 8, 2, NULL),
('Veggie Burger', 'Vegetable patty with lettuce', 'veggie_burger.jpg', 9, 2, NULL),
('Cola', 'Carbonated soft drink', 'cola.jpg', 2, 3, NULL),
('Lemonade', 'Lemon-flavored drink', 'lemonade.jpg', 2, 3, NULL),
('Water', 'Bottled water', 'water.jpg', 1, 3, NULL),
('Hawaiian', 'Pizza with ham and pineapple', 'hawaiian.jpg', 15, 1, 2),
('Meat Lovers', 'Pizza with various meats', 'meat_lovers.jpg', 18, 1, 2),
('Mushroom', 'Pizza with mushrooms and cheese', 'mushroom.jpg', 13, 1, 1),
('Spicy Italian', 'Pizza with spicy sausage', 'spicy_italian.jpg', 14, 1, 2),
('Chicken Burger', 'Chicken patty with lettuce', 'chicken_burger.jpg', 9, 2, NULL),
('Orange Juice', 'Fresh orange juice', 'orange_juice.jpg', 3, 3, NULL);

/* Insert dummy data for delivery methods */
INSERT INTO `delivery_methods` (name)
VALUES 
('home-delivery'),
('store-pick-up');

/* Insert dummy data for orders */
INSERT INTO `delivery_details` (delivery_time, delivery_method_id, employee_id)
VALUES 
('2023-07-24 19:30:00', 1, 2),
('2023-07-24 20:30:00', 1, 3),
('2023-07-24 21:30:00', 1, 4),
('2023-07-24 22:30:00', 1, 6),
('2023-07-24 23:30:00', 1, 2),
('2023-07-25 18:30:00', 1, 3),
('2023-07-25 19:30:00', 1, 3),
('2023-07-25 20:30:00', 1, 4);

/* Insert dummy data for orders */
INSERT INTO `orders` (date_time, total_price, delivery_method_id, customer_id, shop_id)
VALUES 
('2023-07-24 18:30:00', 30, 1, 1, 1),
('2023-07-24 19:00:00', 25, 2, 2, 2),
('2023-07-24 19:30:00', 20, 1, 3, 1),
('2023-07-24 20:00:00', 18, 2, 4, 2),
('2023-07-24 20:30:00', 28, 1, 5, 1),
('2023-07-24 21:00:00', 35, 2, 6, 2),
('2023-07-24 21:30:00', 24, 1, 7, 1),
('2023-07-24 22:00:00', 32, 2, 8, 2),
('2023-07-24 22:30:00', 19, 1, 9, 1),
('2023-07-24 23:00:00', 21, 2, 10, 2),
('2023-07-25 17:30:00', 27, 1, 1, 1),
('2023-07-25 18:00:00', 29, 2, 2, 2),
('2023-07-25 18:30:00', 22, 1, 3, 1),
('2023-07-25 19:00:00', 31, 2, 4, 2),
('2023-07-25 19:30:00', 23, 1, 5, 1);

/* Insert dummy data for ordered items */
INSERT INTO `ordered_items` (quantity, product_id, order_id)
VALUES 
(1, 1, 1),
(2, 5, 1),
(1, 3, 2),
(3, 6, 2),
(2, 8, 3),
(1, 7, 3),
(1, 9, 4),
(2, 2, 4),
(1, 4, 5),
(2, 11, 5),
(1, 10, 6),
(1, 12, 6),
(1, 13, 7),
(1, 14, 7),
(2, 15, 8),
(1, 3, 8),
(2, 2, 9),
(1, 1, 9),
(1, 4, 10),
(2, 13, 10),
(1, 12, 11),
(2, 8, 11),
(1, 5, 12),
(2, 3, 12),
(1, 2, 13),
(1, 1, 13),
(1, 10, 14),
(2, 7, 14),
(1, 9, 15),
(1, 6, 15);
