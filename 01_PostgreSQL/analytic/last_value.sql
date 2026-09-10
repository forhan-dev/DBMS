SELECT employee_id, salary,
       LAST_VALUE(salary) OVER (
         ORDER BY salary DESC 
         ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
       ) AS lowest_salary
FROM employees;

SELECT department_id, employee_id, hire_date,
       LAST_VALUE(hire_date) OVER (
         PARTITION BY department_id 
         ORDER BY hire_date ASC 
         ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
       ) AS last_hire
FROM employees;
