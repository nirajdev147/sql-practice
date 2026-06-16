CREATE DATABASE college;
USE college;


CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

ALTER TABLE student
ADD COLUMN stu_age INT;

ALTER TABLE student
DROP COLUMN stu_age;

ALTER TABLE stu
RENAME to student;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 24;

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE student
CHANGE COLUMN age stu_age INT;

INSERT INTO student
(id, name, marks, grade , city, stu_age)
VALUES
(106, "Chanel Preston", 50, "B" , "LosAngeles" , 100);

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO dept
(id, name )
VALUES
(101, "Computer Science"),
(102, "IT");

UPDATE dept
SET id = 111
WHERE id = 101;

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES  dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacher
(id, name, dept_id )
VALUES
(101, "Niraj Dev", 101),
(102, "Keshab Pokhrel", 102);



SELECT *FROM teacher;

INSERT INTO student 
(id, name, marks, grade, city) 
VALUES
(101, "Niraj Dev", 45, "C", "Biratnagar");

INSERT INTO student 
(id, name, marks, grade, city) 
VALUES
(102, "kartik dev", 54, "B", "Okhaldunga"),
(103, "keshab Pokhrel", 55, "B", "Illam"),
(104, "Niraj Das", 50, "B", "Biratnagar");



SELECT * 
FROM student 
WHERE marks BETWEEN 40 AND 50 ;

SELECT * 
FROM student 
WHERE city IN ("Kathmandu", "Pokhara");  

SELECT * 
FROM student 
WHERE city NOT IN ("Kathmandu", "Pokhara"); 

SELECT *
FROM student
where marks > 40
LIMIT 3;

SELECT *
FROM student
ORDER BY marks ASC;

SELECT *
FROM student
ORDER BY marks DESC
LIMIT 3;

SELECT MAX(marks)
FROM student;

SELECT MIN(marks)
FROM student;

SELECT AVG(marks)
FROM student;

SELECT COUNT(id)
FROM student;

SELECT city, count(id)
FROM student
GROUP BY city;

SELECT city, avg(marks)
FROM student
GROUP BY city
ORDER BY city;


SELECT grade, count(id)
FROM student
GROUP BY grade
ORDER BY grade;

SELECT city
FROM student
WHERE grade = "B"
GROUP BY city
HAVING MAX(marks) >= 50
ORDER BY city DESC;



UPDATE student
SET grade = "A"
WHERE grade = "B";


SELECT *FROM student;

TRUNCATE TABLE student;