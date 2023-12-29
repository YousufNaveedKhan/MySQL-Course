-- TO CREATE DATABASE
CREATE DATABASE APTECH;

-- TO USE DATABASE
USE APTECH;

-- TO CREATE TABLE 
CREATE TABLE MARKSHEET (
ROLL_NUMBER INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
STUDENTS_NAME VARCHAR(250),
PASSING_YEAR INT,
EXAMINATION VARCHAR(250),
PERCENTAGE INT
);

-- TO DISPLAY THE TABLE
SELECT * FROM MARKSHEET;

-- TO INSERT VALUES INTO THE TABLE
INSERT INTO MARKSHEET VALUES (311000, "Asad", 2021, "ANNUAL", 87),
                             (311001, "Sarah", 2022, "ANNUAL", 84),
                             (311002, "Abdullah", 2020, "ANNUAL", 67),
                             (NULL, "Basit", 2021, "ANNUAL", 75),
                             (NULL, "Ayesha", 2018, "ANNUAL", 68),
                             (NULL, "Laiba", 2019, "ANNUAL", 55),
                             (NULL, "Affan", 2019, "ANNUAL", 35),
                             (NULL, "Hassan", 2020, "SUPPLY", 81),
                             (NULL, "Umar", 2018, "ANNUAL", 49),
                             (NULL, "Saad", 2022, "ANNUAL", 45),
                             (NULL, "Zubair", 2022, "ANNUAL", 23),
                             (NULL, "Haris", 2021, "ANNUAL", 95),
                             (NULL, "Uzma", 2019, "ANNUAL", 63);

-- METHOD#1: TO CREATE A SECOND TABLE TO DISPLAY GRADES
-- TO CREATE A TABLE
CREATE TABLE MatricResult AS
-- TO SELECT COLUMNS STUDENTS_NAME, PERCENTAGE, AND CALCULATE THE GRADE USING A CASE STATEMENT
SELECT STUDENTS_NAME, PERCENTAGE,
    CASE
        WHEN PERCENTAGE >= 80 THEN "A+"       -- IF PERCENTAGE IS 80 OR HIGHER, ASSIGN "A+"
        WHEN PERCENTAGE >= 70 AND PERCENTAGE <= 79 THEN "A"  -- IF PERCENTAGE IS BETWEEN 70 AND 79, ASSIGN "A"
        WHEN PERCENTAGE >= 60 AND PERCENTAGE <= 69 THEN "B"  -- IF PERCENTAGE IS BETWEEN 60 AND 69, ASSIGN "B"
        WHEN PERCENTAGE >= 50 AND PERCENTAGE <= 59 THEN "C"  -- IF PERCENTAGE IS BETWEEN 50 AND 59, ASSIGN "C"
        WHEN PERCENTAGE >= 40 AND PERCENTAGE <= 49 THEN "D"  -- IF PERCENTAGE IS BETWEEN 40 AND 49, ASSIGN "D"
        ELSE "FAIL"  -- IF NONE OF THE ABOVE CONDITIONS MATCH MATCH, ASSIGN "FAIL"
    END AS GRADE
FROM MARKSHEET;

-- SELECT ALL RECORDS FROM THE MatricResult TABLE
SELECT * FROM MatricResult;

-- METHOD#2: TO CREATE A SECOND TABLE TO DISPLAY GRADES
-- CREATE A NEW TABLE NAMED Matric_Result
CREATE TABLE Matric_Result (
StudentsName VARCHAR(250),
PERCENTAGE INT,
Grade VARCHAR(20)
);

-- INSERT DATA INTO THE Matric_Result TABLE WHILE CALCULATING THE GRADE USING A CASE STATEMENT
INSERT INTO Matric_Result (StudentsName, PERCENTAGE, Grade)
SELECT STUDENTS_NAME, PERCENTAGE,
    CASE
        WHEN PERCENTAGE >= 80 THEN "A+"
        WHEN PERCENTAGE >= 70 AND PERCENTAGE <= 79 THEN "A"
        WHEN PERCENTAGE >= 60 AND PERCENTAGE <= 69 THEN "B"
        WHEN PERCENTAGE >= 50 AND PERCENTAGE <= 59 THEN "C"
        WHEN PERCENTAGE >= 40 AND PERCENTAGE <= 49 THEN "D"
        ELSE "FAIL"
    END AS GRADE
FROM MARKSHEET;

-- SELECT ALL RECORDS FROM THE Matric_Result TABLE
SELECT * FROM Matric_Result;
