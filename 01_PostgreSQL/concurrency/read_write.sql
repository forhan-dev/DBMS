-- DML operations allowed

-- Insert record in table
SET TRANSACTION READ WRITE;

INSERT INTO students (student_id, name, age, department)
VALUES (109, 'Mitu', 21, 'CSE');

COMMIT;

-- Update record in table
SET TRANSACTION READ WRITE;

UPDATE employees
SET salary = salary * 1.05
WHERE department = 'Finance';

COMMIT;

-- Delete record in table
SET TRANSACTION READ WRITE;

DELETE FROM orders
WHERE order_date < DATE '2025-01-01';

COMMIT;
