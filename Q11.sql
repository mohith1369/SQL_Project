-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pt.category,
    ROUND(SUM(od.quantity * p.price) * 100 / (SELECT 
                    SUM(o.quantity * p.price)
                FROM
                    order_details AS o
                        JOIN
                    pizzas AS p ON o.pizza_id = p.pizza_id),
            2) AS percenatage_share
FROM
    pizza_types AS pt
        JOIN
    pizzas AS p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    order_details AS od ON od.pizza_id = p.pizza_id
GROUP BY pt.category