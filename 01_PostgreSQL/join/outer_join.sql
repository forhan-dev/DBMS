SELECT o.order_id, o.order_date, c.name
FROM orders o
FULL OUTER JOIN customers c
ON o.customer_id = c.customer_id;
