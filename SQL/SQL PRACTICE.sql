-- Create table Students (
	-- id INT auto_increment Primary key ,
--     name varchar(100) Not NULL Default 'No Name',
--     age int CONSTRAINT CHK_AGE CHECK (AGE>=1),
--     email Varchar(100) UNique,
--     admission_date date
--     );

-- show tables;

-- select * from students ;
-- rename table students to student ;

-- drop table student ;

-- alter table student RENAME Column id to student_id;

-- alter table student drop age ;
-- select * from student;

-- alter table student add column age int ;

-- alter table student modify column admission_date date after name ;
-- alter table student modify column age int after admission_date ;
-- select * from student;

-- drop table student ;

-- CREATE TABLE student (
-- id INT PRIMARY KEY,
--  name VARCHAR(100),
--  age INT constraint CHK_AGE CHECK (AGE>=3),
--  grade VARCHAR(10),
--  date_of_birth DATE
-- );

 -- INSERT INTO STUDENT (ID, NAME, AGE , GRADE , DATE_OF_BIRTH ) VALUES (5,'YASH',16,'10th','2005-12-20');

-- INSERT INTO student (id, name, age, grade) VALUES
-- (15, 'Ayesha Khan', 16, '10th'),
-- (25, 'Ravi Sharma', 17, '11th'),
-- (35, 'Meena Joshi', 15, '9th'),
-- (45, 'Arjun Verma', 18, '12th'),
-- (55, 'Sara Ali', 16, '10th'),
-- (65, 'Karan Mehta', 17, '11th'),
-- (75, 'Tanya Roy', 15, '9th'),
-- (85, 'Vikram Singh', 18, '12th'),
-- (95, 'Anjali Desai', 16, '10th'),
-- (105, 'Farhan Zaidi', 17, '11th');
-- SELECT * FROM STUDENT ;

-- SELECT * FROM STUDENT WHERE GRADE ='10TH';
-- SELECT * FROM STUDENT WHERE DATE_OF_BIRTH LIKE '2006-__-__';
SET SQL_SAFE_UPDATES = 0;
UPDATE STUDENT 
SET ID = 2 
WHERE NAME = 'YASH';

SELECT * FROM STUDENT;

UPDATE STUDENT
SET ID=3 , DATE_OF_BIRTH = '2005-12-23', AGE=20
WHERE NAME ='AYESHA KHAN';

SELECT * FROM STUDENT;

ALTER TABLE STUDENT ADD COLUMN SCHOOL VARCHAR(100);

INSERT INTO STUDENT(ID,NAME,AGE,GRADE,DATE_OF_BIRTH,SCHOOL) VALUES (4,'HIMANSHU',20,'12TH','2005-10-06','M.D.K.P.S');

UPDATE STUDENT
SET SCHOOL = 'M.D.K.P.S';

SELECT * FROM STUDENT;

UPDATE STUDENT
SET AGE =AGE+1
WHERE AGE <18;

SELECT * FROM STUDENT;

select localtIMESTAMP();

SELECT NOW();

SELECT current_date();

SELECT current_time();

SELECT current_timestamp();

INSERT INTO STUDENT(ID,NAME,AGE,GRADE,DATE_OF_BIRTH,SCHOOL) VALUES (6,'SUDHANSHU',20,'12TH','2005-10-06','M.D.K.P.S');

DROP TABLE STUDENT ;

USE STUDENT_DB;   -- USING DATABASE STUDENT 

CREATE TABLE classes (
 class_id INT AUTO_INCREMENT PRIMARY KEY,
 class_name VARCHAR(50) NOT NULL
);

CREATE table STUDENTS(
	STUDENT_ID INT auto_increment PRIMARY KEY,
    STUDENT_NAME VARCHAR(100) NOT NULL ,
    CLASS_ID INT,
    FOREIGN KEY (CLASS_ID) REFERENCES CLASSES(CLASS_ID)
		ON UPDATE CASCADE 
        ON DELETE SET NULL
);

INSERT INTO classes (class_name) VALUES ('Mathematics'), ('Science'), ('History');

INSERT INTO STUDENTS (STUDENT_NAME , CLASS_ID) VALUES
('ALICE',1),
('BOB',2),
('CHARLIE',1);


SELECT * FROM STUDENTS,CLASSES ORDER BY CLASS_NAME;

SELECT
 table_name,
 column_name,
 constraint_name,
 referenced_table_name,
 referenced_column_name
FROM
 information_schema.key_column_usage
