-- Active: 1778232352309@@127.0.0.1@5432@ph

-- Here we can see the data where country is 'UK' or 'USA'
SELECT * FROM students
    WHERE country = 'USA' OR country = 'UK'


-- We can use "IN" operator instead of "OR"
SELECT * FROM students
    WHERE country IN('USA', 'UK')




SELECT * FROM students
    WHERE age BETWEEN 18 and 22



SELECT * FROM students
    WHERE first_name LIKE '%a'



-- The ILIKE is a casesensetive
SELECT * FROM students
    WHERE first_name ILIKE 'e%'