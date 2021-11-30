USE test;

-- avg 
SELECT AVG(Price) FROM Products; -- 28.866 -> 28.496

-- sum
SELECT SUM(Price) FROM Products;
DESC Products;
SELECT * FROM Products;

INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit, Price)
VALUES ('My prod', 1,1,'1kg',0);
INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit)
VALUES ('My prod', 1,1,'1kg'); -- null은 평균계산에서 제외

-- 평균값 이하인 상품목록
SELECT * FROM Products WHERE Price <= (SELECT AVG(Price) FROM Products) ORDER BY 6;

-- 평균 값 이상인 상품 목록
SELECT * FROM Products WHERE Price >= (SELECT AVG(Price) FROM Products) ORDER BY 6; 

-- 1996-07-08 에 주문한 상품의 총 수량
SELECT SUM(d.Quantity)
 FROM Orders o JOIN OrderDetails d ON o.OrderID = d.OrderID
WHERE o.OrderDate ='1996-07-08';