-- TO CREATE DATABASE
CREATE DATABASE APT;

-- TO USE DATABASE 
USE APT;

-- TO CREATE TABLE 
CREATE TABLE Department (
ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Department_Name VARCHAR(250),
Location VARCHAR(250),
Department_Head VARCHAR(250)
);

-- TO INSERT VALUES INTO TABLE
INSERT INTO Department values (null, "FINANCE", "Karachi", "Yousuf");
INSERT INTO Department values (null, "HR", "Lahore", "Khuzaima");
INSERT INTO Department values (null, "PRODUCTION", "Islamabad", "Muneeb");
INSERT INTO Department values (null, "UNKNOWN", "Sakkhar", "Shoaib");

-- TO DISPLAY THE TABLE 
SELECT * FROM Department;

-- TO CREATE A TABLE WITH FOREIGN KEY CONSTRAINT
CREATE TABLE Employees (
ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Name VARCHAR(250),
Gender VARCHAR(250),
Salary INT,
Department_ID INT,
FOREIGN KEY (Department_ID)
REFERENCES Department (ID)
);

-- TO INSERT VALUES INTO TABLE
INSERT INTO Employees values (null, "Abdullah", "Male", "55000", "2");
INSERT INTO Employees values (null, "Shehbaz", "Male", "25000", "2");
INSERT INTO Employees values (null, "Zahid", "Male", "32000", "1");
INSERT INTO Employees values (null, "Ahsan", "Male", "95000", "1");
INSERT INTO Employees values (null, "Sara", "Female", "50000", "1");
INSERT INTO Employees values (null, "Ayesha", "Female", "40000", "3");
INSERT INTO Employees values (null, "Awais", "Male", "100000", "2");
INSERT INTO Employees values (null, "Nimra", "Female", "94000", "3");
INSERT INTO Employees values (null, "Saima", "Female", "30000", "3");
INSERT INTO Employees values (null, "Zubair", "Male", "75000", null);

-- TO DISPLAY THE TABLE
SELECT * FROM Employees;

-- TO JOIN TABLES USING INNER JOIN
SELECT 
    Name,
    Gender,
    Department_Name,
    Location,
    Salary,
    Department_Head
FROM
    Department
        INNER JOIN
    Employees ON Department.ID = Employees.Department_ID;
    
-- TO JOIN TABLES USING LEFT JOIN
SELECT 
    Name,
    Gender,
    Department_Name,
    Location,
    Salary,
    Department_Head
FROM
    Department
        LEFT JOIN
    Employees ON Department.ID = Employees.Department_ID;
    
-- TO JOIN TABLES USING RIGHT JOIN
SELECT 
    Name,
    Gender,
    Department_Name,
    Location,
    Salary,
    Department_Head
FROM
    Department
        RIGHT JOIN
    Employees ON Department.ID = Employees.Department_ID;
    
-- TO RETRIEVE DATA FROM TWO TABLES USING UNION
SELECT 
    Name,
    Gender,
    Department_Name,
    Location,
    Salary,
    Department_Head
FROM
    Department
        INNER JOIN
    Employees ON Department.ID = Employees.Department_ID
    UNION
SELECT 
    Name,
    Gender,
    Department_Name,
    Location,
    Salary,
    Department_Head
FROM
    Department
        INNER JOIN
    Employees ON Department.ID = Employees.Department_ID;