

/*
	
	관계 대수 연산
	1. 셀렉션 > SELECT WHERE
	2. 프로젝선 > SELECT COLUMN
	3. 조인
	4. 합집합(UNION), 차집합(MINUS), 교집합(INTERSECT)
	
	유니온, UNION
	- 스키마가 동일한 결과셋끼리 가능
 */

SELECT NAME FROM TBLSTAFF
UNION
SELECT NAME FROM TBLWOMEN;

-- 어떤 회사 > 부서별 게시판
SELECT * FROM 영업부게시판;
SELECT * FROM 총무부게시판;
SELECT * FROM 개발부게시판;

-- 회장님 > 모든 부서의 게시판글 > 한번에 열람
SELECT * FROM 영업부게시판
UNION
SELECT * FROM 총무부게시판
UNION
SELECT * FROM 개발부게시판;

-- 야구선수 > 공격수, 수비수
SELECT * FROM 공격수;
UNION
SELECT * FROM 수비수;

-- SNS > 하나의 테이블 + 다량의 데이터 > 기간별 테이블 분할
SELECT * FROM 게시판2020;
SELECT * FROM 게시판2021;
SELECT * FROM 게시판2022;
SELECT * FROM 게시판2023;

--
DROP TABLE TBLAAA;
CREATE TABLE TBLAAA(
	NAME VARCHAR2(30) NOT NULL
);
CREATE TABLE TBLBBB(
	NAME VARCHAR2(30) NOT NULL
);
INSERT INTO tblaaa values('강아지');
INSERT INTO tblaaa values('고양이');
INSERT INTO tblaaa values('토끼');
INSERT INTO tblaaa values('거북이');
INSERT INTO tblaaa values('병아리');

INSERT INTO TBLBBB values('강아지');
INSERT INTO TBLBBB values('고양이');
INSERT INTO TBLBBB values('호랑이');
INSERT INTO TBLBBB values('사자');
INSERT INTO TBLBBB values('코끼리');

-- UNION (합집합)
SELECT * FROM TBLAAA
UNION ALL
SELECT * FROM TBLBBB;
-- UNION ALL (중복값 허용) 
SELECT * FROM TBLAAA
UNION ALL
SELECT * FROM TBLBBB;
-- INTERSECT (교집합)
SELECT * FROM TBLAAA
INTERSECT
SELECT * FROM TBLBBB;
-- MINUS (차집합) > 앞,뒤 위치가 중요
SELECT * FROM TBLAAA
MINUS
SELECT * FROM TBLBBB;

SELECT * FROM TBLBBB
MINUS
SELECT * FROM TBLAAA;


















































