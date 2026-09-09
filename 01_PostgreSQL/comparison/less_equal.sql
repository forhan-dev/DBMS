SELECT first_name, salary
FROM employees
WHERE salary <= 3000;

SELECT order_id, order_date
FROM orders
WHERE order_date <= DATE '2026-01-01';

SELECT name
FROM customers
WHERE name <= 'M';
