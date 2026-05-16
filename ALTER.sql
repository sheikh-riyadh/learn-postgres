-- HOW CAN WE CREATE TABLE
CREATE TABLE employee(
employee_ID SERIAL PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
designation VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE
);


-- HOW CAN WE INSERT DATA INTO TABLE 
INSERT INTO employee(employee_id, employee_name, designation, email)
VALUES(1,'Riyadh', 'Full-stack developer', 'sheikh@gmail.com'),
(2,'Polash', 'Video editor', 'polash@gmail.com'),
(3,'Sakib', 'Graphic designar', 'sakib@gmail.com');


-- HOW WE CAN CHANGE THE TABLE NAME 
ALTER TABLE employee RENAME TO emp;

ALTER TABLE emp RENAME to employee;


-- CHANGE COLUMN NAME 
ALTER TABLE employee
    RENAME COLUMN employee_ID to emp_id

ALTER TABLE employee
    RENAME COLUMN employee_name to emp_name


-- HOW WE CAN EXTENDS THE SIZE
ALTER TABLE employee
    ALTER COLUMN designation type VARCHAR(50);


-- HOW WE CAN REMOVE OR ADD CONSTRAINTS
ALTER TABLE employee
    ALTER COLUMN designation drop NOT NULL; -- REMOVE CONSTRAINTS


-- ADD CONSTRAINTS
ALTER TABLE employee
    ALTER COLUMN designation SET NOT NULL;



SELECT * FROM employee;


-- HOW WE CAN DELETE ALL THE TABLE DATA
TRUNCATE TABLE employee;



-- HOW WE CAN DELETE DATABASE
DROP TABLE employee

DROP TABLE student;


-- HOW WE CAN ADD CONSTRAINT INTO EXISTING TABLE
ALTER TABLE employee
ADD CONSTRAINT unique_employee_id_and_designation
UNIQUE (employee_id, designation);



-- HOW WE CAN DROP THE CONSTRAINT
ALTER TABLE employee
    DROP constraint unique_employee_id_and_designation;


