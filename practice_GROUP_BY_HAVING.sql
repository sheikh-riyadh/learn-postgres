-- Active: 1778232352309@@127.0.0.1@5432@ph

SELECT * FROM students
WHERE email = 'default@gmail.com'


-- Here we are group according to blood group using "GROUP BY KEYWORD"
SELECT blood_group, count(*) FROM students 
    GROUP BY blood_group



-- Now we are applying condition ON GROUP using "HAVING KEYWORD" HAVING WORK ONLY GROUP BY
SELECT blood_group FROM students
WHERE email = 'default@gmail.com'
GROUP BY blood_group
HAVING count(*)>=2