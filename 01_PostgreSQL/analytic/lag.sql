SELECT employee_id, hire_date,
       LAG(hire_date, 1) OVER (ORDER BY hire_date) AS previous_hire
FROM employees;

SELECT employee_id, hire_date,
       LAG(hire_date, 1, 'No Previous Hire') OVER (ORDER BY hire_date) AS previous_hire
FROM employees;
