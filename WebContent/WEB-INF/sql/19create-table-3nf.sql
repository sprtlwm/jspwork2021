USE test;

-- 3정규화(third normal form, 3nf)

CREATE TABLE mytable25Winner(
	id INT PRIMARY KEY AUTO_INCREMENT,
	tournament VARCHAR(255),
    year CHAR(4),
    winnerID INT
    );

CREATE TABLE mytable26WinnerBirth(
	id INT PRIMARY KEY AUTO_INCREMENT,
    winner VARCHAR(255),
    birth DATE
    );
    
    