-- Active: 1778232352309@@127.0.0.1@5432@ph
SELECT * FROM students
ORDER BY student_id ASC
LIMIT 5



SELECT * FROM students
    ORDER BY student_id ASC OFFSET 5