/* List how many products of type "drinks" have been sold in a certain shop. */
USE `pizzeria_db`;

SELECT SUM(ordered_items.quantity)
FROM ((products
INNER JOIN ordered_items ON products.id = ordered_items.product_id)
INNER JOIN orders ON orders.id = ordered_items.order_id)
WHERE products.product_type_id = 3 AND orders.shop_id = 1;