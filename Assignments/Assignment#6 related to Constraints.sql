-- TO CREATE DATABASE
CREATE DATABASE ABC;

-- TO USE DATABASE
USE ABC;

-- TO CREATE TABLE
CREATE TABLE INFO (
ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
FirstName VARCHAR(250) NOT NULL,
LastName VARCHAR(250),
Email VARCHAR(250) UNIQUE,
Number VARCHAR(250) UNIQUE,
DOB Date Default "2003-10-23",
City VARCHAR(250) Default "Karachi",
Country VARCHAR(250) Default "Pakistan",
Hobbies VARCHAR(250) Default "Recitation Of Quran",
Qualification VARCHAR(250),
CoursesAppliedFor VARCHAR(250)
);   

-- TO DISPLAY THE TABLE
SELECT * FROM INFO;

-- TO INSERT VALUE IN TABLE
INSERT INTO INFO values(null, null, "Ahmed", "a@gmail.com", "03312345678", null, "Lahore", null, null, "Phd", "BCA");
INSERT INTO INFO values(null, "Khuzaima", "Ahmed", "a@gmail.com", "03312345678", null, "Lahore", null, null, "Phd", "BCA");
INSERT INTO INFO (Email, DOB) values("a@gmail.com", null);
INSERT INTO INFO (Email, DOB) values("a1@gmail.com", null);