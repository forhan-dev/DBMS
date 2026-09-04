COMMENT ON TABLE students IS 'Stores student personal and academic information';

SELECT table_name, comments 
FROM user_tab_comments 
WHERE table_name = 'STUDENTS';
