USE test;

SELECT COUNT(CustomerID) FROM Customers;

SELECT Country, count(CustomerID) FROM Customers
GROUP BY Country
ORDER BY 1;

-- 나라별 Supplier 수 조회

SELECT Country, count(SupplierID) FROM Suppliers
GROUP BY Country
ORDER BY 2;

-- 가장 많은 고객이 있는 나라(들) 조회
SELECT 
    *
FROM
    (SELECT 
        Country, COUNT(CustomerID) Count
    FROM
        Customers
    GROUP BY Country) B
WHERE
    count = (SELECT 
            MAX(Count)
        FROM
            (SELECT 
                Country, COUNT(CustomerID) Count
            FROM
                Customers
            GROUP BY Country) A)
;

-- 가장 적은 고객이 있는 나라(들) 조회

SELECT 
    *
FROM
    (SELECT 
        Country, COUNT(CustomerID) Count
    FROM
        Customers
    GROUP BY Country) B
WHERE
    count = (SELECT 
            MIN(Count)
        FROM
            (SELECT 
                Country, COUNT(CustomerID) Count
            FROM
                Customers
            GROUP BY Country) A)
;

-- 고객별 주문 수 조회 (CustomerID, 주문수)
-- table: Customers, Orders
SELECT CustomerID, Count(OrderID) '주문수'
FROM Orders
GROUP BY CustomerID;

-- 고객이름도 같이 조회
SELECT o.CustomerID, c.CustomerName, Count(o.OrderID) '주문수'
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID;

-- 고객별 총 주문한 수량 (CustomerID, 총 주문 수량)
-- tavle : orders, orderDerails
SELECT o.CustomerID, c.CustomerName, SUM(Quantity)'총 주문 수량'
FROM Orders o JOIN OrderDetails d ON o.OrderID = d.OrderID
			  JOIN Customers c ON o.CustomerID = c.CustomerID
              GROUP BY o.CustomerID;












