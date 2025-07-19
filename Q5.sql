-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pz.name, SUM(o.quantity) AS total_quantity
FROM
    pizza_types AS pz
        JOIN
    pizzas AS p ON pz.pizza_type_id = p.pizza_type_id
        JOIN
    order_details AS o ON o.pizza_id = p.pizza_id
GROUP BY pz.name
ORDER BY total_quantity DESC
LIMIT 5;