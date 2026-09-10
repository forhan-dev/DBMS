SELECT department_id, employee_id, salary,
       AVG(salary) OVER (PARTITION BY department_id) AS dept_avg_salary
FROM employees;

SELECT employee_id, hire_date, salary,
       AVG(salary) OVER (ORDER BY hire_date) AS running_avg
FROM employees;
