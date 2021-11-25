USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;

DELETE FROM Customers WHERE CustomerID = 00;

DELETE FROM Customers WHERE Address = 'yeoksam';

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Suppliers ORDER BY SupplierID DESC;





