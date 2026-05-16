-- Active: 1778232352309@@127.0.0.1@5432@ph

-- Show the students name on the "uppercase"
SELECT UPPER(first_name) FROM students


-- Show the students first_name and last_name together
SELECT concat(first_name, ' ', last_name) FROM students;


-- Show unique country in the students table
SELECT DISTINCT country FROM students
