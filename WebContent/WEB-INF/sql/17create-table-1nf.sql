USE test;

-- 중복과 NULL 가능한 피하기

-- 예제 (제 1정규화, first normal form, 1NF)
CREATE TABLE mytable21Customer (
	customerID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(255) NOT NULL,
    surName VARCHAR(255) NOT NULL
--  tel1 VARCHAR(255),
--  tel2 VARCHAR(255),
-- tel3 VARCHAR(255)
    );

CREATE TABLE mytable22Tel(
	id INT PRIMARY KEY AUTO_INCREMENT,
    customerID INT NOT NULL,
    tel VARCHAR(255) NOT NULL
    );












