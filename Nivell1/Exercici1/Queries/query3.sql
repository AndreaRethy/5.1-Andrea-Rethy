/* List the different suppliers who have supplied glasses that sold successfully by the optician. */
SELECT purchases.product_id, providors.name
FROM ((purchases
INNER JOIN glasses ON glasses.id = purchases.product_id)
INNER JOIN providors ON glasses.providor_id = providors.id);