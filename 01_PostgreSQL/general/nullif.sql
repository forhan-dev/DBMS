SELECT employee_id, salary,
       NULLIF(salary, 5000) AS adjusted_salary
FROM employees;

SELECT employee_id, salary, commission_pct,
       salary / NULLIF(commission_pct, 0) AS ratio
FROM employees;
