-- TO CREATE DATABASE 
CREATE DATABASE APT;

-- TO USE DATABASE 
USE APT;

-- TO CREATE TABLE 
CREATE TABLE ABC (
    SERIAL_NO INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    NAME VARCHAR(250),
    CONTACT VARCHAR(12),
    EMAIL VARCHAR(250),
    AGE INT
);

-- TO SELECT FROM TABLE 
SELECT 
    *
FROM
    ABC;

-- TO INSERT IN ALL COLUMNS WITH COLUMN NAME
INSERT INTO ABC(serial_no, name, contact, email, age)values(NULL, "Muneeb", "03312345678", "mh@gmail.com", 17);
-- TO INSERT IN SPECIFIC COLUMN
INSERT INTO ABC(contact, age)values("03312342637",25);
-- TO INSERT IN ALL COLUMNS WITHOUT COLUMN NAME 
INSERT INTO ABC values(NULL, "Yousuf", "03312345687", "yn@gmail.com", 20);


-- TO UPDATE SPECIFIC COLUMN
UPDATE ABC SET NAME = 'Khuzaima' WHERE SERIAL_NO = 4;
-- TO UPDATE ALL COLUMNS 
UPDATE ABC SET NAME = 'Shoaib', CONTACT = '03312345768', EMAIL = 'ss@gmail.com', AGE = 21 WHERE SERIAL_NO = 2;


-- TO DELETE SPECIFIC SERIAL NO 
DELETE FROM ABC WHERE SERIAL_NO = 3;
-- TO DELETE ALL COLUMNS
DELETE FROM ABC;

-- TO TRUNCATE TABLE
TRUNCATE TABLE ABC;

-- TO DROP TABLE 
DROP TABLE ABC;