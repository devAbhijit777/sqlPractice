-- SQLite
-- DROP existing tables if they exist
DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Create departments table
CREATE TABLE departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT NOT NULL
);

-- Create employees table
CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    emp_name TEXT NOT NULL,
    age INTEGER,
    salary REAL,
    dept_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Create projects table
CREATE TABLE projects (
    project_id INTEGER PRIMARY KEY,
    project_name TEXT NOT NULL,
    start_date TEXT,
    end_date TEXT,
    dept_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Create tasks table
CREATE TABLE tasks (
    task_id INTEGER PRIMARY KEY,
    task_name TEXT NOT NULL,
    emp_id INTEGER,
    project_id INTEGER,
    status TEXT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

-- Insert departments
INSERT INTO departments VALUES (1, 'Engineering');
INSERT INTO departments VALUES (2, 'Human Resources');
INSERT INTO departments VALUES (3, 'Sales');
INSERT INTO departments VALUES (4, 'Marketing');

-- Insert employees
INSERT INTO employees VALUES (1, 'Alice', 30, 70000, 1);
INSERT INTO employees VALUES (2, 'Bob', 25, 50000, 1);
INSERT INTO employees VALUES (3, 'Charlie', 45, 90000, 2);
INSERT INTO employees VALUES (4, 'David', 35, 60000, 3);
INSERT INTO employees VALUES (5, 'Eva', 29, 65000, 4);
INSERT INTO employees VALUES (6, 'Frank', 32, 72000, 1);
INSERT INTO employees VALUES (7, 'Grace', 28, 58000, 1);
INSERT INTO employees VALUES (8, 'Helen', 50, 95000, 2);
INSERT INTO employees VALUES (9, 'Ian', 38, 61000, 3);
INSERT INTO employees VALUES (10, 'Jane', 26, 63000, 4);

-- Insert projects
INSERT INTO projects VALUES (1, 'Project Apollo', '2024-01-01', '2024-06-30', 1);
INSERT INTO projects VALUES (2, 'Recruitment Drive', '2024-02-15', '2024-04-15', 2);
INSERT INTO projects VALUES (3, 'Sales Q2', '2024-03-01', '2024-06-01', 3);
INSERT INTO projects VALUES (4, 'Internal Tooling', '2024-05-01', '2024-09-01', 1);
INSERT INTO projects VALUES (5, 'HR Survey', '2024-04-10', '2024-07-10', 2);
INSERT INTO projects VALUES (6, 'Q3 Sales Campaign', '2024-07-01', '2024-10-01', 3);
INSERT INTO projects VALUES (7, 'Product Launch', '2024-06-01', '2024-08-15', 4);

-- Insert tasks
INSERT INTO tasks VALUES (1, 'Build backend', 1, 1, 'Completed');
INSERT INTO tasks VALUES (2, 'Build frontend', 2, 1, 'In Progress');
INSERT INTO tasks VALUES (3, 'Shortlist resumes', 3, 2, 'Completed');
INSERT INTO tasks VALUES (4, 'Sales pitch', 4, 3, 'Pending');
INSERT INTO tasks VALUES (5, 'Marketing material', 5, NULL, 'Pending');

-- Randomized tasks (6-25)
INSERT INTO tasks VALUES (6, 'Write Documentation', 3, 2, 'In Progress');
INSERT INTO tasks VALUES (7, 'QA Testing', 1, 4, 'Completed');
INSERT INTO tasks VALUES (8, 'Design UI', 2, 1, 'In Progress');
INSERT INTO tasks VALUES (9, 'Create APIs', 6, 4, 'Delayed');
INSERT INTO tasks VALUES (10, 'Market Research', 7, 7, 'Pending');
INSERT INTO tasks VALUES (11, 'Conduct Interviews', 3, 2, 'Completed');
INSERT INTO tasks VALUES (12, 'Develop Strategy', 8, 5, 'In Progress');
INSERT INTO tasks VALUES (13, 'Plan Budget', 9, 3, 'Pending');
INSERT INTO tasks VALUES (14, 'Client Demo', 4, 6, 'Completed');
INSERT INTO tasks VALUES (15, 'Setup Infrastructure', 6, 4, 'Completed');
INSERT INTO tasks VALUES (16, 'Write Documentation', 7, 1, 'Pending');
INSERT INTO tasks VALUES (17, 'QA Testing', 8, 5, 'Completed');
INSERT INTO tasks VALUES (18, 'Design UI', 9, 3, 'In Progress');
INSERT INTO tasks VALUES (19, 'Create APIs', 10, 7, 'Completed');
INSERT INTO tasks VALUES (20, 'Market Research', 5, 7, 'Pending');
INSERT INTO tasks VALUES (21, 'Conduct Interviews', 1, 2, 'Delayed');
INSERT INTO tasks VALUES (22, 'Develop Strategy', 4, 6, 'Completed');
INSERT INTO tasks VALUES (23, 'Plan Budget', 3, 5, 'Completed');
INSERT INTO tasks VALUES (24, 'Client Demo', 7, 4, 'In Progress');
INSERT INTO tasks VALUES (25, 'Setup Infrastructure', 10, 6, 'Pending');
