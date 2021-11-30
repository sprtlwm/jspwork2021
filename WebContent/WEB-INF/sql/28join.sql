USE test;

-- 3개 테이블 조인 (Orders, Customers, Employees)

SELECT c.CustomerName, o.OrderDate, o.EmployeeID, e.LastName, e.FirstName
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID
ORDER BY 1;

-- 어떤 고객이 어떤 배송자(Shipper)를 사용했는 지 조회
-- 컬럼:고객명, 주문날짜, 배송자명, 배송자 전화번호
-- 테이블:Customers, Orders, Shippers

SELECT c.ContactName, o. OrderDate, s.ShipperName, s.Phone 
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
				 JOIN Shippers s ON o.ShipperID = s.ShipperID
                 ORDER BY 1;
                 
-- 주문 상세 내역 추가 조회
SELECT c.ContactName, o.OrderDate, p.ProductName, t.CategoryName, d.Quantity, s.ShipperName, s.Phone 
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
				 JOIN Shippers s ON o.ShipperID = s.ShipperID
                 JOIN OrderDetails d ON o.OrderID = d.OrderID
                 JOIN Products p ON d.ProductID = p.ProductID
                 JOIN Categories t ON p.CategoryID = t.CategoryID
                 ORDER BY 1,2;
                 
                 
                 
                 
                 
                 