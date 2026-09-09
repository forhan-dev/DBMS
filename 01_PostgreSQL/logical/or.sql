SELECT first_name, department_id
FROM employees
WHERE department_id = 10 OR department_id = 20;

SELECT order_id, order_date, total_amount
FROM orders
WHERE order_date < DATE '2026-01-01' OR total_amount > 5000;

SELECT customer_id, name, city
FROM customers
WHERE city = 'Dhaka' OR name LIKE 'A%';
