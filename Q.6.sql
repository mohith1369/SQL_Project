-- Join the necessary tables to find the total quantity of each pizza category ordered


SELECT 
    pt.category, SUM(o.quantity) as total_quantity
FROM
    pizza_types AS pt
        JOIN
    pizzas AS p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    order_details AS o ON p.pizza_id = o.pizza_id
GROUP BY pt.category