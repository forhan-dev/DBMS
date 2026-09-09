SELECT first_name, department_id
FROM employees
WHERE department_id IN (10, 20, 30);

SELECT order_id, order_date
FROM orders
WHERE EXTRACT(YEAR FROM order_date) IN (2024, 2025, 2026);

SELECT customer_id, name, city
FROM customers
WHERE city IN ('Dhaka', 'Chattogram', 'Sylhet');

SELECT first_name, department_id
FROM employees
WHERE department_id NOT IN (10, 20, 30);
