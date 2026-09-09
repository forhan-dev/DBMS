SELECT VARIANCE(salary) AS salary_variance
FROM employees;

SELECT department_id, VARIANCE(salary) AS dept_salary_variance
FROM employees
GROUP BY department_id;
