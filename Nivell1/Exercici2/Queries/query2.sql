/* Lists how many orders a certain employee has delivered */
USE `pizzeria_db`;

SELECT COUNT(employee_id)
FROM delivery_details
WHERE employee_id = 3;