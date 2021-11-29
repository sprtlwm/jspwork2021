USE test;

SELECT * FROM mytable27Customer; -- 3, 4, 5, 6
SELECT * FROM mytable28Tel; -- 1, 3, 4

SELECT * FROM mytable27Customer c FULL OUTER JOIN mytable28Tel t ON c.id = t.customerId; -- mysql 없음
