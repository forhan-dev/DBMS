DELETE FROM orders
WHERE customer_id IN (
    SELECT customer_id
    FROM customers
    WHERE status = 'Inactive'
);

DELETE FROM students
WHERE student_id NOT IN (
    SELECT student_id
    FROM enrollments
);
