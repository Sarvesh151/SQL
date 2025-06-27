create database company;
use company;
SELECT * FROM employee_data;
SELECT*FROM employee_data WHERE age=40;
SELECT*FROM employee_data WHERE salary<=50000;
SELECT*FROM employee_data WHERE department="HR";
SELECT*FROM employee_data WHERE joining_date='04-04-2021';
SELECT*FROM employee_data WHERE age=45 AND department="HR";
SELECT department FROM employee_data WHERE age=34
 GROUP BY department 
 ORDER BY department ASC; 
 CREATE TABLE employee_data2(
 employee_id INT PRIMARY KEY ,
name VARCHAR(50),
country VARCHAR(30),
state VARCHAR(20),
salary INT,
age INT NOT NULL
);
SELECT * FROM employee_data2 ;
SELECT * FROM employee_data ;
SELECT * FROM employee_data
INNER JOIN employee_data2
ON employee_data.employee_id=employee_data2.employee_id;
SELECT * FROM employee_data
LEFT JOIN employee_data2
ON employee_data.employee_id=employee_data2.employee_id;
SELECT * FROM employee_data
RIGHT JOIN employee_data2
ON employee_data.employee_id=employee_data2.employee_id;
SET SQL_SAFE_UPDATES=0;
UPDATE employee_data
SET department="Data_Analytics"
WHERE department="HR";
SELECT * FROM employee_data;
DELETE FROM employee_data
WHERE age>33;
SELECT * FROM employee_data;
alter TABLE employee_data
ADD column PF int ;
SELECT * FROM employee_data;
alter TABLE employee_data
drop column PF  ;
SELECT * FROM employee_data;
SELECT age FROM employee_data;
SELECT count(age) FROM employee_data;
SELECT max(age) FROM employee_data;
SELECT min(age) FROM employee_data;
SELECT sum(age) FROM employee_data;
SELECT avg(age) FROM employee_data;
CREATE VIEW Avg_Salary_By_Dept AS
SELECT 
    department,
    COUNT(*) AS total_employees,
    AVG(salary) AS avg_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM Employee_data
GROUP BY department;
select *from Employee_data;
CREATE VIEW Emp_By_Age_Group AS
SELECT
    CASE 
        WHEN age < 25 THEN 'Under 25'
        WHEN age BETWEEN 25 AND 34 THEN '25-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        WHEN age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS age_group,
    COUNT(*) AS total_employees
FROM Employee_data
GROUP BY age_group;
select *from Employee_data;
SELECT * FROM Avg_Salary_By_Dept WHERE avg_salary > 50000;
SELECT * FROM Emp_By_Age_Group;

CREATE INDEX idx_department ON Employee_data(department);
select *from Employee_data;

