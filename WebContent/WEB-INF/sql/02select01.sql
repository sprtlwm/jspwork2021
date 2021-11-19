-- A 테이블의 내용을 읽을때
-- SELECT 와 FROM 조합으로 작성
-- SELECT : 조회할 열(columns) 명시
-- FROM : Table 명 작성

SELECT * FROM Customers; -- Customers 테이블 조회

-- Employees 테이블 조회
SELECT * FROM Employees;

-- 조회할 열 선택
SELECT LastName, FirstName FROM Employees;

-- Customers 테이블의 CustomersName, Country 컬럼만 조회

SELECT CustomerName Country FROM Customers;

-- 모든 칼럼 조회
SELECT * FROM Customers;

-- 테이블 컬럼(and 제약사항) 조회
DESCRIBE Customers;
DESC Customers;

DESC Employees;

-- categories 테이블의 컬럼 조회
DESC Categories;
