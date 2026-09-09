-- Specific to objects(tables, views, procedures)
GRANT SELECT, INSERT
ON students
TO user1;

GRANT UPDATE
ON employees
TO hr_user;

GRANT UPDATE (salary, department)
ON employees
TO manager_user;

GRANT DELETE
ON orders
TO sales_user;

GRANT EXECUTE
ON calculate_bonus
TO manager_role;
