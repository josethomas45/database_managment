CREATE TABLE Customer38 (
    CustomerID NUMBER(10) PRIMARY KEY,
    CustomerName VARCHAR2(255),
    ContactName VARCHAR2(255),
    Address VARCHAR2(255),
    City VARCHAR2(255),
    PostalCode VARCHAR2(10),
    Country VARCHAR2(255)
);
DESC Customer38;

CREATE TABLE Employees38 (
    EmployeeID NUMBER(10) PRIMARY KEY,
    LastName VARCHAR2(255),
    FirstName VARCHAR2(255),
    BirthDate DATE,
    Photo BLOB
);
DESC Employees38;

CREATE TABLE Orders38 (
    OrderID NUMBER(10) PRIMARY KEY,
    CustomerID NUMBER(10),
    EmployeeID NUMBER(10),
    OrderDate DATE,
    ShipperID NUMBER(10),
    FOREIGN KEY (CustomerID) REFERENCES Customer38(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees38(EmployeeID)
);
DESC Orders38;

INSERT INTO Customer38 (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (1, 'jose', 'Contact1', 'Address1', 'City1', '12345', 'USA');

INSERT INTO Customer38 (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (2, 'Kevin', 'Contact2', 'Address2', 'City2', '23456', 'German');

INSERT INTO Customer38 (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (3, 'Edward', 'Contact3', 'Address3', 'City3', '34567', 'USA');

INSERT INTO Customer38 (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (4, 'Lachi', 'Contact4', 'Address4', 'City4', '45678', 'UK');

INSERT INTO Customer38 (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (5, 'Don', 'Contact5', 'Address5', 'City5', '56789', 'AUS');

SELECT * FROM Customer38;

INSERT INTO Employees38 (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (1, 'Smith', 'John', TO_DATE('1980-01-15', 'YYYY-MM-DD'), NULL);

INSERT INTO Employees38 (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (2, 'Johnson', 'Alice', TO_DATE('1985-03-20', 'YYYY-MM-DD'), NULL);

INSERT INTO Employees38 (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (3, 'Brown', 'Robert', TO_DATE('1975-09-10', 'YYYY-MM-DD'), NULL);

INSERT INTO Employees38 (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (4, 'Davis', 'Emily', TO_DATE('1982-11-05', 'YYYY-MM-DD'), NULL);

INSERT INTO Employees38 (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (5, 'Wilson', 'David', TO_DATE('1990-07-25', 'YYYY-MM-DD'), NULL);

SELECT * FROM Employees38;

INSERT INTO Orders38 (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (101, 1, 3, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 1);

INSERT INTO Orders38 (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (102, 2, 2, TO_DATE('2023-09-28', 'YYYY-MM-DD'), 2);

INSERT INTO Orders38 (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (103, 3, 1, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 3);

INSERT INTO Orders38 (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (104, 4, 4, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 1);

INSERT INTO Orders38 (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (105, 5, 5, TO_DATE('2023-09-29', 'YYYY-MM-DD'), 2);

SELECT * FROM Orders38;

SELECT * FROM Customer38 ORDER BY CustomerName ASC;

UPDATE Customer38 SET CustomerName = 'JOSE' WHERE CustomerID = 1;
UPDATE Customer38 SET CustomerName = 'Jose' WHERE CustomerID = 1;

SELECT * FROM Orders38 ORDER BY OrderDate ASC;
SELECT * FROM Employees38 WHERE BirthDate >= TO_DATE('1980-12-31', 'YYYY-MM-DD') ORDER BY BirthDate DESC;

SELECT * FROM Orders38 WHERE CustomerID IN (SELECT CustomerID FROM Customer38 WHERE Country='USA') ORDER BY OrderDate DESC;



SELECT CustomerID, COUNT(OrderID) FROM Orders38 GROUP BY CustomerID;

SELECT City, COUNT(CustomerID) FROM Customer38 GROUP BY City;

SELECT c.CustomerID, c.CustomerName, COUNT(o.OrderID) AS OrderCount
FROM Customer38 c
JOIN Orders38 o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName
HAVING COUNT(o.OrderID) > 2;

SELECT City, COUNT(CustomerID) AS CustomerCount
FROM Customer38
GROUP BY City
HAVING COUNT(CustomerID) > 3;

