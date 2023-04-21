--Create Tables and verify data

--Create departments table
Create Table departments(
	dept_no VARCHAR(5) Primary Key NOT Null,
	dept_name VARCHAR(30)
);

--Create dept_emp table
Create Table dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(5)   NOT NULL,
    Primary Key (emp_no, dept_no),
	Foreign Key (emp_no) references employees(emp_no),
	Foreign Key (dept_no) references departments(dept_no)
);

--Create dept_manager
Create Table dept_manager (
	dept_no VARCHAR(5) NOT NULL,
	emp_no int NOT NULL,
	Primary Key(dept_no, emp_no),
	Foreign Key (dept_no) references departments(dept_no),
	Foreign Key (emp_no) references employees(emp_no)
);

--Create employees table
Create Table employees (
	emp_no int PRIMARY KEY NOT NULL,
	emp_title VARCHAR(5),
	birthdate DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE,
	Foreign Key (emp_title) references titles(title_id)
);

--Create salaries table
Create Table salaries (
	emp_no int,
	salary int,
	Primary Key (emp_no,salary),
	Foreign Key (emp_no) references employees(emp_no)
);

--Create titles table
Create Table titles (
	title_id VARCHAR(5) PRIMARY KEY NOT NULL,
	title VARCHAR(30)
);