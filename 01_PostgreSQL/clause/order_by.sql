SELECT first_name, salary
FROM employees
ORDER BY salary;

SELECT first_name, salary
FROM employees
ORDER BY salary DESC;

SELECT first_name, department_id, salary
FROM employees
ORDER BY department_id, salary;

SELECT first_name, department_id, salary
FROM employees
ORDER BY department_id ASC, salary DESC;