-- Employee Database: A Mystery in Two Parts
-- Confirm all columns
-- select * from (all tables)

-- ## 1. List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT
    employees.emp_no,
    employees.gender,
    employees.last_name,
    employees.first_name,
    salaries.salary
  
FROM
    employees
 INNER JOIN salaries ON employees.emp_no = salaries.emp_no 
ORDER BY 
    employees.emp_no ;


-- ## 2. List employees who were hired in 1986

SELECT 
    employees.first_name, 
    employees.last_name,
    employees.hire_date
    
FROM 
    employees
   
WHERE 
    hire_date LIKE '1986%';

-- or this version will give the same result

SELECT * FROM employees where hire_date LIKE '1986%'
 

-- ## 3. List the manager of each department with the following information: department number, department name, the manager's employee number, 
--    last name, first name, and start and end employment dates


SELECT
    e.first_name, e.last_name, e.emp_no, d.dept_name, d.dept_no, from_date, to_date 
FROM
    employees e , departments d
 Inner Join dept_emp ON dept_emp.dept_no = d.dept_no
WHERE 
    e.emp_no = dept_emp.emp_no 

-- ## 4. List the department of each employee with the following information: employee number, last name,
--   first name, and department name

SELECT
    e.first_name, e.last_name, e.emp_no , d.dept_name  
FROM 
    employees e , departments d
 Inner Join dept_emp ON dept_emp.dept_no = d.dept_no
WHERE 
    e.emp_no = dept_emp.emp_no  
 

-- ## 5.  List all employees whose first name is "Hercules" and last names begin with "B."

SELECT
    last_name,
    first_name
FROM
    employees
WHERE
    first_name = 'Hercules' AND last_name LIKE 'B%' ;


-- ## 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT
    e.first_name, e.last_name, e.emp_no , d.dept_name  
FROM 
    employees e , departments d
  Inner Join dept_emp ON dept_emp.dept_no = d.dept_no
WHERE 
    e.emp_no = dept_emp.emp_no  
AND  
    d.dept_name = 'Sales'
;


-- ## 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT
     e.first_name, e.last_name, e.emp_no , d.dept_name  
FROM
     employees e , departments d
 Inner Join dept_emp ON dept_emp.dept_no = d.dept_no
WHERE 
     e.emp_no = dept_emp.emp_no  
 AND  
     d.dept_name = 'Development'
;


-- ## 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT 
    last_name, COUNT(DISTINCT last_name) AS "How many employees share this last name" 
FROM employees 
WHERE 
    last_name LIKE '%'
GROUP BY 
    last_name
Order by 
    last_name desc;




   
   
   
