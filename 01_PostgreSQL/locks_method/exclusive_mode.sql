-- Session A
LOCK TABLE employees 
IN EXCLUSIVE MODE;

-- Session B (simultaneous)
UPDATE employees
SET salary = salary + 500
WHERE department_id = 10;

-- Session A continues
UPDATE employees
SET salary = salary * 1.1
WHERE department_id = 20;

COMMIT;
