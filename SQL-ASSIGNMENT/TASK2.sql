CREATE TABLE time_dimesions (
  transaction_date_id INT(9) NOT NULL,
  transaction_date DATE NOT NULL,
  day_name VARCHAR(10) DEFAULT NULL,
  week VARCHAR(20) DEFAULT NULL,
  month VARCHAR(10) DEFAULT NULL,
  quarter VARCHAR(10) DEFAULT NULL,
  year INT(10) DEFAULT NULL,
  fin_yr VARCHAR(10) NOT NULL,
  day_of_month INT(4) DEFAULT NULL,
  full_month VARCHAR(10) NOT NULL,
  PRIMARY KEY (transaction_date_id),
  UNIQUE KEY idx_date (transaction_date)
);
drop table time_dimesions; 
 
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY auto_increment,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Birthdate DATE,
    DepartmentID INT,
    FOREIGN KEY(DepartmentID) references  Department(DepartmentID)
);
 
CREATE TABLE department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(255)
);
 
 drop table department;
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(255),
    Status VARCHAR(50)
);
 
CREATE TABLE fact_project_revenue ( 
	sno INT NOT NULL AUTO_INCREMENT primary key, 
	EmployeeID INT(11) DEFAULT NULL, 
	DepartmentID INT(11) DEFAULT NULL, 
	ProjectID  INT(11) DEFAULT NULL,
    Transaction_Type VARCHAR(255) DEFAULT NULL, 
	Transaction_Date DATETIME DEFAULT NULL, 
    Expense_Group VARCHAR(255) DEFAULT NULL, 
    Amount DECIMAL(28,5) DEFAULT NULL,
    FOREIGN KEY(EmployeeID) references  Employees(EmployeeID),
    FOREIGN KEY(ProjectID) references  Projects(ProjectID),
    FOREIGN KEY(DepartmentID) references  Department(DepartmentID)    
);
 
 
 
 
INSERT INTO Projects (ProjectID, ProjectName, Status) VALUES
(1, 'Project Alpha', 'Open'),
(2, 'Project Beta', 'Closed'),
(3, 'Project Gamma', 'Open'),
(4, 'Project Delta', 'Closed'),
(5, 'Project Epsilon', 'Open'),
(6, 'Project Zeta', 'Closed'),
(7, 'Project Eta', 'Open'),
(8, 'Project Theta', 'Closed');
 
 
 
 
 
 
INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'Marketing'),
(4, 'IT'),
(5, 'Operations'),
(6, 'Customer Service');
 
 
 
-- Insert data into Employees table
INSERT INTO Employees (FirstName, LastName, Birthdate, DepartmentID) VALUES
('Aarav', 'Verma', '1990-01-15', 1),
('Aanya', 'Patel', '1985-04-22', 2),
('Aarush', 'Shah', '1993-07-03', 1),
('Advait', 'Joshi', '1988-09-12', 3),
('Anaya', 'Malik', '1995-02-28', 2),
('Aryan', 'Kumar', '1991-11-05', 1),
('Arjun', 'Rao', '1987-06-18', 3),
('Avni', 'Singh', '1994-03-25', 2),
('Ayush', 'Mishra', '1992-08-07', 1),
('Diya', 'Thakur', '1989-12-01', 3),
('Dev', 'Sharma', '1996-05-14', 2),
('Gauri', 'Iyer', '1986-10-27', 1),
('Hrithik', 'Nair', '1993-04-09', 3),
('Ishika', 'Bose', '1990-11-22', 2),
('Kabir', 'Menon', '1988-06-05', 1),
('Kavya', 'Reddy', '1994-01-18', 3),
('Krish', 'Chopra', '1997-03-31', 2),
('Myra', 'Gupta', '1992-09-14', 1),
('Neil', 'Pandey', '1987-02-27', 3),
('Neha', 'Chatterjee', '1995-07-10', 2),
('Rohan', 'Rajput', '1991-12-23', 1),
('Sanya', 'Gandhi', '1989-05-06', 3),
('Sarthak', 'Yadav', '1996-10-19', 2),
('Siya', 'Nath', '1986-03-03', 1),
('Tanish', 'Iyengar', '1993-08-16', 3),
('Tanya', 'Mittal', '1990-01-29', 2),
('Ved', 'Khanna', '1988-06-11', 1),
('Vihaan', 'Goyal', '1994-11-24', 3),
('Vir', 'Agarwal', '1992-04-07', 2),
('Yashvi', 'Kulkarni', '1989-09-20', 1),
('Yuvan', 'Bhat', '1996-02-02', 3),
('Zara', 'Pillai', '1987-07-15', 2),
('Aditya', 'Mehta', '1993-12-28', 1),
('Anvi', 'Sharma', '1991-05-11', 3),
('Arnav', 'Rastogi', '1988-10-24', 2),
('Arya', 'Kapoor', '1995-03-08', 1),
('Atharva', 'Varma', '1992-08-21', 3),
('Avisha', 'Bajaj', '1990-01-03', 2),
('Daksh', 'Rawat', '1986-06-16', 1),
('Divya', 'Nair', '1993-11-29', 3),
('Eva', 'Srivastava', '1998-04-12', 2),
('Ishaan', 'Verma', '1989-09-25', 1),
('Kiaan', 'Gupta', '1996-02-07', 3),
('Kiara', 'Singhania', '1991-07-20', 2),
('Krisha', 'Kumar', '1988-12-02', 1),
('Mahira', 'Shroff', '1994-05-15', 3),
('Rishabh', 'Parekh', '1992-10-28', 2),
('Riya', 'Chopra', '1987-04-10', 1);
 
 
 
