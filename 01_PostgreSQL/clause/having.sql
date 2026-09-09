SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 5000;

SELECT EXTRACT(YEAR FROM order_date) AS order_year, SUM(total_amount) AS yearly_sales
FROM orders
GROUP BY EXTRACT(YEAR FROM order_date)
HAVING SUM(total_amount) > 1000000;
