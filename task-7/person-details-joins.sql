-- Person Detail Report view using joins

CREATE VIEW Person_Details AS
    SELECT FirstName, LastName, (Line1 + ' ' + Line2) AS Address, City, ContactDetail AS Mobile
        FROM Person
        INNER JOIN Address A on Person.PersonId = A.PersonId
        INNER JOIN AddressDetailsType ADT on ADT.AddressDetailsTypeId = A.AddressDetailsTypeId
        INNER JOIN ContactDetail CD on Person.PersonId = CD.PersonId
        INNER JOIN ContactDetailType CDT on CDT.ContactDetailTypeId = CD.ContactDetailTypeId
        WHERE DetailType='Phone'

-- Query Data using View

SELECT * FROM Person_Details
