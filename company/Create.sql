CREATE TABLE Departments (
    department_id INT IDENTITY(1,1) PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE Employees (
    employee_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE DEFAULT GETDATE(),
    UNIQUE (first_name, last_name),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Salaries (
    salary_id INT IDENTITY(1,1) PRIMARY KEY,
    employee_id INT,
    salary DECIMAL(10,2) CHECK (salary > 0),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
