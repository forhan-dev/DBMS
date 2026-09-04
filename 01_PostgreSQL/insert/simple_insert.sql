-- Insert specific columns
INSERT INTO students (student_id, name, age, department)
VALUES (1, 'Rahim', 20, 'CSE');

-- Insert full row
INSERT INTO students 
VALUES (2, 'Karim', 22, 'EEE');

-- Insert multiple rows
INSERT INTO students (student_id, name, age, department)
VALUES (2, 'Karim', 22, 'EEE'),
       (3, 'Ayesha', 19, 'BBA'),
       (4, 'Nusrat', 21, 'CSE');
