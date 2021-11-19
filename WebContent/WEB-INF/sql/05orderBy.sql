-- ORDER BY : 정렬

SELECT * FROM Customers WHERE Country = 'Germany';

SELECT * FROM Customers WHERE Country = 'Germany' ORDER BY City; -- City 컬럼 기준 정렬

-- 미국 고객들을 이름 순 정렬

SELECT * FROM Customers WHERE Country ='USA' ORDER BY ContactName;

-- 기본 오름차순 정렬
-- 내림차순 정렬은 DESC 키워드 사용

SELECT * FROM Customers WHERE Country ='USA' ORDER BY CustomerName DESC; -- 역순 정렬

-- 독일 고객 도시명 기준 역순 조회
SELECT * FROM Customers WHERE Country='Germany' ORDER BY City DESC;

-- 여러 컬럼 기준 정렬 : ORDER BY 다음 컬럼명 나열.
SELECT * FROM Customers ORDER BY Country, City;

-- 고객을 나라, 고객명 기준으로 정렬 조회
SELECT * FROM Customers ORDER BY Country, CustomerName;

-- 고객을 나라 역순, 고객명 오름차순 정렬 조회
SELECT * FROM Customers ORDER BY Country DESC, CustomerName; -- ASC <= 오름차순(기입 생략 가능)

-- 고객을 Country ASC, City ASC, 고객명 DESC 정렬 조회
SELECT * FROM Customers ORDER BY Country ASC, City ASC, CustomerName DESC;