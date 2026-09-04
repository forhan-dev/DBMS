-- Update with subquery
UPDATE students s
SET department = (
    SELECT c.department
    FROM courses c
    WHERE s.course_id = c.course_id
);

-- Update with subquery
UPDATE employees e
SET salary = (
    SELECT p.new_salary
    FROM payroll p
    WHERE e.emp_id = p.emp_id
)
WHERE EXISTS (
    SELECT 1
    FROM payroll p
    WHERE e.emp_id = p.emp_id
);

-- Update with correlated subquery
UPDATE customers c
SET total_orders = (
    SELECT COUNT(*)
    FROM orders o
    WHERE o.customer_id = c.customer_id
);