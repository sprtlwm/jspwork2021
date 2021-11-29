USE test;

SELECT * FROM mytable27Customer; -- 3, 4, 5, 6
SELECT * FROM mytable28Tel; -- 1, 3, 4

SELECT * FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerID;
									-- OUTER						
-- 주인 없는 전화번호
SELECT * FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerID
WHERE c.id IS NULL;

-- 주문한 적 없는 고객명 조회
SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT c.CustomerName FROM Orders o RIGHT JOIN Customers c ON c.CustomerID = o.CustomerID
 WHERE o.CustomerID IS NULL ORDER BY 1;

-- 주문받은 적 없는 직원명 조회
SELECT * FROM Employees;
SELECT * FROM Orders;

SELECT e.FirstName, e.LastName FROM Orders o RIGHT JOIN Employees e ON e.EmployeeID = o.EmployeeID
 WHERE o.EmployeeID IS NULL;
 













