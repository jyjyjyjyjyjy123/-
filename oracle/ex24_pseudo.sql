
/*
	
	 의사 컬럼, PSEUDO COLUMN
	 - 실제 컬럼이 아닌데 컬럼처럼 행동하는 객체
	 
	  ROWNUM
	  - 행번호
	  - 오라클 전용
	  - 시퀀스 객체 상관X
	  - 현재 테이블의 행번호를 가져오는 역할
	  - 테이블에 저장된 값이 아니라, SELECT 실행 시 동적으로 계산되어 만들어진다.(***)
	  - FROM절이 실행될 때 각 레코드에 ROWNUM을 할당한다.(**************************)
	  - WHERE절이 실행될 때 상황에 따라 ROWNUM 재계산된다.(*********) > FROM절에서 만들어진 
	  	ROWNUM은 WHERE절이 실행될때 변경될 수 있다.
	   
 */


SELECT
	NAME, BUSEO, 		-- 컬럼(속성) > OUTPUT > 객체(레코드)의 특성에 따라 다른 값을 가진다.
	100, 				-- 상수 > OUTPUT > 모든 레코드가 동일한 값을 가진다.
	SUBSTR(NAME, 2),	-- 함수 > INPUT + OUTPUT > 객체의 특성에 따라 다른 값을 가진다.
	ROWNUM 				-- 의사컬럼 > OUTPUT 
FROM tblinsa;

-- 게시판 > 페이지
-- 1페이지 > ROUWNUM BETWEEN 1 AND 20
-- 2페이지 > ROUWNUM BETWEEN 21 AND 40
-- 3페이지 > ROUWNUM BETWEEN 41 AND 60

SELECT NAME, BUSEO, ROWNUM FROM tblinsa WHERE ROWNUM = 1;
SELECT NAME, BUSEO, ROWNUM FROM tblinsa WHERE ROWNUM <= 5;
SELECT NAME, BUSEO, ROWNUM FROM tblinsa WHERE ROWNUM = 5;
SELECT NAME, BUSEO, ROWNUM FROM tblinsa WHERE ROWNUM BETWEEN 5 AND 10;

SELECT name, buseo, rownum	-- 2. 소비 > 1에서 만든 rownum을 가져온다. (여기서 생성x)
FROM tblinsa;				-- 1. 생성 > FROM절이 실행되는 순간 모든 레코드 rownum 할당

SELECT name, buseo, rownum	-- 3. 소비
FROM tblinsa				-- 1. 생성
WHERE ROWNUM = 1;			-- 2. 조건

SELECT name, buseo, rownum	-- 3. 소비
FROM tblinsa				-- 1. 생성
WHERE ROWNUM = 5;			-- 2. 조건


SELECT NAME, BUSEO, basicpay, ROWNUM	-- 
FROM tblinsa							-- 1. ROWNUM 할당				
	ORDER BY basicpay DESC;					-- 2. 정렬

-- **내가 원하는 순서대로 정렬 후 > ROWNUM을 할당하는 방법 > 서브쿼리 사용**
SELECT NAME, BUSEO, BASICPAY, ROWNUM, rnum 
FROM (SELECT NAME, BUSEO, basicpay, ROWNUM AS RNUM
	  FROM tblinsa
	  ORDER BY basicpay DESC)
	WHERE ROWNUM <= 3; 

-- 급여 5 ~ 10등 까지
-- 원하는 범위 추출(1이 포함x) > rownum 사용 불가능
-- 1. 내가 원하는 순서대로 정렬
-- 2. 1을 서브쿼리로 묶는다. + rownum(rnum)
-- 3. 2를 서브쿼리로 묶는다. + rownum(불필요) + rnum(사용**)
SELECT 
	name, BUSEO, BASICPAY, RNUM, rownum
FROM (SELECT NAME, BUSEO, BASICPAY, ROWNUM AS RNUM
		FROM (SELECT name, BUSEO, basicpay
				FROM tblinsa
	 				ORDER BY basicpay DESC))
	WHERE RNUM BETWEEN 5 AND 10; 

-- 페이징 > 나눠서 보기 > 한번에 20명씩 보기 > 이름순으로
SELECT *
FROM (SELECT rownum AS rnum, a.*
		FROM (SELECT * FROM tbladdressbook ORDER BY name ASC) a)
	WHERE rnum  BETWEEN 1 AND 20;
SELECT *
FROM (SELECT rownum AS rnum, a.*
		FROM (SELECT * FROM tbladdressbook ORDER BY name ASC) a)
	WHERE rnum  BETWEEN 21 AND 40;
SELECT *
FROM (SELECT rownum AS rnum, a.*
		FROM (SELECT * FROM tbladdressbook ORDER BY name ASC) a)
	WHERE rnum  BETWEEN 1981 AND 2000;


SELECT *
FROM (SELECT rownum AS rnum, a.*
		FROM (SELECT * FROM tbladdressbook ORDER BY name ASC) a);

CREATE OR REPLACE VIEW vwAddressBook
AS
SELECT rownum AS rnum, a.*
		FROM (SELECT * FROM tbladdressbook ORDER BY name ASC) a;
	
SELECT * FROM vwaddressbook;
SELECT * FROM vwaddressbook WHERE RNUM BETWEEN 1 AND 20;




























































