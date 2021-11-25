USE test;

CREATE TABLE mytable5 (
	name VARCHAR(255),
    age INT
);

DESC mytable5;

INSERT INTO mytable5 (name, age) VALUES('son',77);

SELECT * FROM mytable5;

CREATE TABLE mytable6(
	name VARCHAR(255),
    score DOUBLE
);

INSERT INTO mytable6(name, score) VALUES ('pack', 3.124);

SELECT * FROM mytable6;

CREATE TABLE mytable7(
	col1 DECIMAL(3),
    col2 DECIMAL(5,2)
    );
    
INSERT INTO mytable7 (col1, col2) VALUES (100, 100.33);

SELECT * FROM mytable7;

INSERT INTO mytable7 (col1) VALUES (1100);

INSERT INTO mytable7 (col2) VALUES (100.12);

INSERT INTO mytable7 (col2) VALUES (1100.12);

CREATE TABLE mytable8(
	dec1 DECIMAL(6),
    dec2 DECIMAL(4,2),
    dec3 DECIMAL(5,4)
    );



