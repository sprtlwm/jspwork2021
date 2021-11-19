
-- AND  두 조건 모두 만족
SELECT * FROM Customers WHERE CustomerID <10 AND Country = 'Mexico';

-- Customers 테이블에서 Country = Germany 이고 City = Berlin 인 행 조회
SELECT * FROM Customers WHERE Country = 'Germany' And City = 'Berlin';

-- OR : 두 조건 중 하나만 만족
SELECT * FROM Customers WHERE City = 'Paris' OR Country = 'UK';

-- Customers 테이블에서 Country = Germany 이거나 country = Spain 인 행 조회
SELECT * FROM Customers WHERE Country = 'Germany' OR Country = 'Spain';

-- NOT : 조건에 해당하지 않는 것
SELECT * FROM Customers WHERE NOT Country = 'UK';

-- Customers 테이블에서 Couontry = Germany 가 아닌 행 조회(NOT 키워드 사용)
SELECT * FROM Customers WHERE NOT Country = 'Germany';

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

SELECT * FROM Customers
WHERE Country='Germany' AND NOT (City='Berlin' OR City='München');


SELECT * FROM Customers WHERE Country='Germany' AND Country='USA';
