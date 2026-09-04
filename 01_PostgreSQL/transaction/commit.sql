-- Commit after inserting
INSERT INTO students (student_id, name, age)
VALUES (5, 'Rahim', 22);

COMMIT;

-- Commit after updating
UPDATE students
SET department = 'CSE'
WHERE student_id = 101;

COMMIT;

--- Commit after deleting
DELETE FROM students
WHERE age < 18;

COMMIT;
