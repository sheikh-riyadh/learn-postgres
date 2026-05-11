-- Active: 1778232352309@@127.0.0.1@5432@ph
create table students(
    student_id SERIAL PRIMARY KEY NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)


INSERT INTO students 
(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('Rahim', 'Ahmed', 20, 'A+', 'Computer Science', 'rahim@gmail.com', '2004-03-15', 'B+', 'Bangladesh'),

('Karim', 'Hasan', 22, 'A', 'Software Engineering', 'karim@gmail.com', '2002-07-21', 'O+', 'Bangladesh'),

('Nusrat', 'Jahan', 21, 'A-', 'Data Science', 'nusrat@gmail.com', '2003-01-10', 'A+', 'Bangladesh'),

('Tanvir', 'Islam', 23, 'B+', 'Electrical Engineering', 'tanvir@gmail.com', '2001-11-05', 'AB+', 'Bangladesh'),

('Mim', 'Akter', 20, 'A+', 'Computer Science', 'mim@gmail.com', '2004-06-18', 'O-', 'Bangladesh'),

('Sabbir', 'Hossain', 24, 'B', 'Mechanical Engineering', 'sabbir@gmail.com', '2000-09-25', 'B-', 'Bangladesh'),

('Anika', 'Rahman', 22, 'A', 'Cyber Security', 'anika@gmail.com', '2002-12-12', 'A-', 'Bangladesh');


-- IF WE WANT TO SEE ALL THE COLUMN INTO THE TABLE WE CAN USE (SELECT * FROM) * STAR MEANS EVERYTHING
SELECT * FROM students


-- IF WE WANT TO SPECIFIC COLUMN DATA LIKE (blood_group, email) WE CAN USE THIS FORMATE (SELECT blood_group, email FROM STUDENT)
SELECT (blood_group, email) FROM students;



-- ASCENDING AND DESCENDING ORDER
SELECT * FROM students ORDER BY age ASC;