WHERE
 referenced_table_name IS NOT NULL
 AND table_schema = 'sTUDENT_DB';

UPDATE CLASSES SET CLASS_ID = 20 WHERE CLASS_ID =2;
SELECT *FROM STUDENTS, CLASSES;

DELETE FROM CLASSES  WHERE CLASS_ID=20;
SELECT * FROM STUDENTS,CLASSES ;

DROP TABLE STUDENTS ;
DROP TABLE CLASSES ;

-- JOINS

USE STUDENT_DB;

-- Create students table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert students
INSERT INTO students (id, name) VALUES
(1, 'Rohan'),
(2, 'Aakash'),
(3, 'Priya'),
(4, 'Sneha'),
(5, 'Rahul'),
(6, 'Anjali'),
(7, 'Vikram'),
(8, 'Simran'),
(9, 'Karan'),
(10, 'Neha'),
(11, 'Harry'),
(12, 'Lakshayraj Dash'),
(13, 'Ishita'),
(14, 'Amit'),
(15, 'Meena');

-- Create marks table
CREATE TABLE marks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(30),
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Insert marks
INSERT INTO marks (student_id, subject, score) VALUES
(1, 'Math', 92),
(1, 'Science', 88),
(2, 'Math', 81),
(2, 'English', 79),
(3, 'Math', 75),
(3, 'Science', 73),
(4, 'Science', 85),
(5, 'English', 78),
(5, 'Math', 80),
(6, 'Science', 66),
(6, 'English', 68),
(7, 'Math', 55),
(8, 'English', 74),
(10, 'Science', 89),
(10, 'Math', 83),
(12, 'Math', 77),
(12, 'Science', 79),
(13, 'English', 60),
(14, 'Science', 69),
(14, 'English', 72);



-- INNER JOIN 
SELECT STUDENTS.NAME , MARKS.SUBJECT, MARKS.SCORE
FROM STUDENTS
INNER JOIN MARKS ON STUDENTS.ID= MARKS.STUDENT_ID;

-- LEFT JOIN 
 SELECT STUDENTS.NAME , MARKS.SUBJECT, MARKS.SCORE
FROM STUDENTS
LEFT JOIN MARKS ON STUDENTS.ID= MARKS.STUDENT_ID;

-- RIGHT JOIN 
SELECT STUDENTS.NAME , MARKS.SUBJECT, MARKS.SCORE
FROM STUDENTS
RIGHT JOIN MARKS ON STUDENTS.ID= MARKS.STUDENT_ID;

-- CROSS JOIN 
SELECT STUDENTS.NAME , MARKS.SUBJECT, MARKS.SCORE
FROM STUDENTS
CROSS JOIN MARKS ON STUDENTS.ID= MARKS.STUDENT_ID;

-- JOIN
SELECT STUDENTS.NAME , MARKS.SUBJECT, MARKS.SCORE
FROM STUDENTS
JOIN MARKS ON STUDENTS.ID= MARKS.STUDENT_ID;


SELECT * FROM STUDENTS 
union
SELECT *FROM MARKS;

SELECT CONCAT('HELLO',' ','MY FRIend') AS GREETING;

SELECT LENGTH('TUSHAR');

SELECT ROUND(3.1459,0);

SELECT DATEDIFF('2026-06-03','2026-04-28'); -- IMP DATE  

SELECT LOWER("TUSHAR");

SELECT UPPER('tushar');

select REPLACE('PIYUSHI','I','H');

SELECT TRIM('    HIIIIIII     ');

SELECT FLOOR(3.1459);

SELECT CEIL(4.5);

SELECT ABS(-19943);

SELECT * FROM STUDENTS,MARKS;
CREATE VIEW  STUD_NAME AS
SELECT NAME,SUBJECT,SCORE 
FROM STUDENTS,MARKS;

SELECT * FROM stud_NAME
WHERE SUBJECT ='SCIENCE';

DROP VIEW STUD_NAME ;

CREATE INDEX STUD_ID ON STUDENTS(NAME);
DROP INDEX STUD_ID  ON STUDENTS;

SHOW INDEX FROM STUDENTS;

DELIMITER //

CREATE PROCEDURE GET_MATH_MRKS (IN SUBJECT VARCHAR(100))
BEGIN 
	select NAME,(SELECT SCORE WHERE SUBJECT ='MATH')AS MATH_MRKS FROM STUDENTS,MARKS ;
END//

CALL GET_MATH_MRKS('MATH') ;














