CREATE TABLE departments (
    dept_no VARCHAR(5) PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY(emp_title) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
    emp_no INTEGER PRIMARY KEY,
    salary INTEGER NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR(5),
	PRIMARY KEY (dept_no,emp_no),
    FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(5) NOT NULL,
    emp_no INTEGER PRIMARY KEY,
    FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);