USE test;

-- foreign key (외래키, 참조키)

CREATE TABLE mytable27Customer(
	id INT PRIMARY KEY AUTO_INCREMENT,
	firstName VARCHAR(255),
    lastName VARCHAR(255)
    );
    
CREATE TABLE mytable28Tel(
	id INT PRIMARY KEY AUTO_INCREMENT,
    customerID INT ,
    tel VARCHAR(255),
    FOREIGN KEY (customerID) REFERENCES mytable27Customer(id) 
    );
    
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('hong', 'gildong');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('son', 'hm');
SELECT * FROM mytable27Customer;

INSERT INTO mytable28Tel (customerID, tel) VALUES ('1', '21-1234-7456');
INSERT INTO mytable28Tel (customerID, tel) VALUES ('2', '01033234123');
INSERT INTO mytable28Tel (customerID, tel) VALUES ('2', '21-456-7456');
SELECT * FROM mytable28Tel;

INSERT INTO mytable28Tel (customerID, tel) VALUES ('3', '21-1234-7456'); -- 참조키가 존재하지않는 오류발생

-- 삭제 
DELETE FROM mytabld27Customer WHERE id=2; -- 전화번호 테이블에서 참조하는 중이어서 삭제 안됨

DELETE FROM mytable28Tel WHERE customerID = 2;
DELETE FROM mytable27Customer WHERE id = 2; -- ok 

SELECT * FROM mytable27Customer;
SELECT * FROM mytable28Tel;

-- foreign key 제약사항 삭제
SHOW CREATE TABLE mytable28Tel;

ALTER TABLE mytable28Tel DROP FOREIGN KEY mytable28Tel_ibfk_1;

-- 제약사항 삭제후 고객테이블 먼저 삭제
DELETE FROM mytable27Customer WHERE id =1;
SELECT * FROM mytable27Customer;
SELECT * FROM mytable28Tel;


    