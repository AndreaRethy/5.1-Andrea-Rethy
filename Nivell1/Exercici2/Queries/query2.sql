/* Lists how many orders a certain employee has delivered */
SELECT COUNT(delivery_details.id)
FROM ((orders
INNER JOIN delivery_methods ON delivery_methods.id = orders.delivery_method_id)
INNER JOIN delivery_details ON delivery_methods.id = delivery_details.delivery_method_id)
WHERE delivery_details.employee_id = 3;