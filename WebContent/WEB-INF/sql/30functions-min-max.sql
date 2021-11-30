USE test;

SELECT * FROM Products
ORDER BY Price ASC;

SELECT MIN(Price) AS SmallestPrice FROM Products;
SELECT MAX(Price) LargestPrice FROM Products; -- as 생략 가능

-- Employees 테이블에서 가장 이른 생일, 늦은 생일 조회
SELECT * FROM Employees;

SELECT MIN(BirthDate) FROM Employees;
SELECT MAX(BirthDate) FROM Employees;

-- 쿼리안에 쿼리(nested query)
SELECT * FROM Employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM Employees); -- 주의 : 연산자 사용시 서브쿼리 결과는 단일 결과

-- 가장 나중에 태어난 사람
SELECT 
    *
FROM
    Employees
WHERE
    BirthDate = (SELECT 
            MAX(BirthDate)
        FROM
            Employees);

-- 가장 싼 가격 제품 조회
SELECT 
    *
FROM
    Products
WHERE
    Price = (SELECT 
            MIN(Price)
        FROM
            Products);

-- 가장 비싼 제품 조회
SELECT 
    *
FROM
    Products
WHERE
    Price = (SELECT 
            MAX(Price)
        FROM
            Products);
