-- Create a simple view
CREATE VIEW student_names AS
SELECT student_id, name 
FROM students;

--- List all views in the current schema
SELECT view_name FROM user_views;
