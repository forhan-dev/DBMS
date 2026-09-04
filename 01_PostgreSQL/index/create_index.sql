-- Create an index to speed up queries
CREATE INDEX idx_students_name 
ON students(name);

--- List all indexes in the current schema
SELECT index_name, index_type, table_name, status
FROM user_indexes;

