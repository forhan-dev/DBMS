REVOKE INSERT
ON students
FROM user1;

REVOKE UPDATE
ON employees
FROM hr_user;

-- Restricting specific columns for update
REVOKE UPDATE (salary, department)
ON employees
FROM manager_user;

REVOKE DELETE
ON orders
FROM sales_user;

REVOKE EXECUTE
ON calculate_bonus
FROM manager_role;
