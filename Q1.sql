-- Retrieve the total number of orders placed.

USE project_pizza;
SELECT 
    COUNT(order_id) AS total_orders
FROM
    orders;