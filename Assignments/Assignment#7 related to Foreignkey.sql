CREATE DATABASE CDF;

USE CDF;

CREATE TABLE Company (
ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Department_Name VARCHAR(250),
Location VARCHAR(250),
Department_Head VARCHAR(250)
);

INSERT INTO Company values (null, "FINANCE", "Karachi", "Yousuf");
INSERT INTO Company values (null, "HR", "Lahore", "Khuzaima");
INSERT INTO Company values (null, "PRODUCTION", "Islamabad", "Muneeb");
INSERT INTO Company values (null, "UNKNOWN", "Sakkhar", "Shoaib");

SELECT * FROM Company;

CREATE TABLE Company_Employees (
ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Name VARCHAR(250),
Gender VARCHAR(250),
Salary INT,
Department_ID INT,
FOREIGN KEY (Department_ID)
REFERENCES Company (ID)
);

SELECT * FROM Company_Employees;

INSERT INTO Company_Employees values (null, "Abdullah", "Male", "55000", "2");
INSERT INTO Company_Employees values (null, "Shehbaz", "Male", "25000", "2");
INSERT INTO Company_Employees values (null, "Zahid", "Male", "32000", "1");
INSERT INTO Company_Employees values (null, "Ahsan", "Male", "95000", "1");
INSERT INTO Company_Employees values (null, "Sara", "Female", "50000", "1");
INSERT INTO Company_Employees values (null, "Ayesha", "Female", "40000", "3");
INSERT INTO Company_Employees values (null, "Awais", "Male", "100000", "2");
INSERT INTO Company_Employees values (null, "Nimra", "Female", "94000", "3");
INSERT INTO Company_Employees values (null, "Saima", "Female", "30000", "3");
INSERT INTO Company_Employees values (null, "Zubair", "Male", "75000", null);