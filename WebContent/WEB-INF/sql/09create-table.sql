USE test;

CREATE TABLE mytable1(
	col1 CHAR(1),
	col2 CHAR(2),
	col3 CHAR(3),
    col4 CHAR(4)
);


INSERT INTO mytable1(col1,col2,col3,col4) VALUES('a','ab','abc','abcd');

SELECT * FROM mytable1;

INSERT INTO mytable1 (col1) VALUES('ab'); -- X

INSERT INTO mytable1 (col4) VALUES('ab');



-- VARCHAR
CREATE TABLE mytable2(
	c1 VARCHAR(1),
    a2 VARCHAR(2),
    c2 VARCHAR(3),
    c4 VARCHAR(4)
    );

INSERT INTO mytable2 (c1, a2, c2, c4) VALUES ('a', 'ab', 'abc','abcd');
INSERT INTO mytable2 (a2) VALUES ('abc');
INSERT INTO mytable2 (c4) VALUES ('ab');


CREATE TABLE mytable3(
	c1 CHAR(5),
    c2 CHAR(4),
    c3 VARCHAR(5),
    c4 VARCHAR(2)
);

INSERT INTO mytable3 (c1,c2,c3,c4) VALUES('apple','whil','bal','sh');

UPDATE mytable3
SET c1 ='app';
UPDATE mytable3
SET c2 ='app';
UPDATE mytable3
SET c3 ='app';

SELECT * FROM mytable3;


