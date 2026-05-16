-- Active: 1778232352309@@127.0.0.1@5432@ph




/* 

 @Scaler function
    - Upper() Convert a string on uppercase
    - Lower() Convert a string on lowercase
    - Concat() Concate two or more string
    - Length() Return the number of character in a string
 */



-- Upper() This function convert a string on uppercase
SELECT upper(country) FROM students


-- Lower() This function convert a string to lowercase
SELECT lower(country) FROM students

SELECT * FROM students

-- Concat() This function return total length of character in a string
SELECT length(country) FROM students


SELECT concat(first_name, ' ', age) FROM students