/*
	
	ex01 ~ ex12: DML 기본(기초)
	
	DDL
	- 데이터 정의어
	- 데이터베이스 객체를 생성/수정/삭제한다.
	- 데이터베이스 객체 > 테이블, 뷰, 인덱스, 프로시저, 트리거, 제약사항, 시노닙 등..
	- CREATE, ALTER, DROP
	
	테이블 생성하기 > 스키마 정의하기 > 속성(컬럼) 정의하기
	
	CREATE TABLE 테이블명
	(
		컬럼 정의,
		컬럼 정의,
		컬럼 정의,
		컬럼명 자료형(길이),
		컬럼명 자료형(길이) NULL 제약사항
	);
	
	제약 사항, Constraint
	- 해당 컬럼에 들어갈 데이터(값)에 대한 조건
	1. 조건을 만족하면 > 대입
	2. 조건을 불만족하면 > 에러 발생
	- 유효성 검사도구
	- 데이터 무결성을 보장하기 위한 도구(*****)
	
	1. NOT NUL
		- 해당 컬럼이 반드시 값을 가져야 한다.
		- 해당 컬럼에 값이 없으면 에러 발생
		- 필수값
	2. PRIMARY KEY, PK
		- 기본키
		- 테이블의 행을 구분하기 위한 제약 사항
		- 행을 식별하는 수많은 키(후보키)들 중 대표로 선정된 키
		- 모든 테이블은 반드시 1개의 기본키가 존재해야 한다.(*******************)
		- 중복값을 가질 수 없다. > UNIQUE
		- 값을 반드시 가진다. > NOT NULL                                                                                                          
	3. FOREIGN KEY, FK
		- 다음에
	4. UNIQUE
		- 유일하다 > 레코드간의 중복값을 가질 수 없다.
		- NULL을 가질 수 있다. > 식별자가 될 수 없다.
		ex) 초등학교 교실
			- 학생(번호(PK), 이름(NN),직책)
	5. CHECK
		- 사용자 정의형
		- where절의 조건 > 칼럼의 제약 사항으로 적용
		
	6. DEFAULT
		- 기본값 설정
		- insert/update 작업 시 > 컬럼에 값을 안넣으면 null대신 미리 설정한 값을 대입 
		
		
		
	제약 사항을 만드는 방법
	1. 컬럼 수준에서 만드는 방법
		- 위에서 수업한 방법
		- 컬럼을 선언할 때 제약 사항도 같이 선언하는 방법
	2. 테이블 수준에서 만드는 방법
		-
	3. 외부에서 만드는 방법
 */

-- 메모 테이블
CREATE TABLE tblMemo
(
	-- 컬럼명 자료형(길이)NULL 제약사항
	seq number(3) NULL,			-- 메모번호
	name varchar2(30) NULL,		-- 	작성자
	memo varchar2(1000) NULL,	-- 메모
	regdate DATE NULL			-- 작성날짜
);

SELECT * FROM tblMemo;

INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (1, '홍길동', '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (2, '아무개', NULL, SYSDATE);
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (3, NULL, NULL, NULL);
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (NULL, NULL, NULL, NULL);

DROP TABLE TBLMEMO;	
CREATE TABLE tblMemo
(
	-- 컬럼명 자료형(길이)NULL 제약사항
	seq number(3) NOT NULL,			-- 메모번호(NN)
	name varchar2(30) NULL,		-- 	작성자
	memo varchar2(1000) NOT NULL,	-- 메모(NN)
	regdate DATE NULL			-- 작성날짜
);
SELECT * FROM tblMemo;

INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (1, '홍길동', '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (2, '홍길동', NULL, SYSDATE);
INSERT INTO TBLMEMO (seq, name, regdate)
		VALUES (2, '홍길동', SYSDATE);
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (2, '홍길동', '', SYSDATE);		--오라클은 빈문자('')도 NULL로 취급한다.

		
		
DROP TABLE TBLMEMO;	
CREATE TABLE tblMemo
(
	-- 컬럼명 자료형(길이)NULL 제약사항
	seq number(3) PRIMARY KEY,			-- 메모번호(PK)
	name varchar2(30) NULL,		-- 	작성자
	memo varchar2(1000) NOT NULL,	-- 메모(NN)
	regdate DATE NULL			-- 작성날짜
);
SELECT * FROM tblMemo;

INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (1, '홍길동', '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (2, '홍길동', '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES ('', '홍길동', '메모입니다.', SYSDATE);



DROP TABLE TBLMEMO;	
CREATE TABLE tblMemo
(
	-- 컬럼명 자료형(길이)NULL 제약사항
	seq number(3) PRIMARY KEY,			-- 메모번호(PK)
	name varchar2(30) UNIQUE,		-- 	작성자(UQS)
	memo varchar2(1000) NOT NULL,	-- 메모(NN)
	regdate DATE			-- 작성날짜
);
SELECT * FROM tblMemo;

INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (1, '홍길동', '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (2, '아무개', '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (3, NULL, '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (4, NULL, '메모입니다.', SYSDATE);



DROP TABLE TBLMEMO;	
CREATE TABLE tblMemo
(
	-- 컬럼명 자료형(길이)NULL 제약사항
	seq number(3) PRIMARY KEY,	-- 메모번호(PK)
	name varchar2(30),			-- 	작성자
	memo varchar2(1000),		-- 메모(NN)
	regdate DATE,				-- 작성날짜
	priority NUMBER(1) CHECK(priority BETWEEN 1 AND 3), 			-- 중요도(1. 중요, 2. 보통, 3. 안중요)
	category varchar2(30) CHECK(category IN('할일', '공부', '약속'))
);
SELECT * FROM tblMemo;

INSERT INTO TBLMEMO (seq, name, memo, regdate, priority, CATEGORY)
		VALUES (1, '홍길동', '메모입니다.', SYSDATE, 1, '할일');
INSERT INTO TBLMEMO (seq, name, memo, regdate, priority, CATEGORY)
		VALUES (2, '홍길동', '메모입니다.', SYSDATE, 5, '할일');
INSERT INTO TBLMEMO (seq, name, memo, regdate, priority, CATEGORY)
		VALUES (3, '홍길동', '메모입니다.', SYSDATE, 1, '개인');



	
DROP TABLE TBLMEMO;	
CREATE TABLE tblMemo
(
	-- 컬럼명 자료형(길이)NULL 제약사항
	seq number(3) PRIMARY KEY,			-- 메모번호(PK)
	name varchar2(30) UNIQUE,		-- 	작성자(UQS)
	memo varchar2(1000) NOT NULL,	-- 메모(NN)
	regdate DATE DEFAULT SYSDATE		-- 작성날짜
);
SELECT * FROM tblMemo;

INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (1, '홍길동', '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (seq, name, memo, regdate)
		VALUES (2, '아무개', '메모입니다.');
INSERT INTO TBLMEMO (seq, name, memo)
		VALUES (3, '가나다', '메모입니다.');
INSERT INTO TBLMEMO (seq, name, memo, REGDATE)
		VALUES (4, default, '메모입니다.', DEFAULT);

/*
	제약 사항을 만드는 방법
	1. 컬럼 수준에서 만드는 방법
		- 위에서 수업한 방법
		- 컬럼을 선언할 때 제약 사항도 같이 선언하는 방법
	2. 테이블 수준에서 만드는 방법
		-
	3. 외부에서 만드는 방법
 */


CREATE TABLE tblMemo
(
	seq number(3),
	name varchar2(30),
	memo varchar2(1000) DEFAULT,
	regdate DATE NOT NULL,
	-- NOT NULL과 DEFAULT는 위에서 정의 해야됨
	-- 테이블 수준에서 제약 사항 정의 > 가독성
	CONSTRAINT TBLMEMO_SEQ_PK PRIMARY KEY(SEQ),
	CONSTRAINT TBLMEMO_NAME_UQ UNIQUE(NAME),
	CONSTRAINT TBLMEMO_MEMO_CK CHECK(LENGTH(MEMO)>=10)
);
SELECT * FROM tblMemo;




