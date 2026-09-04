-- Create a sequence for auto-generated IDs
CREATE SEQUENCE student_seq
START WITH 1
INCREMENT BY 1
NOCACHE 
NOCYCLE;

-- Insert a new student record
INSERT INTO students (student_id, name, age)
VALUES (student_seq.NEXTVAL, 'Rahim', 20);

-- Retrieve the next value of the sequence
SELECT student_seq.NEXTVAL FROM dual;

--- Retrieve the current value of the sequence
SELECT student_seq.CURRVAL FROM dual;

--- List all sequences in the current schema
SELECT sequence_name, increment_by, min_value, max_value, cache_size, cycle_flag
FROM user_sequences;
