SELECT TRIM('   Oracle   ') AS trimmed_both
FROM dual;

SELECT TRIM('x' FROM 'xxxDataxxx') AS cleaned_text
FROM dual;


SELECT LTRIM('   Oracle   ') AS trimmed_left
FROM dual;

SELECT LTRIM('xxxDatabase', 'x') AS cleaned_text
FROM dual;

SELECT RTRIM('   Oracle   ') AS trimmed_right
FROM dual;

SELECT RTRIM('Data####', '#') AS cleaned_text
FROM dual;
