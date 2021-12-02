USE test;

-- transaction : 하나의 업무 단위

-- 예 : 돈을 송금
--     1. 하나의 계좌에서 출금
--     2. 또 다른 계좌에 입금


CREATE TABLE mytable29Bank (
	id INT PRIMARY KEY AUTO_INCREMENT,
    money INT NOT NULL
);

INSERT INTO mytable29Bank (money) VALUES (10000), (20000);

SELECT * FROM mytable29Bank;

-- 1번 계좌에서 2번 계좌로 5000원 송금업무

-- 1) 1번 계좌에서 출금
UPDATE mytable29Bank SET money = 5000 WHERE id = 1;
-- 2) 2번 계좌에 입금
UPDATE mytable29Bank SET money = 25000 WHERE id = 2;

-- 초기값 세팅
UPDATE mytable29Bank SET money = 10000 WHERE id = 1;
UPDATE mytable29Bank SET money = 20000 WHERE id = 2;

-- auto COMMIT disable
SET autocommit = 0;

-- 다시 5000원 송금
-- 1) 1번 계좌에서 출금
UPDATE mytable29Bank SET money = 5000 WHERE id = 1;
SELECT * FROM mytable29Bank;
-- 3) 번개 맞음
ROLLBACK; -- 이전 상태로 원복
SELECT * FROM mytable29Bank;
-- 2) 2번 계좌에 입금 -- 실행 안됨
-- UPDATE mytable29Bank SET money = 25000 WHERE id = 2;

-- 다시 날씨 좋은 날 5000원 송금
-- 1) 1번 계좌에서 출금
UPDATE mytable29Bank SET money = 5000 WHERE id = 1;
SELECT * FROM mytable29Bank;

-- 2) 2번 계좌에 입금
UPDATE mytable29Bank SET money = 25000 WHERE id = 2;
SELECT * FROM mytable29Bank;

-- 3) 업무 완료 - table에 반영
COMMIT;

SELECT * FROM mytable29Bank;

ROLLBACK; -- commit 이후 ROLLBACK은 적용안됨

-- auto commit 활성화
SET autocommit = 1;

UPDATE mytable29Bank SET money = 30000 WHERE id = 1;
SELECT * FROM mytable29Bank;

ROLLBACK;











