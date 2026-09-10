SELECT employee_id, hire_date,
       LEAD(hire_date, 1) OVER (ORDER BY hire_date) AS next_hire
FROM employees;

SELECT employee_id, hire_date,
       LEAD(hire_date, 1, 'No Next Hire') OVER (ORDER BY hire_date) AS next_hire
FROM employees;
