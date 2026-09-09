SELECT CONCAT(first_name, last_name) AS full_name
FROM employees;

SELECT first_name || ' ' || last_name AS full_name
FROM employees;
