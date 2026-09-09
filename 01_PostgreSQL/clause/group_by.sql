SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;

SELECT EXTRACT(YEAR FROM order_date) AS order_year, SUM(total_amount) AS yearly_sales
FROM orders
GROUP BY EXTRACT(YEAR FROM order_date);

SELECT customer_id, city, COUNT(*) AS total_orders
FROM customers
GROUP BY customer_id, city;

SELECT region, product, SUM(sales) AS total_sales
FROM sales
GROUP BY ROLLUP(region, product);

SELECT region, product, SUM(sales) AS total_sales
FROM sales
GROUP BY CUBE(region, product);
