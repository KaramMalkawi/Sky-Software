INSERT INTO Departments (department_name)
VALUES
('Sales'),
('Marketing'),
('IT'),
('HR'),
('Finance'),
('Operations'),
('Customer Support');

INSERT INTO Employees (first_name, last_name, department_id, hire_date)
VALUES
('Karam', 'Malkawi', 1, '2023-01-01'),
('Mohammad', 'Malkawi', 2, '2022-11-15'),
('Zaina', 'Malkawi', 3, '2024-04-05'),
('Osama', 'Malkawi', 1, '2023-07-12'),
('Mazen', 'Makhlouf', 4, '2022-09-20'),
('Motaz', 'Makhlouf', 5, '2023-03-10'),
('Basema', 'Kilani', 6, '2024-02-25'),
('Ahmad', 'Malkawi', 2, '2023-05-18'),
('Albara', 'Malkawi', 3, '2022-12-03'),
('Akram', 'Kilani', 1, '2024-01-15'),
('Hala', 'Malkawi', 4, '2023-08-29'),
('Ansab', 'Malkawi', 5, '2022-10-12'),
('Noora', 'Kilani', 6, '2024-03-20'),
('Aya', 'Allouh', 2, '2023-06-05'),
('Alhaitham', 'Tawalbeh', 3, '2022-11-28'),
('Qais', 'Amori', 1, '2024-02-10'),
('Ali', 'Mohammad', 4, '2023-09-15'),
('Bilal', 'Atallah', 5, '2022-11-03'),
('Omar', 'Altali', 6, '2024-04-05'),
('Jehad', 'Abdalqader', 2, '2023-07-22');

INSERT INTO Salaries (employee_id, salary, start_date, end_date)
VALUES
(1, 50000, '2023-01-01', '2023-12-31'),
(2, 60000, '2022-11-15', '2023-11-14'),
(3, 75000, '2024-04-05', '2025-04-04'),
(4, 45000, '2023-07-12', '2024-07-11'),
(5, 55000, '2022-09-20', '2023-09-19'),
(6, 65000, '2023-03-10', '2024-03-09'),
(7, 70000, '2024-02-25', '2025-02-24');
