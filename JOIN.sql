-- Active: 1778232352309@@127.0.0.1@5432@ph
-- Active: 1778232352309@@127.0.0.1@5432@ph
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(50)
);

INSERT INTO users(user_name) 
VALUES('Akash'),
('Monir'),
('Polash'),
('Sakib'),
('Anik');

ALTER TABLE users RENAME id to user_id;

SELECT * FROM users


CREATE TABLE post(
 post_id SERIAL PRIMARY KEY,
 title TEXT,
 user_id INTEGER REFERENCES users(user_id)
);


ALTER TABLE post ALTER COLUMN user_id set NOT NULL;
ALTER TABLE post ALTER COLUMN user_id drop NOT NULL







INSERT INTO post(title, user_id)
VALUES ('Hi my name is Akash and this is the 1st post',1),
('Hi my name is Akash and this is the 2nd post',1),
('Hi my name is Monir and this is the 1st post',2),
('Hi my name is Monir and this is the 2nd post',2),
('Hi my name is Monir and this is the 3rd post',2),
('Hi my name is Sakib and this is the 1st post',4)



INSERT INTO post(title, user_id)
VALUES ('Hi my name is Sakib and this is the 1st post',4);

INSERT INTO post(title, user_id)
VALUES ('Hi my name is Sakib and this is the 1st post',NULL)


SELECT * FROM post;
SELECT * FROM users



SELECT user_name, title FROM post
INNER JOIN users ON post.user_id = users.user_id


SELECT title, user_name FROM post
LEFT JOIN users ON users.user_id = post.user_id


SELECT user_name, title FROM post
RIGHT JOIN users ON post.user_id = users.user_id




SELECT title, user_name FROM post 
FULL JOIN users ON post.user_id = users.user_id




