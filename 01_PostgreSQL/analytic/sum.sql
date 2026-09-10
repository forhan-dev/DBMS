SELECT department_id, employee_id, salary,
       SUM(salary) OVER (PARTITION BY department_id) AS dept_total
FROM employees;

SELECT employee_id, hire_date, salary,
       SUM(salary) OVER (ORDER BY hire_date) AS running_total
FROM employees;

SELECT department_id, employee_id, salary,
       SUM(salary) OVER (PARTITION BY department_id ORDER BY salary DESC) AS dept_running_total
FROM employees;
