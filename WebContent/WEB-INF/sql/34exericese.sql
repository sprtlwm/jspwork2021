-- 상품별 판매수량
SELECT p.ProductID, p.ProductName, sum(od.Quantity) 
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductID
;


-- 상품별 매출액
SELECT p.ProductID, p.ProductName, sum(od.Quantity) * p.Price '합'
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductID
;


-- 날짜별 매출액
SELECT o.OrderDate, od.ProductID,
       p.ProductName, p.Price, od.Quantity,
       sum(p.Price * od.Quantity) '합'
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
			  JOIN Products p ON od.ProductID = p.ProductID
GROUP BY o.OrderDate
ORDER BY o.OrderDate
;