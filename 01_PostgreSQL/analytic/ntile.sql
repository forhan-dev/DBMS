SELECT employee_id, salary,
       NTILE(4) OVER (ORDER BY salary DESC) AS salary_quartile
FROM employees;

SELECT department_id, employee_id, salary,
       NTILE(3) OVER (PARTITION BY department_id ORDER BY salary DESC) AS dept_bucket
FROM employees;