INSERT INTO time_dimesions (transaction_date_id, transaction_date, day_name, week, month, quarter, year, fin_yr, day_of_month, full_month)
VALUES
(1, '2022-01-01', 'Sunday', 'Week 1', 'January', 'Q1', 2022, 'FY22', 1, 'January'),
(2, '2022-01-02', 'Monday', 'Week 1', 'January', 'Q1', 2022, 'FY22', 2, 'January'),
(3, '2022-01-03', 'Tuesday', 'Week 1', 'January', 'Q1', 2022, 'FY22', 3, 'January'),
(4, '2022-01-04', 'Wednesday', 'Week 1', 'January', 'Q1', 2022, 'FY22', 4, 'January'),
(5, '2022-01-05', 'Thursday', 'Week 1', 'January', 'Q1', 2022, 'FY22', 5, 'January'),
(6, '2022-01-06', 'Friday', 'Week 1', 'January', 'Q1', 2022, 'FY22', 6, 'January'),
(7, '2022-01-07', 'Saturday', 'Week 1', 'January', 'Q1', 2022, 'FY22', 7, 'January'),
(8, '2022-01-08', 'Sunday', 'Week 2', 'January', 'Q1', 2022, 'FY22', 8, 'January'),
(9, '2022-01-09', 'Monday', 'Week 2', 'January', 'Q1', 2022, 'FY22', 9, 'January'),
(10, '2022-01-10', 'Tuesday', 'Week 2', 'January', 'Q1', 2022, 'FY22', 10, 'January'),
(11, '2022-01-11', 'Wednesday', 'Week 2', 'January', 'Q1', 2022, 'FY22', 11, 'January'),
(12, '2022-01-12', 'Thursday', 'Week 2', 'January', 'Q1', 2022, 'FY22', 12, 'January'),
(13, '2022-01-13', 'Friday', 'Week 2', 'January', 'Q1', 2022, 'FY22', 13, 'January');
 
 
 
 
 
INSERT INTO fact_project_revenue (EmployeeID, DepartmentID, ProjectID, Transaction_Type, Transaction_Date, Expense_Group, Amount)
VALUES
 
(1, 1, 2, 'Cost', '2022-02-20 13:15:00', 'Cost', 2400.00),
(2, 2, 2, 'Revenue', '2022-02-21 14:30:00', 'Revenue', 5800.00),
(3, 3, 2, 'Cost', '2022-02-22 15:45:00', 'Cost', 3000.00),
 
(4, 4, 3, 'Revenue', '2022-02-23 09:00:00', 'Revenue', 5100.00),
(5, 5, 3, 'Cost', '2022-02-24 10:15:00', 'Cost', 2500.00),
(6, 6, 3, 'Revenue', '2022-02-25 11:30:00', 'Revenue', 5900.00),
(7, 1, 3, 'Cost', '2022-02-26 12:45:00', 'Cost', 3100.00),
 
(8, 2, 4, 'Revenue', '2022-02-27 14:00:00', 'Revenue', 5200.00),
(9, 3, 4, 'Cost', '2022-02-28 15:15:00', 'Cost', 2700.00),
(10, 4, 4, 'Revenue', '2022-03-01 09:30:00', 'Revenue', 6000.00),
(11, 5, 4, 'Cost', '2022-03-02 10:45:00', 'Cost', 2900.00),
 
(12, 6, 5, 'Revenue', '2022-03-03 12:00:00', 'Revenue', 5300.00),
(13, 1, 5, 'Cost', '2022-03-04 13:15:00', 'Cost', 2600.00),
(14, 2, 5, 'Revenue', '2022-03-05 14:30:00', 'Revenue', 6100.00),
(15, 3, 5, 'Cost', '2022-03-06 15:45:00', 'Cost', 2800.00),
 
(43, 1, 8, 'Cost', '2022-04-11 12:00:00', 'Cost', 3000.00),
(44, 2, 8, 'Revenue', '2022-04-12 13:15:00', 'Revenue', 6400.00),
(45, 3, 8, 'Cost', '2022-04-13 14:30:00', 'Cost', 3100.00),
(46, 4, 8, 'Revenue', '2022-04-14 15:45:00', 'Revenue', 6600.00),
 
(1, 1, 1, 'Revenue', '2022-01-01 08:30:00', 'Revenue', 5000.00),
(2, 2, 1, 'Cost', '2022-01-02 10:45:00', 'Cost', 2500.00),
(3, 3, 1, 'Revenue', '2022-01-03 12:15:00', 'Revenue', 4800.00),
(4, 4, 1, 'Cost', '2022-01-04 14:30:00', 'Cost', 2200.00),
(5, 1, 2, 'Revenue', '2022-01-05 09:45:00', 'Revenue', 6000.00),
(6, 2, 2, 'Cost', '2022-01-06 11:00:00', 'Cost', 3000.00),
(7, 3, 2, 'Revenue', '2022-01-07 13:30:00', 'Revenue', 5500.00),
(8, 4, 2, 'Cost', '2022-01-08 15:45:00', 'Cost', 2800.00),
(45, 3, 8, 'Revenue', '2022-02-14 09:00:00', 'Revenue', 7500.00);

select * FROM fact_project_revenue;
select * FROM Employees;
select * from Projects;
select * from department;
select * from time_dimesions;