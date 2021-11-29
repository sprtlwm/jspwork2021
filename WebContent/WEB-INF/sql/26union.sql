USE test;

SELECT * FROM mytable27Customer; -- 3, 4, 5, 6
SELECT * FROM mytable28Tel; -- 1, 3, 4

-- 컬럼의 수가 같은 조회 결과의 합집합
SELECT firstName FROM mytable27Customer

UNION

SELECT lastName FROM mytable27Customer;

INSERT INTO mytable27Customer (firstName, lastName) VALUES ('ji', 'sj');

-- 중복된 값도 조회
SELECT firstName FROM mytable27Customer
UNION ALL
SELECT lastName FROM mytable27Customer;

-- union 사용해서 full outer join
SELECT * FROM mytable27Customer; -- 3, 4, 5, 6, 7
SELECT * FROM mytable28Tel; -- 1, 3, 4

SELECT * FROM mytable27Customer c LEFT JOIN mytable28Tel t ON c.id = t.customerId
UNION
SELECT * FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerId;

-- 고객명 직원의 lastName을 하나의 컬럼으로 조회

SELECT CustomerName FROM Customers
UNION
SELECT LastName FROM Employees
ORDER BY 1;


