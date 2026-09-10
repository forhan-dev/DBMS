SELECT employee_id, salary, 
FIRST_VALUE(salary) OVER (
    ORDER BY salary DESC
    ) AS highest_salary
FROM employees;

SELECT department_id, employee_id, hire_date,
FIRST_VALUE(hire_date) OVER (
    PARTITION BY department_id 
    ORDER BY hire_date ASC
    ) AS first_hire
FROM employees;
