DROP DATABASE IF EXISTS employee_tracker;

CREATE DATABASE employee_tracker;
USE employee_tracker;

CREATE TABLE Department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Department_name VARCHAR(30)
);

CREATE TABLE Roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT NOT NULL
    FOREIGN KEY(department_id) REFERENCES departments(id)
);

CREATE TABLE Employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    FOREIGN KEY(manager_id) REFERENCES Employee(id)
);