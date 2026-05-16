-- Active: 1778232352309@@127.0.0.1@5432@ph
SELECT * FROM students


UPDATE students
set email = 'default@gmail.com'
WHERE email is NULL


DELETE FROM students
WHERE country = 'India'
