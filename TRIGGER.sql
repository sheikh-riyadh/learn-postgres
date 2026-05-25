-- Active: 1778232352309@@127.0.0.1@5432@ph
CREATE TABLE "user"(
    user_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    email VARCHAR(100)
);



INSERT INTO "user"(name, email) VALUES ('Riyadh', 'riyadh@gmail.com'),('Polash','polash@gmail.com'),('Sakib', 'sakib@gmail.com');


SELECT * FROM "user"

CREATE TABLE user_audit(
    user_name VARCHAR(50),
    deletedAt TIMESTAMP
);



CREATE or REPLACE FUNCTION audit_records()
RETURNS TRIGGER
LANGUAGE plpgsql AS 
$$
    BEGIN
    INSERT INTO user_audit(user_name, deletedAt) 
    VALUES(OLD.name, now());
    RETURN OLD;
    END
$$;




CREATE TRIGGER my_trigger
BEFORE DELETE on "user"
FOR EACH ROW
EXECUTE FUNCTION audit_records();


SELECT * FROM user_audit;

DELETE FROM "user" WHERE user_id = 3;

DROP my_trigger;