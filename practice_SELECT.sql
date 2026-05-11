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
('John', 'Smith', 20, 'A+', 'Computer Science', 'john.smith@example.com', '2005-03-15', 'O+', 'USA'),

('Emma', 'Johnson', 22, 'B+', 'Software Engineering', 'emma.johnson@example.com', '2003-07-22', 'A+', 'UK'),

('Liam', 'Brown', 21, 'A', 'Mathematics', 'liam.brown@example.com', '2004-01-10', 'B+', 'Canada'),

('Olivia', 'Davis', 19, 'A-', 'Physics', 'olivia.davis@example.com', '2006-05-18', 'AB+', 'Australia'),

('Noah', 'Wilson', 23, 'B', 'Chemistry', 'noah.wilson@example.com', '2002-11-09', 'O-', 'Germany'),

('Sophia', 'Taylor', 20, 'A+', 'Biology', 'sophia.taylor@example.com', '2005-08-14', 'A-', 'France'),

('James', 'Anderson', 24, 'C+', 'Economics', 'james.anderson@example.com', '2001-02-28', 'B-', 'Italy'),

('Isabella', 'Thomas', 18, 'A', 'English', 'isabella.thomas@example.com', '2007-04-11', 'O+', 'Spain'),

('Benjamin', 'Moore', 22, 'B+', 'History', 'benjamin.moore@example.com', '2003-09-30', 'AB-', 'Netherlands'),

('Mia', 'Martin', 21, 'A-', 'Political Science', 'mia.martin@example.com', '2004-06-25', 'A+', 'Sweden'),

('Lucas', 'Lee', 20, 'B', 'Computer Science', 'lucas.lee@example.com', '2005-12-17', 'B+', 'South Korea'),

('Charlotte', 'Perez', 23, 'A+', 'Data Science', 'charlotte.perez@example.com', '2002-10-05', 'O+', 'Brazil'),

('Henry', 'White', 19, 'C', 'Accounting', 'henry.white@example.com', '2006-01-19', 'A-', 'Japan'),

('Amelia', 'Harris', 22, 'B-', 'Marketing', 'amelia.harris@example.com', '2003-03-27', 'AB+', 'India'),

('Alexander', 'Clark', 21, 'A', 'Civil Engineering', 'alexander.clark@example.com', '2004-07-08', 'O-', 'China'),

('Evelyn', 'Lewis', 20, 'A+', 'Architecture', 'evelyn.lewis@example.com', '2005-09-12', 'B-', 'Bangladesh'),

('Daniel', 'Walker', 24, 'B+', 'Law', 'daniel.walker@example.com', '2001-05-03', 'A+', 'Norway'),

('Harper', 'Hall', 18, 'A-', 'Philosophy', 'harper.hall@example.com', '2007-02-21', 'O+', 'New Zealand'),

('Matthew', 'Allen', 23, 'B', 'Medicine', 'matthew.allen@example.com', '2002-06-16', 'AB-', 'Pakistan'),

('Ella', 'Young', 21, 'A', 'Artificial Intelligence', 'ella.young@example.com', '2004-11-29', 'B+', 'Singapore');


-- IF WE WANT TO SEE ALL THE COLUMN INTO THE TABLE WE CAN USE (SELECT * FROM) * STAR MEANS EVERYTHING
SELECT * FROM students


-- IF WE WANT TO SPECIFIC COLUMN DATA LIKE (blood_group, email) WE CAN USE THIS FORMATE (SELECT blood_group, email FROM STUDENT)
SELECT blood_group, email FROM students;



-- ASCENDING AND DESCENDING ORDER
SELECT * FROM students ORDER BY age ASC;



SELECT email as user_email FROM students;



-- NOW WE ARE GOING TO LEARN "WHERE KEYWORD" IF WE NEED TO CONDITIONAL SEARCH THEN WE CAN USE "WHERE KEYWORD"
SELECT * FROM students
    WHERE country = 'USA';



-- Select students with "B" Grade in "Computer Science"
SELECT * FROM students
    WHERE grade ='B' AND course = 'Computer Science'


-- Select Students with specific blood group (A+)
SELECT * FROM students
    WHERE blood_group = 'A+'



-- Select student From the USA Or Australia
SELECT * FROM students
    WHERE country = 'USA' OR country = 'Australia';



-- Select student From the USA Or Australia And age is 20
SELECT * FROM students
    WHERE (country = 'USA' OR country = 'Australia') AND age = 20;


-- Select student with a grade of "A" or "B" in Marketing or English
SELECT * FROM students
    WHERE (grade = 'A' OR grade = 'B') and (course = 'Marketing' OR course = 'English');



-- Select students where age is less or equal 20
SELECT * FROM students
    WHERE age <=20

