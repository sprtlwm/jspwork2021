USE test;

SELECT*FROM Customers ORDER BY CustomerID DESC;

INSERT INTO Customers VALUES (92,'Kim','Kim','GangNam','Seoul','88888','Korea');

INSERT INTO Customers (CustomerID, CustomerName) VALUES(93,'Lee');

INSERT INTO Customers (CustomerID, ContactName) VALUES(94, 'Choi');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(95, 'Park', 'JiSung', 'YeoKsam', 'Seoul', '77777', 'Korea');

-- 96번 97번 records 추가 sql 작성, 실행

INSERT INTO Customers (CustomerName) VALUES('Cha');

DELETE FROM Customers WHERE CustomerID=94;

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('See','you','GangNam','Seoul','12345','Korea');

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cu','pang','Samseong','Seoul','98765','Korea');

--

SELECT * FROM Suppliers ORDER BY SupplierID DESC;

INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone)
VALUES(?, ?, ?, ?, ?, ?, ?);

