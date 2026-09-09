-- Grant CONNECT role (basic login rights)
GRANT CONNECT TO trainee_user;

-- Grant RESOURCE role (schema creation privileges)
GRANT RESOURCE TO dev_user;

-- Grant DBA role (full administrative rights)
GRANT DBA TO admin_user;

-- analyst_user has been granted both CONNECT and RESOURCE roles
GRANT CONNECT, RESOURCE TO analyst_user;
