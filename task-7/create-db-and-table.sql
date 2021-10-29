-- Please RUN This QUERY in SEQUENCE

-- Create Database PERSONINFO
CREATE DATABASE personinfo;

-- Create TABLE Person
CREATE TABLE Person
(
        PersonId INT IDENTITY(10001, 1) PRIMARY KEY
    ,   FirstName VARCHAR(50)
    ,   LastName VARCHAR(50),
)


-- Create TABLE AddressDetailType
CREATE TABLE AddressDetailsType
(
        AddressDetailsTypeId INT IDENTITY (101, 1) PRIMARY KEY
    ,   AddressDetails VARCHAR(50) NOT NULL
)

-- Creating TABLE Address
CREATE TABLE Address (

        AddressId INT IDENTITY(5001, 1) PRIMARY KEY
    ,   PersonId INT FOREIGN KEY REFERENCES Person (PersonId)
    ,   Line1 VARCHAR(255)
    ,   Line2 VARCHAR(255)
    ,   City VARCHAR(50) NOT NULL
    ,   State VARCHAR(50)
    ,   ZipCode VARCHAR(50) NOT NULL
    ,   Country VARCHAR(50)
    ,   AddressDetailsTypeId INT FOREIGN KEY REFERENCES AddressDetailsType (AddressDetailsTypeId)

);

-- Create TABLE ContactDetailType
CREATE TABLE ContactDetailType
(
        ContactDetailTypeId INT IDENTITY(102, 2) PRIMARY KEY
    ,   DetailType VARCHAR(50)
);

-- Create TABLE ContactDetail
CREATE TABLE ContactDetail
(
        ContactId INT IDENTITY(3001, 1) PRIMARY KEY
    ,   PersonId INT FOREIGN KEY REFERENCES Person (PersonId)
    ,   ContactDetail VARCHAR(50)
    ,   ContactDetailTypeId INT FOREIGN KEY REFERENCES ContactDetailType(ContactDetailTypeId)
);


-----------------------------------------------------------------------------------------------

-- Only RUN the following QUERY after you finish the QUERY above

--Load Sample Data into PERSON
INSERT INTO Person VALUES ('Maruf', 'Ilahi')
    , ('Sade', 'Lawani')
    , ('Chika', 'Anumba')
    , ('Francis', 'Baffoe');

-- Load Sample Data into ContactDetail
INSERT INTO ContactDetail
    VALUES
        (10001, '07532157075', 104)
    ,   (10002, '075958433277', 104)
    ,   (10003, '07552124455', 104)
    ,   (10004, '07855421122', 104)

INSERT INTO ContactDetail
    VALUES
        (10001, 'maruf@email.com', 102)
    ,   (10002, 'sade@email.com', 102)
    ,   (10003, 'chika@email.com', 102)
    ,   (10004, 'fracis@email.com', 102)

-- Load Data into ContactDetailType
INSERT INTO ContactDetailType VALUES ('Email'), ('Phone')

-- Load Data into AddressDetailType
INSERT INTO AddressDetailsType VALUES ('Home'), ('Work')

-- LOAD Date into Address
INSERT INTO Address VALUES (10001, '107 Gloucester Road', 'South Kensington', 'London', 'London', 'SW8 4SS', 'UK', 102)
INSERT INTO Address VALUES (10002, '123 Grove Road', 'Chelsea', 'London', 'London', 'SW7 5DD', 'UK', 101)
INSERT INTO Address VALUES (10003, '300 Long Road', 'Old Trafford', 'Manchester', 'Manchester', 'ME1 5DD', 'UK', 102)
INSERT INTO Address VALUES (10004, '12 Song Road', 'Romford', 'London', 'Essex', 'RM10 0DE', 'UK', 101)





