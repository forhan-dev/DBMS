SELECT first_name, salary
FROM employees
WHERE salary BETWEEN 3000 AND 6000;

SELECT order_id, order_date
FROM orders
WHERE order_date BETWEEN DATE '2024-01-01' AND DATE '2024-12-31';

SELECT name
FROM customers
WHERE name BETWEEN 'A' AND 'M';
