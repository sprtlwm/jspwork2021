USE test;

-- count : 개수 
-- Customers 테이블의 row 개수
SELECT COUNT(*) FROM Customers;
SELECT * FROM Customers;
SELECT COUNT(CustomerID) FROM Customers;
SELECT COUNT(ContactName) FROM Customers; -- NULL은 COUNT 안함
SELECT * FROM Customers WHERE ContactName IS NULL;

SELECT * FROM Customers ORDER BY Country;
SELECT COUNT(DISTINCT Country) FROM Customers;

-- Suppliers 의 City 컬럼의 값이 중복없이 몇 개 있는가
SELECT COUNT(DISTINCT City) FROM Suppliers;
-- Suppliers 의 Country 컬럼의 값이 중복없이 몇 개 있는가
SELECT COUNT(DISTINCT Country) FROM Suppliers;

-- seafood 의 주문횟수 조회
SELECT COUNT(*) FROM OrderDetails d JOIN Products p ON d.ProductID = p.ProductID
									JOIN Categories t ON p.CategoryID = t.CategoryID
WHERE t.CategoryName ='seafood';

-- seafood 가 한 번이라도 주문한 고객 수 조회
SELECT count(DISTINCT c.CustomerID) FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
									JOIN OrderDetails d ON o.OrderID = d.OrderID
                                    JOIN Products p on p.ProductID = d.ProductID
                                    JOIN Categories t ON t.CategoryID = p.CategoryID
                                    WHERE t.CategoryName = 'seafood';
                                    
                                    












