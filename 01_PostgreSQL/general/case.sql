SELECT course_name, credits,
       CASE credits
            WHEN 3 THEN 'Standard'
            WHEN 4 THEN 'Advanced'
            ELSE 'Other'
       END AS course_type
FROM courses;

SELECT employee_id, salary,
       CASE 
         WHEN salary > 10000 THEN 'High'
         WHEN salary BETWEEN 5000 AND 10000 THEN 'Medium'
         ELSE 'Low'
       END AS salary_band
FROM employees;

SELECT employee_id, salary
FROM employees
ORDER BY CASE 
        WHEN salary > 10000 THEN 1
        WHEN salary BETWEEN 5000 AND 10000 THEN 2
        ELSE 3
    END;
