-- Identify the most common pizza size ordered.

SELECT 
    p.size, COUNT(order_detail_id) AS order_count
FROM
    order_details AS o
        JOIN
    pizzas AS p ON o.pizza_id = p.pizza_id
GROUP BY p.size
ORDER BY order_count DESC
LIMIT 1;