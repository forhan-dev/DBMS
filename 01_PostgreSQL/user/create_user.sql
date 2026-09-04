-- Create a new database user
CREATE USER forhan 
IDENTIFIED BY 'P@ssw0rd';

-- Grant privileges
GRANT CONNECT, RESOURCE TO forhan;

-- List all objects owned by the user
SELECT object_name, object_type
FROM user_objects;

-- List all users and their account statuses
SELECT username, account_status
FROM dba_users;