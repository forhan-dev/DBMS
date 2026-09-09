SELECT first_name, department_id
FROM employees
WHERE department_id != 10;

SELECT customer_id, name
FROM customers
WHERE name != 'Rahim';

SELECT order_id, order_date
FROM orders
WHERE order_date <> DATE '2026-05-15';
