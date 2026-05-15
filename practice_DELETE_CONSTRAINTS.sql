-- Active: 1778232352309@@127.0.0.1@5432@ph
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20)
);


INSERT INTO users(name) 
VALUES('Akash'),
('Monir'),
('Polash'),
('Sakib'),
('Anik');




CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);


CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
);


CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INTEGER REFERENCES users(id) ON DELETE SET DEFAULT DEFAULT 2
);



CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INTEGER REFERENCES users(id) ON DELETE RESTRICT
)



INSERT INTO post(title, user_id)
VALUES ('Hi my name is Akash and this is the 1st post',1),
('Hi my name is Akash and this is the 2nd post',1),
('Hi my name is Monir and this is the 1st post',2),
('Hi my name is Monir and this is the 2nd post',2),
('Hi my name is Monir and this is the 3rd post',2),
('Hi my name is Sakib and this is the 1st post',4)


DROP TABLE post;
DROP TABLE users

SELECT * FROM post;

DELETE FROM users WHERE id=4