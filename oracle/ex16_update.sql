/*
	
	
	UPDATE
	- DML
	- 원하는 행의 원하는 컬럼값을 수정하는 명령어
	
	UPDATE 구문
	- UPDATE 테이블명 SET 컬럼명=값[, 컬럼명=값] X N [WHERE 절]
	
	
 */
-- 트랜잭션 처리
COMMIT;
ROLLBACK;

SELECT * FROM TBLCOUNTRY; 

-- 대한민국 수도 이전 서울 > 세종
UPDATE TBLCOUNTRY SET CAPITAL = '세종'; -- 전체 다 바뀜(*****), 조심해야됨
UPDATE TBLCOUNTRY SET CAPITAL = '세종' WHERE NAME = '대한민국'; -- 대한민국만 바뀜
UPDATE TBLCOUNTRY SET 
	CAPITAL = '세종',
	POPULATION = POPULATION + 100,
	CONTINENT = 'EU'
WHERE NAME = '대한민국'; -- 대한민국만 바뀜























