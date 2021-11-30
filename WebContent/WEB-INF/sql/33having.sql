USE test;

SELECT Country, count(CustomerID) people FROM Customers
-- WHERE people >10
GROUP BY Country
HAVING count(CustomerID) >= 10 -- people >= 10 가능
;

-- 주문을 한 번만 한 사람들 조회
-- table: orders, customers

SELECT o.CustomerID, c.CustomerName, count(OrderID) 
From Orders o JOIN Customers c ON c.CustomerID = o.CustomerID
GROUP BY o.CustomerID
HAVING count(OrderID) = 1 
;    

-- 주문을 한번 또는 영번 받은 직원 조회
SELECT e.EmployeeID, count(o.OrderID) 
From Employees e LEFT JOIN Orders o  ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
HAVING count(o.OrderID) <= 1;

-- 
SELECT 
    Country, City, COUNT(CustomerID)
FROM
    Customers
GROUP BY Country , City;




