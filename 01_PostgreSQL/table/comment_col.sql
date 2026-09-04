COMMENT ON COLUMN students.name IS 'Full name of the student';

SELECT column_name, comments
FROM user_col_comments
WHERE table_name = 'STUDENTS';