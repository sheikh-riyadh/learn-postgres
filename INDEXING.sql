-- Active: 1778232352309@@127.0.0.1@5432@ph
CREATE TABLE smart_employee (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    salary NUMERIC
);

INSERT INTO smart_employee(name, email, salary)
SELECT
    'Employee ' || g,
    'employee' || g || '@gmail.com',
    (random() * 50000 + 20000)::numeric
FROM generate_series(1, 1000000) AS g;

EXPLAIN ANALYZE
SELECT * FROM smart_employee WHERE email = 'employee999946@gmail.com';


CREATE INDEX idx_smart_employee_email
ON smart_employee(email);