CREATE DATABASE college1;
USE college1;


CREATE TABLE student1(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO student1
(id, name)
VALUES
(101, "alisa"),
(102, "alex"),
(103, "bob");

CREATE TABLE course1(
id INT PRIMARY KEY,
course VARCHAR(50)
);

INSERT INTO course1
(id, course)
VALUES
(102, "English"),
(103, "Math"),
(104, "Science"),
(105, "Computer Science");


SELECT *
FROM student1 as s
INNER JOIN course1 as c
ON s.id = c.id;

SELECT *
FROM student1 as s
LEFT JOIN course1 as c
ON s.id = c.id;

SELECT *
FROM student1 as s
RIGHT JOIN course1 as c
ON s.id = c.id;


SELECT *
FROM student1 as s
LEFT JOIN course1 as c
ON s.id = c.id
UNION
SELECT *
FROM student1 as s
RIGHT JOIN course1 as c
ON s.id = c.id;


SELECT *
FROM student1 as s
LEFT JOIN course1 as c
ON s.id = c.id
WHERE c.id is NULL;


SELECT *
FROM student1 as s
RIGHT JOIN course1 as c
ON s.id = c.id
WHERE s.id is NULL;



SELECT *
FROM student1 as s
LEFT JOIN course1 as c
ON s.id = c.id
WHERE c.id is NULL
UNION
SELECT *
FROM student1 as s
RIGHT JOIN course1 as c
ON s.id = c.id
WHERE s.id is NULL;



CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT
);

INSERT INTO employee
(id, name, manager_id)
VALUES
(101, "adam", 102),
(102, "alisa", 103),
(103, "bob", NULL),
(104, "casey", 101);

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
On a.id = b.manager_id;


CREATE TABLE student2(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);


INSERT INTO student2
(rollno, name, marks, grade, city)
VALUES
(101, "Niraj", 75, "B", "Biratnagar"),
(102, "Alina", 71, "B", "Dharan"),
(103, "Alisa", 80, "A", "Rajbiraj"),
(104, "Pramisa", 88, "A", "Kathmandu"),
(105, "Keshab", 91, "A", "Illam"),
(106, "Nikesh", 85, "A", "Ithari");


SELECT *FROM student2;

SELECT AVG(marks)
FROM student2;

SELECT name 
FROM student2
WHERE marks > 81.6667;


SELECT name, marks
FROM student2
WHERE marks > (SELECT AVG(marks) FROM student2);


SELECT rollno
FROM student2
WHERE rollno % 2 = 0;


SELECT name, rollno
FROM student2
WHERE rollno IN (102, 104, 106);

SELECT name, rollno
FROM student2
WHERE rollno IN (
SELECT rollno
FROM student2
WHERE rollno % 2 = 0);


CREATE VIEW view2 AS
SELECT rollno, name, marks FROM student2;

SELECT *FROM view2;