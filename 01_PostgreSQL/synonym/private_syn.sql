-- Create an alias for the students table
CREATE SYNONYM stu 
FOR students;

--- List all synonyms in the current schema
SELECT synonym_name, table_owner, table_name
FROM user_synonyms;
