/*
	시퀀스, Sequence
	- 데이터베이스 객체 중 하나
	- 오라클 전용 객체(다른 DBMS 제품에는 없음)
	- 일렬 번호를 생성하는 객체(***)
	- (주로) 식별자(일렬번호)를 만드는데 사용한다. > PK 값으로 사용한다.
	
	시퀀스 객체 생성하기
	- CREATE SEQUENCE 시퀀스명;
	
	시퀀스 객체 삭제하기
	- DROP SEQUENCE 시퀀스명;
	
	시퀀스 객체 사용하기(함수)
	- 시퀀스객체.nextVal(****)
	- 시퀀스객체.currVal
 */
CREATE SEQUENCE seqNum;

SELECT seqNum.nextVal FROM dual;

CREATE TABLE tblMemo
(
	-- 컬럼명 자료형(길이)NULL 제약사항
	seq number(3) PRIMARY KEY,			-- 메모번호(PK)
	name varchar2(30) UNIQUE,		-- 	작성자(UQS)
	memo varchar2(1000) NOT NULL,	-- 메모(NN)
	regdate DATE DEFAULT SYSDATE		-- 작성날짜
);
SELECT * FROM tblMemo;
CREATE SEQUENCE seqMemo;
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (seqMemo.nextVal , DEFAULT, '메모입니다.', SYSDATE);


-- 쇼핑몰 > 상품 번호 > ABC12345
SELECT 'A' || seqNum.nextVal FROM dual; 

--nextVal 호출하면 나오게될 숫자를 반환 > 확인용
-- Queue, Stack > pop() / peek()
SELECT seqNum.currVal FROM dual;

--currVal는 최소 1번 이상의 nextVal를 호출해야 사용이 가능하다.

SELECT seqNum.nextVal FROM dual;



/*
	 시퀀스 객체 생성하기
	 
	 create sequence 시퀀스명; > 간단하게
	 
	 create sequence 시퀀스명 
	 	increment by n		-- 증감치(양수/음수)
	 	start with n		-- 시작값(Seed)
	 	maxvalue n			-- 최댓값
	 	minvalue n			-- 최솟값
	 	cycle				-- 순환
	 	cache n;
	
 */
DROP SEQUENCE seqTest;

CREATE SEQUENCE seqTest
--	INCREMENT BY -1;
--	START WITH 10;
--	MAXVALUE 10
--	CYCLE
	CACHE 20;

SELECT seqTest.nextVal FROM dual;


SELECT * FROM tblInsa

