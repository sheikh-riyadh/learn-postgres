-- Active: 1778232352309@@127.0.0.1@5432@ph

SELECT * FROM students

-- We want to see all the data where email not null
SELECT * FROM students
    WHERE email IS NOT NULL



-- Here we want to see where email is null
SELECT * FROM students
    WHERE email IS NULL



-- Here we set default data where is email null
SELECT COALESCE(email, 'Email not provided') FROM students