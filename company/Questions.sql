-- 1. Write a query to list all employees along with their department name. Include the employee's first and last name, department name, and hire date.
SELECT e.first_name, e.last_name, d.department_name, e.hire_date
FROM Employees e
INNER JOIN Departments d ON e.department_id = d.department_id;

-- 2. Write a query to list all departments along with their employees. If a department has no employees, still list the department but display null for employee details.
SELECT d.department_name, e.first_name, e.last_name
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id;

-- 3. Write a query to find the total number of employees in each department and display only departments with more than 1 employee
SELECT d.department_name, COUNT(*) AS employee_count
FROM Departments d
INNER JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(*) > 1;

-- 4. Write a query to calculate the average salary of employees in each department. Display only those departments where the average salary is greater than $1000.
SELECT d.department_name, AVG(s.salary) AS avg_salary
FROM Departments d
INNER JOIN Employees e ON d.department_id = e.department_id
INNER JOIN Salaries s ON e.employee_id = s.employee_id
GROUP BY d.department_name
HAVING AVG(s.salary) > 1000;

-- 5. Write a query to find the count of employees who have a salary greater than $5000. Group the result by department and display only departments where the count of such employees is greater than 1.
SELECT d.department_name, COUNT(*) AS high_salary_count
FROM Departments d
INNER JOIN Employees e ON d.department_id = e.department_id
INNER JOIN Salaries s ON e.employee_id = s.employee_id
WHERE s.salary > 5000
GROUP BY d.department_name
HAVING COUNT(*) > 1;

-- 6. Write a query to find the highest salary ever paid to an employee in the company.
SELECT MAX(salary) AS highest_salary
FROM Salaries;
