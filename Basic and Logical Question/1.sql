# Creating a new database as "ankitbansal".
--------------------------------------------
CREATE DATABASE IF NOT EXISTS ankitbansal;



# Using "ankitbansal" database
--------------------------------
USE ankitbansal;



# Creating "employee" table inside "ankitbansal" database
------------------------------------------------------------
CREATE TABLE IF NOT EXISTS ankitbansal.employee(
emp_id	INTEGER PRIMARY KEY,
emp_name VARCHAR(255) NOT NULL,
department_id INTEGER NOT NULL,
salary INTEGER);



# Displaying the structure of the "employee" table
----------------------------------------------------
DESC employee;



# Inserting records inside "employee" table.
---------------------------------------------
INSERT INTO ankitbansal.employee(emp_id, emp_name, department_id, salary) VALUES
(1,'ABC',1,10000),
(2,'DEF',1,15000),
(3,'GHI',1,10000),
(4,'JKL',1,5000),
(5,'MNO',2,12000),
(6,'PQR',2,12000),
(7,'STU',2,9000),
(8,'VWX',2,5000);



# Displaying all the records from "employee" table.
----------------------------------------------------
SELECT * FROM ankitbansal.employee;



# 1. Find all the employee who's salary is greater than 10000.
----------------------------------------------------------------
SELECT * 
FROM ankitbansal.employee
WHERE employee.salary > 10000;



# 2.Give me those departments whose average salary is greater than 9000.
-------------------------------------------------------------------------
SELECT department_id,AVG(salary) AS average_department_salary 
FROM ankitbansal.employee
GROUP BY department_id
HAVING average_department_salary > 9000;



# 3. First, find employees with salaries over 10000.Then, calculate the average salary for each department.
# Finally, give me a list of departments where the salaries are more than 10000.
-------------------------------------------------------------------------
SELECT department_id, AVG(salary) AS average_department_salary
FROM ankitbansal.employee
WHERE salary > 10000
GROUP BY department_id
HAVING average_department_salary > 10000;
