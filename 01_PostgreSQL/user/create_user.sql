-- Create a new database user
CREATE USER hospital 
IDENTIFIED BY 'securekey';

-- Grant privileges
GRANT CONNECT, RESOURCE TO hospital;

-- List all users and their account statuses
SELECT username, account_status
FROM dba_users;

-- List all objects owned by the user
SELECT object_name, object_type
FROM user_objects;