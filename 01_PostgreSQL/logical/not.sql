SELECT first_name, department_id
FROM employees
WHERE NOT department_id = 10;

SELECT name
FROM customers
WHERE NOT name LIKE 'A%';

SELECT order_id, order_date
FROM orders
WHERE NOT (order_date BETWEEN DATE '2026-01-01' AND DATE '2026-12-31');
