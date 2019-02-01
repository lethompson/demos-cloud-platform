



CREATE TABLE libraryBooks (
    BookID int,
    ISBN varchar(255),
    Title varchar(255),
    Author varchar(255),
    Bookformat varchar(255),
    PRIMARY KEY (BookID)
);



INSERT INTO libraryBooks (BookID,ISBN, Title, Author, Bookformat)
VALUES (1,'9182932465265', 'Cloud Computing Concepts', 'Wilson Joe', 'Paperback'),
(2,'3142536475869', 'The Database Guru', 'Gomez Maria', 'eBook');


SELECT * FROM libraryBooks;



CREATE TABLE Customers (
    CustomerID int,
    CustomerName varchar(255),
    ContactName varchar(255),
    Address varchar(255),
    City varchar(255) ,
    PostCode varchar(255),
    Country varchar(255),
    PRIMARY KEY (CustomerID)
);


INSERT INTO Customers (CustomerID,CustomerName, ContactName, Address, City, PostCode, Country)
VALUES (89,'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA'),
(90,'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland'),
(91,'Wolski', 'Zbyszek', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland'),
(92,'Cardinal', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Stavanger', '98128', 'Norway');

SELECT * FROM Customers;

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

INSERT INTO Persons (ID,LastName,FirstName,Age)
VALUES (1,'Hansen','Ola',30),
(2,'Svendson','Tove',23),
(3,'Pettersen','Kari',20);

SELECT * FROM Persons;

CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int,
    FOREIGN KEY (PersonID) REFERENCES `Persons` (`id`) ON UPDATE CASCADE ON DELETE RESTRICT)ENGINE=INNODB;
    
  
INSERT INTO Orders (OrderID,OrderNumber,PersonID)
VALUES (1,77895,3),
(2,44678,3),
(3,22456,2),
(4,24562,1);

SELECT * FROM Orders;
SELECT * FROM Persons;
