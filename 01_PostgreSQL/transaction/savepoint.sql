-- Rollback to savepoint after inserting
SAVEPOINT before_insert;

INSERT INTO students (student_id, name, age, department)
VALUES (108, 'Shakib', 22, 'Physics');

ROLLBACK TO before_insert;

-- Rollback to savepoint after updating
SAVEPOINT before_update;

UPDATE students
SET department = 'CSE'
WHERE student_id = 107;

ROLLBACK TO before_update;

-- Rollback to savepoint after deleting
SAVEPOINT before_delete;

DELETE FROM students
WHERE age < 18;

ROLLBACK TO before_delete;

