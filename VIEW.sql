-- Active: 1778232352309@@127.0.0.1@5432@ph

CREATE VIEW dep_avg_salary 
AS SELECT department_name, AVG(salary) FROM employees
GROUP BY department_name


SELECT * FROM dep_avg_salary