SELECT DISTINCT job_id
FROM employees;

SELECT DISTINCT department_id, job_id
FROM employees;

SELECT DISTINCT EXTRACT(YEAR FROM order_date) AS order_year
FROM orders;
