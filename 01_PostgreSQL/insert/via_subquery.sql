-- Insert data into target table from source table
INSERT INTO graduates (student_id, name)
SELECT student_id, name
FROM students
WHERE age > 21;

-- Insert with aggregation
INSERT INTO sales_summary (customer_id, total_amount)
SELECT customer_id, SUM(amount)
FROM orders
GROUP BY customer_id;

-- Insert with join
INSERT INTO enrollment_summary (student_id, course_name)
SELECT s.student_id, c.course_name
FROM students s
JOIN courses c 
ON s.course_id = c.course_id;
