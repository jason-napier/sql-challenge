--Data Analysis

-- 1. List the employee number, last name, first name, sex, and salary of each employee.
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
From employees as e
Join salaries as s
ON e.emp_no = s.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
Select e.first_name, e.last_name, e.hire_date
From employees as e
Where hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select d.dept_no, d.dept_name, d_m.emp_no, e.last_name, e.first_name
From employees As e
Join dept_manager AS d_m
ON e.emp_no = d_m.emp_no
Join departments As d
On d_m.dept_no = d.dept_no

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
From employees as e
Join dept_emp as d_e
On e.emp_no = d_e.emp_no
Join departments as d
On d_e.dept_no = d.dept_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex
From employees
Where first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
Select e.emp_no, e.last_name, e.first_name
From employees as e
Join dept_emp as d_e
On e.emp_no = d_e.emp_no
Join departments as d
On d_e.dept_no = d.dept_no
Where d.dept_name = 'Sales'

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select e.emp_no, e.last_name, e.first_name, d.dept_name
From employees as e
Join dept_emp as d_e
On e.emp_no = d_e.emp_no
Join departments as d
On d_e.dept_no = d.dept_no
Where d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;