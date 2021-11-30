USE test;

SELECT * FROM Categories;
SELECT * FROM Products;

SELECT p.ProductID, p.ProductName, c.CategoryName, p.Unit, p.Price FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
ORDER BY 1,2;


