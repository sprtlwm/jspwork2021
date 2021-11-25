SELECT * FROM Customers ORDER BY CustomerID DESC;

UPDATE Customers
SET Address = 'yeoksam'
WHERE CustomerID = 99;

UPDATE Customers
SET
	Address ='mancity',
    City ='Suwon',
    PostalCode ='12345'
WHERE CustomerID =96;    

-- JDBC용
UPDATE Customers
SET 
	CustomerNmae = ?,
    ContactName = ?,
    Address = ?,
    City = ?,
    PostalCode = ?,
    Country = ?
WHERE 
	CustomerID = ?;

SELECT * FROM Suppliers ORDER BY SupplierID DESC;
