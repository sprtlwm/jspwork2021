USE test;

CREATE TABLE mytable9(
	col1 DATE,
    col2 DATETIME
);

DESC mytable9;

INSERT INTO mytable9 (col1) VALUES ('2021.11.25');

SELECT * FROM mytable9;

INSERT INTO mytable9 (col2) VALUES('2021-11-25 15:38:00');

SELECT now();

INSERT INTO mytable9 (col1,col2) VALUES (now(), now());

SELECT * FROM mytable9;

