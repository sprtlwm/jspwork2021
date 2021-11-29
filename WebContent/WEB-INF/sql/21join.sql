USE test;

-- join : 여러 테이블 조합

INSERT INTO mytable27Customer (firstName, lastName) VALUES ('cha','bum');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('park','ji');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('son','hm');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('lee','gang');

SELECT * FROM mytable27Customer;

INSERT INTO mytable28Tel (customerID, tel) VALUES ('3','01001111');
INSERT INTO mytable28Tel (customerID, tel) VALUES ('4','01001212');
INSERT INTO mytable28Tel (customerID, tel) VALUES ('4','010013131');

SELECT * FROM mytable28Tel;

-- join
SELECT * FROM mytable27Customer,mytable28Tel; -- cartesign product(카테시안 곱) : 조인 조건 없을시

SELECT * FROM mytable27Customer JOIN mytable28Tel ON mytable27Customer.id = mytable28Tel.customerid;

-- alias (별칭)
SELECT * FROM mytable27Customer AS t27 JOIN mytable28Tel AS t28 ON t27.id = t28.customerId;
SELECT * FROM mytable27Customer t27 JOIN mytable28Tel t28 ON t27.id = t28.customerId; -- AS 생략 가능

SELECT t27.id, t27.firstName, t28.id, t28.tel 
FROM mytable27Customer t27 JOIN mytable28Tel t28 
ON t27.id = t28.customerId;

SELECT t27.id AS 고객번호, t27.firstName AS 이름, t28.id AS 전화ID, t28.tel AS 전화번호
FROM mytable27Customer t27 JOIN mytable28Tel t28 
ON t27.id = t28.customerId;

SELECT t27.id 고객번호, t27.firstName 이름, t28.id 전화ID, t28.tel 전화번호 -- AS 생략 가능
FROM mytable27Customer t27 JOIN mytable28Tel t28 
ON t27.id = t28.customerId;

-- 예제 고객이 주문한 날짜 조회
-- 사용테이블 : 오더, 커스토머

SELECT * FROM Orders; -- 주문 날짜
SELECT * FROM Customers; -- 고객 이름

SELECT c.CustomerName name, o.OrderDate date FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID; 

-- 예제 : 어떤 직원이 어느 날짜에 주문 받았는지 조회
-- 사용 테이블 : 오더, 임플로이

SELECT * FROM Orders;
SELECT * FROM Employees;

SELECT e.FirstName, e.LastName, o.OrderDate FROM Employees e JOIN Orders o on e.EmployeeID = o.EmployeeID ORDER BY e.LastName, e.FirstName;