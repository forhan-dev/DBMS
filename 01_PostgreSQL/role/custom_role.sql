-- Create a role
CREATE ROLE analyst;

-- Grant privileges to the role
GRANT SELECT ON sales TO analyst;
GRANT SELECT ON customers TO analyst;

-- Grant role to user
GRANT analyst TO forhan;

-- Revoke role from user
REVOKE analyst FROM forhan;

SELECT * FROM session_roles;

SELECT * FROM dba_role_privs
WHERE grantee = 'FORHAN';

DROP ROLE analyst;