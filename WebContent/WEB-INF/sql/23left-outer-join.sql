USE test;

SELECT * FROM mytable27Customer; -- 3, 4, 5, 6
SELECT * FROM mytable28Tel; -- 1, 3, 4

SELECT * FROM mytable27Customer c LEFT OUTER JOIN mytable28Tel t ON c.id = t.customerId;

SELECT * FROM mytable27Customer c LEFT JOIN mytable28Tel t ON c.id = t.customerId; -- outer 생략가능

-- 전화번호 없는 고객
SELECT * FROM mytable27Customer c LEFT JOIN mytable28Tel t ON c.id = t.customerID WHERE t.id IS NULL;

-- 주문한적 없는 고객명 오름차순 조회
-- 사용 테이블 : 커스토머, 오더
SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT c.CustomerName FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
 WHERE o.CustomerID IS NULL ORDER BY c.ContactName;
 
 -- 주문 받은 적 없는 직원명 오름차순 조회
-- 사용 테이블 : 임플로이, 오더
SELECT * FROM Employees;
SELECT * FROM Orders;
 
 SELECT e.FirstName, e.LastName FROM Employees e LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID
 WHERE o.OrderID IS NULL ORDER BY e.FirstName, e.LastName;
 
 




