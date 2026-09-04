COMMENT ON VIEW student_names IS 'View of student names only';

SELECT view_name, comments
FROM user_views
WHERE view_name = 'STUDENT_NAMES';