-- Active: 1778232352309@@127.0.0.1@5432@ph

/* 
@Aggregate function
    - Min() This function return the minimun value of the table set
    - Max() This function return the Maximum value of the table set
    - Avg() Calculate the average of a set of values
    - Sum() Calculate the sum of a set of values
    - Count() Count the number of rows in a set

 */

-- Calculate the average of students age
 SELECT AVG(age) FROM students


--  Find the maximum age
SELECT MAX(age) FROM students


-- Find the minimun age
SELECT MIN(age) FROM students


SELECT count(*) from students


SELECT SUM(age) from students
