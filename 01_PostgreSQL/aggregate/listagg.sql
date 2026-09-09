SELECT department_id,
       LISTAGG(first_name, ', ') WITHIN GROUP (ORDER BY first_name) AS employee_names
FROM employees
GROUP BY department_id;


SELECT department_id,
       LISTAGG(job_title, ' | ') WITHIN GROUP (ORDER BY job_title) AS job_titles
FROM employees
GROUP BY department_id;
