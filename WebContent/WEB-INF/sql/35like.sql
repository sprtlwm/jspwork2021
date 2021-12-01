USE test;

SELECT * FROM Customers
WHERE CustomerName = 'Alfreds Futterkiste';

SELECT * FROM Customers
WHERE CustomerName LIKE 'Alf%'; -- % : 아무거나 0개이상 일치

SELECT * FROM Customers
WHERE CustomerName LIKE 'A%'; -- % : 아무거나 0개이상 일치

SELECT * FROM Customers
WHERE CustomerName LIKE '%A';

SELECT * FROM Customers
WHERE CustomerName LIKE '%A%';

-- 연습1 : Employees 에서 LastName 에 'u'포함된 직원들 조회
SELECT * FROM Employees
WHERE LastName LIKE '%u%';
-- 연습2 : Employees 에서 Notes 에 'BA'가 포함된 직원들 조회
SELECT * FROM Employees
WHERE Notes LIKE '%BA%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'Ernst Hande_'; -- _ : 한글자 아무거나 

-- jdbc10 -> dao 변경해서 동작
SELECT employeeID, lastName, firstName, birthDate, notes FROM Employees
WHERE note Like ?
		OR lastName LIKE ?
        OR firstName LIKE ?
;


