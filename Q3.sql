-- Identify the highest-priced pizza.

SELECT 
    pz.name, p.price
FROM
    pizza_types AS pz
        JOIN
    pizzas AS p ON pz.pizza_type_id = p.pizza_type_id
ORDER BY p.price DESC
LIMIT 1;