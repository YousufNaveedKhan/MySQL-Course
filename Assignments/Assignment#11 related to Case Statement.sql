-- TO CREATE DATABASE 
CREATE DATABASE APT;

-- TO USE DATABASE
USE APT;

-- TO CREATE TABLE
CREATE TABLE Employees (
    ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Name VARCHAR(250),
    Salary INT
);

-- TO DISPLAY THE TABLE
SELECT 
    *
FROM
    Employees;

-- TO INSERT VALUES INTO TABLE
INSERT INTO Employees VALUES (NULL, "Abdullah", 40000);  
INSERT INTO Employees VALUES (NULL, "Imran", 37320);  
INSERT INTO Employees VALUES (NULL, "Saif", 23000);  
INSERT INTO Employees VALUES (NULL, "Ayesha", 12000);  
INSERT INTO Employees VALUES (NULL, "Zubair", 19000);  
INSERT INTO Employees VALUES (NULL, "Hafsa", 5000);  
INSERT INTO Employees VALUES (NULL, "Uzma", 93560);  
INSERT INTO Employees VALUES (NULL, "Ali", 9140);  
INSERT INTO Employees VALUES (NULL, "Hassan", 35600);  
INSERT INTO Employees VALUES (NULL, "Zainab", NULL);

-- TO PERFORM CASE STATEMENT

-- TO SELECT COLUMNS
SELECT 
    ID,
    Name,
    Salary,
    
      -- CASE STATEMENT
    CASE
        -- If an employee's salary is greater than or equal to 30,000
        WHEN Salary >= 30000 THEN 'Best Employee'
        
		-- If an employee's salary is between 20,000 (inclusive) and 29,999 (inclusive)
        WHEN Salary >= 20000 AND Salary <= 29999 THEN 'Normal Employee'
        
	    -- If an employee's salary is between 15,000 (inclusive) and 19,999 (inclusive)
        WHEN Salary >= 15000 AND Salary <= 19999 THEN 'Employee'
        
	    -- Else Condition
        ELSE 'Salary Not Confirmed'
    END AS 'Status'
    
-- TABLE NAME
FROM
    Employees;