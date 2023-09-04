
/*
	
	DDL > 객체 조작
	- 객체 생성 : CREATE
	- 객체 수정 : ALTER
	- 객체 삭제 : DROP
	
	DML > 데이터 조작
	- 데이터 생성: INSERT
	- 데이터 수정: UPDATE
	- 데이터 삭제: DELETE
	
	테이블 수정하기
	- 테이블 정의 수정 > 스키마 수정 > 칼럼 수정 > 컬렴명 OR 자료형(길이) OR 제약사항 등
	- 되도록 테이블 수정하는 상황을 발생시키면 안된다!! > 설계를 반드시 완벽하게
	
	테이블 수정해야 하는 상황 발생
	1. 테이블 삭제(DROP) > 테이블 DDL(CREATE) 수정 > 수정된 DDL로 새롭게 테이블 생성
		a. 기존 테이블에 데이터가 없었을 경우 > 아무 문제 없음
		b. 기존 테이블에 데이터가 있었을 경우 > 미리 데이터 백업 > 테이블 삭제 > 수정된 테이블 다시 생성 > 데이터 복구
			- 개발 중에 사용 가능
			- 공부할 때 사용 가능
			- 서비스 운영 중에는 거의 불가능한 방법
	
	2. ALTER 명령어 사용 > 기존 테이블의 구조 변경
		a. 기존 테이블에 데이터가 없었을 경우 > 아무 문제 없음
		b. 기존 테이블에 데이터가 있었을 경우 > 경우에 따라 비용 차이 
			- 개발 중에 사용 가능
			- 공부할 때 사용 가능
			- 서비스 운영 중에는 겨웅에 따라 가능
			
			
 */
DROP TABLE TBLEDIT;

CREATE TABLE TBLEDIT(
	SEQ NUMBER PRIMARY KEY,
	DATA VARCHAR2(20) NOT NULL
);

INSERT INTO TBLEDIT VALUES (1, '마우스');
INSERT INTO TBLEDIT VALUES (2, '키보드');
INSERT INTO TBLEDIT VALUES (3, '모니터');

SELECT * FROM TBLEDIT;

-- CASE 1. 새로운 컬럼을 추가하기 
ALTER TABLE TBLEDIT
	ADD (PRICE NUMBER);
-- ORA-01758: table must be empty to add mandatory (NOT NULL) column
-- 
ALTER TABLE TBLEDIT
	ADD (QTY NUMBER NOT NULL);

DELETE FROM TBLEDIT;


INSERT INTO TBLEDIT VALUES (1, '마우스',1000,1);
INSERT INTO TBLEDIT VALUES (2, '키보드',2000,1);
INSERT INTO TBLEDIT VALUES (3, '모니터',3000,2);

ALTER TABLE TBLEDIT
	ADD (COLOR VARCHAR2(30) DEFAULT 'WHITE' NOT NULL );

SELECT * FROM TBLEDIT;

-- CASE 2. 컬럼 삭제하기
-- 크게 주의해야 할것은 없지만
-- PK가 삭제하지 않도록 조심(PK도 삭제가됨)
ALTER TABLE TBLEDIT
	DROP COLUMN COLOR;
ALTER TABLE TBLEDIT
	DROP COLUMN QTY;
ALTER TABLE TBLEDIT
	DROP COLUMN PRICE;





























