CREATE TABLE Customer_38 (
    CustomerID NUMBER(10) PRIMARY KEY,
    CustomerName VARCHAR2(255),
    ContactName VARCHAR2(255),
    Address VARCHAR2(255),
    City VARCHAR2(255),
    PostalCode VARCHAR2(10),
    Country VARCHAR2(255)
    );

CREATE TABLE Employees_38 (
    EmployeeID NUMBER(10) PRIMARY KEY,
    LastName VARCHAR2(255),
    FirstName VARCHAR2(255),
    BirthDate DATE,
    Photo BLOB
    );

CREATE TABLE Orders_38 (
    OrderID NUMBER(10) PRIMARY KEY,
    CustomerID NUMBER(10),
    EmployeeID NUMBER(10),
    OrderDate DATE,
    ShipperID NUMBER(10),
    FOREIGN KEY (CustomerID) REFERENCES Customer_38(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees_38(EmployeeID)
    );

INSERT INTO Customer_38 (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (1, 'USA', 'Contact1', 'Address1', 'City1', '12345', 'Country1');


INSERT INTO Customer_38 (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (2, 'INDIA', 'Contact2', 'Address2', 'City2', '23456', 'Country2');

INSERT INTO Customer_38 (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (3, 'USA', 'Contact3', 'Address3', 'City3', '34567', 'Country3');

INSERT INTO Customer_38 (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (4, 'AUS', 'Contact4', 'Address4', 'City4', '45678', 'Country4');

INSERT INTO Customer_38 (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (5, 'GERM', 'Contact5', 'Address5', 'City5', '56789', 'Country5');



INSERT INTO Employees_38 (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (1, 'Smith', 'John', TO_DATE('1980-01-15', 'YYYY-MM-DD'), NULL);

INSERT INTO Employees_38 (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (2, 'Johnson', 'Alice', TO_DATE('1985-03-20', 'YYYY-MM-DD'), NULL);

INSERT INTO Employees_38 (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (3, 'Brown', 'Robert', TO_DATE('1975-09-10', 'YYYY-MM-DD'), NULL);

INSERT INTO Employees_38 (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (4, 'Davis', 'Emily', TO_DATE('1982-11-05', 'YYYY-MM-DD'), NULL);

INSERT INTO Employees_38 (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (5, 'Wilson', 'David', TO_DATE('1990-07-25', 'YYYY-MM-DD'), NULL);



INSERT INTO Orders_38 (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (101, 1, 3, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 1);

INSERT INTO Orders_38 (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (102, 2, 2, TO_DATE('2023-09-28', 'YYYY-MM-DD'), 2);

INSERT INTO Orders_38 (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (103, 3, 1, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 3);

INSERT INTO Orders_38 (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (104, 4, 4, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 1);

INSERT INTO Orders_38 (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (105, 5, 5, TO_DATE('2023-09-29', 'YYYY-MM-DD'), 2);

select*Customer_38;

select * from Customer_38 order by CustomerName;
select * from Orders_38 order by orderdate asc;
select * from Employees_38 where birthdate >= to_date('1980-12-31','yyyy-mm-dd') order by birthdate desc;
update Customer_38 set country = 'USA' where customerid = 1;
update Customer_38 set country = 'USA' where customerid = 3;