SELECT STDDEV(salary) AS salary_stddev
FROM employees;

SELECT department_id, STDDEV(salary) AS dept_salary_stddev
FROM employees
GROUP BY department_id;
