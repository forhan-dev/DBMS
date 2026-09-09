-- Audit SELECT queries on students table
AUDIT SELECT 
ON students BY ACCESS;

-- Audit INSERT and DELETE operations
AUDIT INSERT, DELETE 
ON students BY ACCESS;

SELECT * 
FROM dba_audit_trail;
