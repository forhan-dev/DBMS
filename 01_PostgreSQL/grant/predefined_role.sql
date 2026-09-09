GRANT dba
TO admin_user;


GRANT resource
TO dev_user;

GRANT connect
TO trainee_user;

GRANT connect, resource
TO analyst_user;

GRANT dba, resource
TO admin_user;


GRANT resource
TO user1, user2;
