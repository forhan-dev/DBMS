-- Rollback after inserting
INSERT INTO students (student_id, name, age)
VALUES (102, 'Hasan', 20);

ROLLBACK;

-- Rollback after updating
UPDATE students
SET department = 'CSE'
WHERE student_id = 104;

ROLLBACK;

-- Rollback after deleting
DELETE FROM students
WHERE age < 18;

ROLLBACK;
