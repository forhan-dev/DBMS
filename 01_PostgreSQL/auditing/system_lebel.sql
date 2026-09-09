-- Enable auditing at the database level
AUDIT SESSION;

-- Audit table creation and dropping
AUDIT TABLE BY ACCESS;

-- Audit user privilege changes
AUDIT GRANT, REVOKE BY ACCESS;
