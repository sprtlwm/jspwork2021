USE test;

SELECT * FROM Customers
WHERE Country = 'Germany'
	OR Country ='Mexico'
    OR Country ='USA'
;

SELECT * FROM Customers
WHERE Country IN ('Germany', 'Mexico', 'USA');

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'Mexico', 'USA');


SELECT * FROM Suppliers
WHERE Country IN ('USA', 'UK');

SELECT * FROM Suppliers
WHERE Country NOT IN ('USA', 'UK');

SELECT * FROM Categories;
SELECT * FROM Products;

SELECT * FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
WHERE CategoryName IN('Meat/Poultry','Seafood')
;

-- subquery 활용
SELECT * FROM Categories WHERE CategoryName IN ('Meat/poultry', 'Seafood');
SELECT * FROM Products WHERE CategoryID IN (6,8);

SELECT * FROM Products
WHERE CategoryID IN (SELECT CategoryID FROM Categories WHERE CategoryName IN ('Meat/poultry', 'Seafood'));

-- Supplier 가 있는 나라에 고객 목록 조회
SELECT Country
FROM Suppliers;

SELECT * FROM Customers
WHERE Country IN (SELECT Country
					FROM Suppliers)
;




