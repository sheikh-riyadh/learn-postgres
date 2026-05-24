-- Active: 1778232352309@@127.0.0.1@5432@ph

-- Show the students name on the "uppercase"
SELECT UPPER(first_name) FROM students


-- Show the students first_name and last_name together
SELECT concat(first_name, ' ', last_name) FROM students;


-- Show unique country in the students table
SELECT DISTINCT country FROM students




-- Create function without parameter
CREATE FUNCTION emp_count()
RETURNS INT
LANGUAGE SQL as
$$
    SELECT COUNT(*) FROM employees
$$


SELECT emp_count()


CREATE FUNCTION get_employee(p_emp_id INT)
RETURNS TABLE(
    employee_id INT,
    employee_name VARCHAR(50),
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
)
LANGUAGE SQL as
$$
    SELECT * FROM employees
    WHERE employee_id = p_emp_id
$$



SELECT * FROM get_employee(22)