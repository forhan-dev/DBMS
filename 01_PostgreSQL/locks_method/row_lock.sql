-- Session 1
UPDATE accounts 
SET balance = balance - 500 
WHERE account_id = 1;

-- This row is now locked until COMMIT or ROLLBACK
-- Another session trying to update the same row will wait

-- Session B
INSERT INTO employees (emp_id, name, salary)
VALUES (102, 'Alice', 5000);

-- Session C
DELETE FROM employees
WHERE emp_id = 101;
