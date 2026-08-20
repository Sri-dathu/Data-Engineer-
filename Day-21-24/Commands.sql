CREATE DATABASE SnowFlake_Practise;

--DDL Commands CAD(Create,Alter,Drop)
use database SNOWFLAKE_PRACTISE;

--Create  a Sample DB
CREATE or Replace TABLE Student(
sid int not null,
sname varchar(15),
sdept varchar(10),
sage int not null
);

--Describe the table

DESC table Student;

--Alter Table

ALTER TABLE student 
ADD COLUMN semail VARCHAR(40);


--DML UId(Update,Insert,Delete)

INSERT INTO student VALUES(101,'Raj','CSE',19,'Raj@gmail.com'),
(101,'Raj','CSE',19,'Raj@gmail.com'),
(102,'light','EEE',20,'light@gmail.com'),
(103,'tej','IT',22,'tej@gmail.com'),
(104,'Rahul','ECE',21,'Rahul@gmail.com'),
(105,'Ram','MECH',18,'ram@gmail.com');

--Select 
SELECT * from STUDENT;

--Update 

update student
set sage=20
where sname='tej';

SELECT * from student;