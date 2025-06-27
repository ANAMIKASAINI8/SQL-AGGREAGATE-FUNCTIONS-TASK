CREATE DATABASE company;
USE company;

CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    age INT
);
INSERT INTO employees VALUES
(1, 'Anjali', 'IT', 60000, 25),
(2, 'Rahul', 'HR', 50000, 30),
(3, 'Priya', 'IT', 75000, 28),
(4, 'Amit', 'Finance', 80000, 35),
(5, 'Neha', 'HR', 45000, 29),
(6, 'Raj', 'Finance', 70000, 40);


-- 1. Count of Employees in Each Department

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- 2. Average Salary in Each Department

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- 3. Total Salary by Department Having Total > 100000

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;

-- 4. Round the Average Salary

SELECT department, ROUND(AVG(salary), 2) AS rounded_avg_salary
FROM employees
GROUP BY department;

-- 5. Max and Min Salary

SELECT department, MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees
GROUP BY department;

-- 6. Count Distinct Departments

SELECT COUNT(DISTINCT department) AS distinct_departments
FROM employees;