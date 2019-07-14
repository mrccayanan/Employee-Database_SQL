DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
  dept_no character varying(255) NOT NULL,
  dept_name character varying(45) NOT NULL  
);

CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no character varying(255) NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

CREATE TABLE dept_manager (
  emp_no integer NOT NULL,
  dept_no character varying(550) NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);

CREATE TABLE employees (
  emp_no integer NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  gender VARCHAR,
  hire_date VARCHAR,
  birth_date DATE   
);

CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL 
);

CREATE TABLE titles (
  emp_no integer NOT NULL,
  title character varying(45) NOT NULL,
  from_date timestamp without time zone DEFAULT now() NOT NULL,
  to_date timestamp without time zone DEFAULT now() NOT NULL
);
