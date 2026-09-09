SELECT first_name, department_id, salary
FROM employees
WHERE department_id = 10 AND salary > 4000;

SELECT order_id, order_date, total_amount
FROM orders
WHERE order_date BETWEEN DATE '2026-01-01' AND DATE '2026-12-31'
  AND total_amount > 1000;

SELECT customer_id, name, city
FROM customers
WHERE city = 'Dhaka' AND name LIKE 'A%';
