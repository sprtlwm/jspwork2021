USE test;

CREATE TABLE mytable10 (
		col1 int,
        col2 double,
        col3 DEC(10,3),
        col4 CHAR(3),
        col5 VARCHAR(255),
        col6 DATE,
        col7 TIME
        );

SELECT * FROM mytable10;

-- JDBC37Servet, JDBC38Servlet, v37.jsp, v38jsp, Bean11, MyTable11Dao

CREATE TABLE mytable11(
	name VARCHAR(255),
    age INT,
    birth DATE
    );
    
SELECT * FROM mytable11;