-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- List the employee number, last name, first name, sex, and salary of each employee
SELECT employees.emp_no, 
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- List the first name, last name, and hire date for the employees who were hired in 1986 
SELECT emp_no, 
	last_name,
	first_name,
	hire_date
FROM employees
WHERE DATE_PART('year',hire_date) = 1986
ORDER BY emp_no;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- List the manager of each department along with their department number, department name, employee number, last name, and first name 

SELECT departments.dept_name,
	dept_manager.dept_no, 
	employees.emp_no,
	employees.last_name,
	employees.first_name
FROM dept_manager
JOIN departments
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no
ORDER BY departments.dept_name;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
SELECT 