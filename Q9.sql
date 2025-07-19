-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(total_quantity), 2) AS avg_quantity_perday
FROM
    (SELECT 
        od.order_date AS date, SUM(o.quantity) AS total_quantity
    FROM
        orders AS od
    JOIN order_details AS o ON od.order_id = o.order_id
    GROUP BY od.order_date) AS order_per_day