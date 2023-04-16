-- Creating table schema

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Create table employees
DROP TABLE IF EXISTS employees CASCADE;

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5),
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Create table departments
DROP TABLE IF EXISTS departments CASCADE;

CREATE TABLE departments (
  dept_no VARCHAR(10),
  dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

select * from departments

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
--Create table dept_emp
DROP TABLE IF EXISTS dept_emp CASCADE;

-- this is a many to many but it doesn't want to work?
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL
); 

select * from dept_emp

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- Create table dept_managers
DROP TABLE IF EXISTS dept_manager CASCADE;

CREATE TABLE dept_manager (
 dept_no VARCHAR (10) references departments(dept_no),
 emp_no INT
);

select * from dept_manager

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
--Creating salaries table
DROP TABLE IF EXISTS salaries CASCADE;

CREATE TABLE salaries (
	emp_no INT,
	salary INT
);

select * from salaries

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
--Creating titles table
DROP TABLE IF EXISTS titles CASCADE;

CREATE TABLE titles (
	title_id VARCHAR(5),
	title VARCHAR(20) NOT NULL
);

select * from titles