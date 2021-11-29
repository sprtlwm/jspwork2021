USE test;

CREATE TABLE mytable20(
	col1 INT,
    col2 INT
);
DESC mytable20;
-- 제약사항 추가 
ALTER TABLE mytable20 MODIFY COLUMN col1 INT NOT NULL;
-- 제약사항 삭제
ALTER TABLE mytable20 MODIFY COLUMN col1 INT NULL;

-- 제약사항 추가 전 제약사항을 위반하는 레코드가 있을 시
-- 제약사항을 추가하는 쿼리 실행 안됨
INSERT INTO mytable20 (col2) VALUES (3);
SELECT
	*
FROM
	mytable20;

-- DEFAULT 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT DEFAULT 0;

-- DEFAULT 삭제
ALTER TABLE mytable20 ALTER col1 DROP DEFAULT;
 
DESC mytable20;

-- check 제약사항 추가
ALTER TABLE mytable20 ADD CHECK (col1>10);

-- 제약사항 확인
SHOW CREATE TABLE mytable20;

-- check 제약사항 삭제
ALTER TABLE mytable20 DROP CONSTRAINT CONSTRAINT_1;

DESC mytable20;

-- UNIQUE 제약사항 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT UNIQUE;

-- UINQUE 제약사항 삭제
ALTER TABLE mytable20 DROP INDEX col1;

-- INDEX 없는 경우
SELECT * FROM mytable20 WHERE col1 = 10; -- 모든 레코드 탐색

-- INDEX 있는경우
SELECT * FROM mytable20 WHERE col1 =10; -- col1 인덱스를 먼저 탐색( 효율적 탐색 )

TRUNCATE mytable20; -- 모든 레코드 삭제

-- PRIMARY KEY 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT PRIMARY KEY;

-- PRIMARY KEY 삭제
ALTER TABLE mytable20 DROP PRIMARY KEY;


