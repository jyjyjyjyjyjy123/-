/*
	INSERT
	- DML
	- 테이블에 데이터를 추가하는 명령어
	
	INSERT 구문
	- INSERT INTO 테이블명 (컬럼리스트) VALUES (값리스트);
 */

DROP TABLE TBLMEMO;
CREATE TABLE tblMemo
(
	seq number(3) PRIMARY KEY,				-- 메모번호(PK)
	name varchar2(30) DEFAULT '익명',		-- 	작성자(UQS)
	memo varchar2(1000),					-- 메모(NN)
	regdate DATE DEFAULT SYSDATE NOT NULL	-- 작성날짜
);
SELECT * FROM tblMemo;

DROP SEQUENCE seqMemo;
CREATE SEQUENCE seqMemo;

-- 1. 표준
-- : 원본 테이블의 정의된 컬럼 순서대로 컬럼리스트와 값리스트를 구성하는 방법
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (seqMemo.nextVal, '홍길동', '메모입니다.', SYSDATE);
-- 2. 컬럼리스트의 순서는 워본 테이블과 상관없다.
-- : 컬럼리스트와 값리스트의 순서만 동리하면 된다.
INSERT INTO TBLMEMO (seq, memo, name, regdate)
		VALUES (seqMemo.nextVal, '메모입니다.', '홍길동', SYSDATE);
-- 3. ORA-00947: not enough values
-- : 컬럼의 개수와 데이터의 개수는 같아야한다 
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (seqMemo.nextVal, '메모입니다.', SYSDATE);
-- 4. ORA-00913: too many values
-- : 컬럼의 개수와 데이터의 개수는 같아야한다 
INSERT INTO TBLMEMO (seq, memo, regdate)
		VALUES (seqMemo.nextVal, '홍길동', '메모입니다.', SYSDATE);
-- 5. NULL 컬럼 조작
-- :
INSERT INTO TBLMEMO (seq, memo, regdate)
		VALUES (seqMemo.nextVal, '메모입니다.', SYSDATE);
-- 6. default 컬럼 조작
-- 6.a 컬럼 생략 > null 대입 > default 동작함
INSERT INTO TBLMEMO (seq, memo, regdate)
		VALUES (seqMemo.nextVal, '메모입니다.', SYSDATE);
-- 6.b null 상수 > NULL 대입 (개발자 의지 표현) > DEFAULT 동작 안함
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (seqMemo.nextVal, NULL, '메모입니다.', SYSDATE);
-- 6.c default 상수
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (seqMemo.nextVal, default, '메모입니다.', SYSDATE);
-- 7. 단축
-- : 컬럼리스트를 생략할 수 있다.
INSERT INTO TBLMEMO VALUES (seqMemo.nextVal, '홍길동', '메모입니다.', SYSDATE);
-- : 컬럼 시트를 생략하면 테이블의 원본 컬럼 순서대로 값리스트를 작성해야 한다.
INSERT INTO TBLMEMO VALUES (seqMemo.nextVal, '메모입니다.', '홍길동', SYSDATE);
-- : null 컬럼을 생략 불가능
INSERT INTO TBLMEMO VALUES (seqMemo.nextVal, '홍길동', SYSDATE);
INSERT INTO TBLMEMO VALUES (seqMemo.nextVal, '홍길동', NULL, SYSDATE);
-- : default 컬럼을 생략 불가능
INSERT INTO TBLMEMO VALUES (seqMemo.nextVal, '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO VALUES (seqMemo.nextVal, default, '메모입니다.', SYSDATE);
-- 8. 
-- : tblMemo 테이블 > 복사 > 새 테이블 생성
CREATE TABLE tblMemoCopy
(
	seq number(3) PRIMARY KEY,				-- 메모번호(PK)
	name varchar2(30) DEFAULT '익명',		-- 	작성자(UQS)
	memo varchar2(1000),					-- 메모(NN)
	regdate DATE DEFAULT SYSDATE NOT NULL	-- 작성날짜
);

SELECT * FROM TBLMEMO;

INSERT INTO TBLMEMOCOPY SELECT * FROM TBLMEMO;

SELECT * FROM TBLMEMOCOPY;


-- 9. 
-- tblMemo 테이블 > 복사 > 새 테이블 생성(tblMemoCopy2)
-- 제약사항이 복사가 안된다.
-- 임시 테스트용으로 사용 > 다량의 데이터, 임시 데이터
CREATE TABLE tblMemoCopy2 AS SELECT * FROM TBLMEMO;

SELECT * FROM TBLMEMOCOPY2;

INSERT INTO TBLMEMOCOPY2 (seq, name, memo, regdate)
		VALUES (12, '홍길동', '메모입니다.', SYSDATE);

















