-- DISTINCT 키워드
-- : 중복제거

SELECT city FROM Customers;

SELECT DISTINCT city FROM Customers;

-- Customers 테이블의 Country 칼럼을 중복 제거해서 조회

SELECT DISTINCT country FROM Customers;

SELECT DISTINCT City, Country FROM Customers; 