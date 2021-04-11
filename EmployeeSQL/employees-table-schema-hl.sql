drop table dept_emp;
CREATE TABLE departments(
    dept_no character varying primary key NOT NULL,
    dept_name character varying NOT NULL);

CREATE TABLE dept_emp(
    emp_no integer NOT NULL,
    dept_no character varying NOT NULL);
	
select * from dept_emp;
CREATE TABLE dept_manager(
    dept_no character varying NOT NULL,
    emp_no integer PRIMARY KEY NOT NULL);
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no));

CREATE TABLE employees(
    emp_no integer PRIMARY KEY NOT NULL,
    emp_title character varying,
    birth_date character varying,
    first_name character varying,
    last_name character varying,
    sex character varying,
    hire_date character varying);
	
CREATE TABLE salaries(
    emp_no integer PRIMARY KEY NOT NULL,
    salary integer,
	foreign key (emp_no) references employees(emp_no));

CREATE TABLE titles(
    title_id character varying PRIMARY KEY NOT NULL,
    title character varying);