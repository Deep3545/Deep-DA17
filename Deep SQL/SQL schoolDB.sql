CREATE DATABASE SchoolDB;

USE SchoolDB;


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Age INT,
    Course VARCHAR(100),
    Marks INT
);

insert into Students (StudentID, StudentName, Age, Course, Marks)
values
(1, 'Amit Sharma', 21, 'Data Analytics', 85.50),
(2, 'Neha Gupta', 22, 'Computer Science', 90.75),
(3, 'Ravi Singh', 20, 'Business Analytics', 78.25);
select * from Students;
