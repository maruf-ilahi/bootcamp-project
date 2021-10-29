
-- Creating PERSON Table
CREATE TABLE Person
(
    PersonId INT IDENTITY(100100, 1) PRIMARY KEY,
    FirstName VARCHAR(50),
    MiddleInitial VARCHAR(50),
    LastName VARCHAR(50), 
    DatOfBirth DATE
);

-----------------------------------------

-- Creating STUDENT Table
CREATE TABLE Student (

    StudentId INT IDENTITY(10100, 1) PRIMARY KEY,
    PersonId INT FOREIGN KEY REFERENCES Person(PersonId),
    Email VARCHAR(50),
    Phone INT NOT NULL


);

-----------------------------------------

-- Creating CREDIT Table
Create TABLE Credit
 (
     CreditId INT IDENTITY(101, 1) PRIMARY KEY (StudentId, CourseId),
     StudentId INT FOREIGN KEY REFERENCES Student(StudentId),
     CourseId INT  FOREIGN KEY REFERENCES Course(CourseId),
     Grade INT NOT NULL,
     Attempt INT NOT NULL
 );

-----------------------------------------

-- Creating COURSE TABLE
CREATE TABLE Course
(
    CourseId   INT IDENTITY (100, 2) PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL ,
    Teacher    VARCHAR(50) NOT NULL
);

-----------------------------------------


-- Load Data into Tables
INSERT INTO Person VALUES ('Francis', 'D', 'Capallo', '1992-05-05')
INSERT INTO Student VALUES (7, 'sade@gmail.com')
INSERT INTO Student VALUES (8, 'francis@gmail.com')
INSERT INTO Credit VALUES (3, 3, 3, 4, 2)

-- Load Data into HISTORY Table
INSERT INTO Course VALUES ('History', 'Miss HANNA Brown')
INSERT INTO Course VALUES ('Math', 'Mr Harsa Bhogle')

-----------------------------------------


