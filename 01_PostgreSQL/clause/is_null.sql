SELECT order_id, customer_id, delivery_date
FROM orders
WHERE delivery_date IS NULL;

SELECT customer_id, name, phone
FROM customers
WHERE phone IS NOT NULL;