-- Session A
LOCK TABLE employees 
IN SHARE MODE;

-- Session B (simultaneous)
UPDATE employees
SET salary = salary + 500
WHERE department_id = 10;
