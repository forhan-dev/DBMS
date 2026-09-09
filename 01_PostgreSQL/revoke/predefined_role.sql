-- admin_user lost administrative privileges
REVOKE dba
FROM admin_user;

-- dev_user lost development privileges
REVOKE resource
FROM dev_user;

-- trainee_user lost login privileges
REVOKE connect
FROM trainee_user;

-- analyst_user lost both login and development privileges
REVOKE connect, resource
FROM analyst_user;

REVOKE resource
FROM user1, user2;
