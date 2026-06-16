CREATE DATABASE xyz;
USE xyz;

CREATE TABLE employee_info(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT NOT NULL
);


INSERT INTO  employee_info VALUES (1, "Anil Dev", 25000);
INSERT INTO  employee_info VALUES (2, "Niraj Dev", 5000);
INSERT INTO  employee_info VALUES (3, "Kartik Dev", 42000);

DELETE FROM employee_info
WHERE id = 2;

UPDATE employee_info
SET name = "Kartik Dev"
WHERE id = 3; 

SELECT *FROM employee_info;

CREATE TABLE temp1(
id INT NOT NULL,
name VARCHAR(50),
age INT,
city VARCHAR(50),
PRIMARY KEY (id)
);


CREATE TABLE emp(
id INT,
salary INT DEFAULT 5000
);

INSERT INTO emp (id) VALUES (101);

SELECT * FROM emp;

