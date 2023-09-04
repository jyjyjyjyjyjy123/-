

/*
	
	관계형 데이터베이스 시스템이 지양하는 것들
	- 테이블 다시 수정해야 고쳐지는 것들 > 구조적인 문제
	1. 테이블에 기본키가 없는 상태 > 데이터 조작 곤란
	2. NULL이 많은 상태의 테이블 > 공간 낭비
	3. 데이터가 중복되는 상태 > 공간 방비 + 데이터 조작 곤란
	4. 하나의 속성값이 원자값이 아닌 상태 > 더 이상 쪼개지지 않는 값을 넣어야 한다.
	
	
 */

CREATE TABLE TBLTEST
(
	name varchar2(30) NOT NULL,
	age numbeer(3) NOT NULL,
	nick varchar2(30) NOT null
);

-- 홍길동, 20, 강아지
-- 아무개, 22, 바보
-- 테스트, 20 , 반장
-- 홍길동, 20, 강아지 > 발생X 조작?

--홍길동 별명 수정
UPDATE tbltest SET nick = '고양이' WHERE name = '강아지'; --식별 불가

-- 2. NULL이 많은 상태의 테이블 > 공간 낭비
CREATE TABLE TBLTEST
(
	name varchar2(30) NOT NULL,
	age numbeer(3) NOT NULL,
	nick varchar2(30) NOT NULL,
	hobby varchar2(100) null
);


-- 홍길동, 20, 강아지, null
-- 아무개, 22, 바보, 게임
-- 테스트, 20 , 반장, 수영, 활쏘기
-- 홍길동, 20, 강아지

DROP TABLE TBLSTAFF;
DROP TABLE TBLPROJECT;
-- 직원 정보
CREATE TABLE tblStaff(
	seq NUMBER PRIMARY KEY ,
	name VARCHAR2(30) NOT NULL,
	salary NUMBER NOT NULL,
	address varchar2(300) NOT NULL
);
-- 프로젝트 정보
CREATE TABLE tblProject(
	seq NUMBER PRIMARY KEY ,
	project VARCHAR2(100) NOT NULL ,
	staff_seq number NOT NULL REFERENCES TBLSTAFF(SEQ)
);

INSERT INTO tblStaff (seq, name, salary, address) VALUES (1,'홍길동',300,'서울시');
INSERT INTO tblStaff (seq, name, salary, address) VALUES (2,'아무개',250,'인천시');
INSERT INTO tblStaff (seq, name, salary, address) VALUES (3,'하하하',250,'부산시');


INSERT INTO tblProject (seq, project, staff_seq) VALUES (1,'홍콩 수출',1);
INSERT INTO tblProject (seq, project, staff_seq) VALUES (2,'TV 광고',2);
INSERT INTO tblProject (seq, project, staff_seq) VALUES (3,'매출 분석',3);
INSERT INTO tblProject (seq, project, staff_seq) VALUES (4,'노조 협상',1);
INSERT INTO tblProject (seq, project, staff_seq) VALUES (5,'대리점 분양',2);


SELECT * FROM TBLSTAFF;
SELECT * FROM TBLPROJECT;
-- A. 신입 사원 입사 > 신규 프로젝트 담당
-- A.1 
INSERT INTO tblStaff (seq, name, salary, address) VALUES (4,'호호호',250,'성남시');
-- A.2 신규 프로젝트 추가
INSERT INTO tblProject (seq, project, staff_seq) VALUES (6,'자재 매입',4);
-- A.3 신규 프로젝트 추가 > 에러가 안남 > 논리 오류
INSERT INTO tblProject (seq, project, staff_seq) VALUES (7,'고객 유치',5);

SELECT * FROM TBLSTAFF
	WHERE seq = (SELECT STAFF_SEQ FROM TBLPROJECT WHERE PROJECT = '홍콩 수출');

-- B. '홍길동' 퇴사
-- B.1 '홍길동' 삭제
DELETE FROM TBLSTAFF WHERE SEQ = 1;
-- B.2 '홍길동' 삭제 > 인수 인계(위임)
UPDATE TBLPROJECT SET staff_seq = 2 WHERE staff_seq = 1;
-- B.3 '홍길동' 삭제
DELETE FROM TBLSTAFF WHERE SEQ = 1;




/*
	
	조인, JOIN
	- (서로 관계를 맺은) 2개(1개) 이상의 테이블을 1개의 결과셋으로 만드는 기술
	조인의 종류
	1. 단순 조인, CROSS JOIN
	2. 내부 조인, INNER JOIN
	3. 외부 조인, OUTER JOIN
	4. 셀프 조인, SELF JOIN
	5. 전체 외부 조인, FULL OUTER JOIN
 */
/*
	단순 조인, CROSS JOIN, 카티션곱(데카르트곱)
	- A 테이블 X B 테이블
	- 쓸모없다 > 가치 있는 행과 가치 없는 행이 뒤섞여 있어서
	- 더미데이터에 사용(유효성 무관)
 */

SELECT * FROM TBLCUSTOMER;
SELECT * FROM TBLSALES;
SELECT * FROM TBLCUSTOMER CROSS JOIN TBLSALES; -- ANSI-SQL(추천)
SELECT * FROM TBLCUSTOMER, TBLSALES;

/*
	내부 조인, INNER JOIN
	- 단순 조인에서 유효한 레코드만 추출한 조인
	SELECT 컬럼리스트 FROM 테이블A CROSS JOIN 테이블B; --CROSS JOIN
	SELECT 컬럼리스트 FROM 테이블A INNER JOIN 테이블B ON 테이블A.PK = 테이블B.FK; --INNER JOIN
	SELECT 
		컬럼리스트 
	FROM 테이블A 
		INNER JOIN 테이블B 
			ON 테이블A.PK = 테이블B.FK;
 */
-- 직원 테이블, 프로젝트 테이블
SELECT
	*
FROM TBLSTAFF
	INNER JOIN TBLPROJECT
		ON TBLSTAFF.SEQ = TBLPROJECT.STAFF_SEQ;
	
-- 조인 > 테이블 별칭 자주 사용
SELECT
	s.SEQ,
	s.NAME,
	p.SEQ,
	p.PROJECT
FROM TBLSTAFF s
	INNER JOIN TBLPROJECT p 
		ON s.SEQ = p.STAFF_SEQ
			ORDER BY p.SEQ;
		
-- 고객 테이블, 판매 테이블
SELECT
	C.NAME AS 고객명,
	S.ITEM AS 제품명,
	S.QTY AS 개수
FROM TBLCUSTOMER c
	INNER JOIN TBLSALES S
		ON c.seq = s.cseq;
	

SELECT * FROM TBLMEN m;
SELECT * FROM TBLWOMEN w;

SELECT
	*
FROM TBLMEN M
	INNER JOIN TBLWOMEN W
		ON M.NAME = W.COUPLE;

-- 관계 없는 조인
SELECT
	*
FROM TBLSTAFF ST
	INNER JOIN TBLSALES SA
		ON ST.SEQ = SA.CSEQ;

-- 고객명(TBLCUSTOMER) + 판매물품명(TBLSALES) > 가져오시오
--1. 조인
SELECT
	C.NAME AS 고객명,
	S.ITEM AS 물품명
FROM TBLCUSTOMER C
	INNER JOIN TBLSALES S
		ON C.SEQ = S.CSEQ;

-- 2. 서브 쿼리 > 상관 서브 쿼리
-- 메인쿼리 > 자식테이블
-- 상관 서브 쿼리 > 부모 테이블
SELECT 
	(SELECT NAME FROM TBLCUSTOMER WHERE SEQ = TBLSALES.CSEQ)AS 고객명,
	ITEM AS 물품명
FROM TBLSALES;


-- 비디오 + 장르 > 조인
SELECT
	v.NAME,
	g.NAME,
	g.PRICE
FROM TBLGENRE g
	INNER JOIN TBLVIDEO v
		ON g.SEQ = v.GENRE;

-- 비디오 + 장르 + 대여
SELECT
	v.NAME,
	g.NAME,
	g.PRICE,
	R."MEMBER",
	R.RENTDATE,
	R.RETDATE
FROM TBLGENRE g
	INNER JOIN TBLVIDEO v
		ON g.SEQ = v.GENRE
			INNER JOIN TBLRENT r
				ON v.SEQ = r.VIDEO;
-- 장르 + 비디오 + 대여 + 회원
SELECT
	m.NAME,
	v.NAME,
	g.PRICE,
	r.RENTDATE
FROM TBLGENRE g
	INNER JOIN TBLVIDEO v
		ON g.SEQ = v.GENRE
			INNER JOIN TBLRENT r
				ON v.SEQ = r.VIDEO
					INNER JOIN TBLMEMBER m
						ON r."MEMBER" = m.SEQ;

					
					
SELECT
	e.FIRST_NAME || e.LAST_NAME AS "직원 이름",
	d.DEPARTMENT_NAME AS "부서명",
	l.CITY AS "도시명",
	C.COUNTRY_NAME AS "국가명",
	R.REGION_NAME AS "대륙명",
	J.JOB_TITLE AS "직업"
FROM EMPLOYEES E
	INNER JOIN DEPARTMENTS D
		ON d.DEPARTMENT_ID = e. DEPARTMENT_ID
			INNER JOIN LOCATIONS L
				ON L.LOCATION_ID = D.LOCATION_ID
					INNER JOIN COUNTRIES C
						ON C.COUNTRY_ID = L.COUNTRY_ID
							INNER JOIN REGIONS R
								ON R.REGION_ID = C.REGION_ID
									INNER JOIN JOBS J
										ON J.JOB_ID = e.JOB_ID;
	
SELECT * FROM DEPARTMENTS;
SELECT * FROM LOCATIONS;
SELECT * FROM COUNTRIES;
SELECT * FROM REGIONS;


/*
	외부 조인, OUTER JOIN
	- 내부 조인의 반댓말 아님
	- 내부 조인 결과 + 내부 조인에 포함되지 않았던 부모 테이블의 나머지 레코드를 합하는 조인
	
	 SELECT
	 	컬럼리스트
	 FROM 테이블A
	 	(LEFT|RIGHT) OUTER JOIN 테이블B
	 		ON 테이블A.컬럼 = 테이블B.컬럼 
 */

SELECT * FROM TBLCUSTOMER;
SELECT * FROM TBLSALES;

INSERT INTO TBLCUSTOMER VALUES (4, '호호호', '010-1234-5678', '서울시');
INSERT INTO TBLCUSTOMER VALUES (5, '이순신', '010-1234-5678', '서울시');

-- 내부조인
-- 업무 > 물건을 한번이라도 구매한 이력이 있는 고객의 정보와 그 고객이 시간 구매내역으
SELECT *
FROM TBLCUSTOMER C
	INNER JOIN TBLSALES S
			ON C.SEQ = S.CSEQ;
-- 외부조인
-- 담당 프로젝트의 유무와 상관없이 모든 직원을 가져오시오.
SELECT *
FROM TBLCUSTOMER C
	LEFT OUTER JOIN TBLSALES S
			ON C.SEQ = S.CSEQ;
SELECT *
FROM TBLCUSTOMER C
	RIGHT OUTER JOIN TBLSALES S
			ON C.SEQ = S.CSEQ; -- 내부조인과 동일한 결과
			
SELECT
	*
FROM TBLVIDEO V
	INNER JOIN TBLRENT R
		ON V.SEQ = R.VIDEO ;

SELECT
	*
FROM TBLVIDEO V
	LEFT OUTER JOIN TBLRENT R
		ON V.SEQ = R.VIDEO ;
	
	
-- 대여를 최소 1회 이상 했던 회원과 대여 내역
SELECT
	*
FROM TBLMEMBER m
	INNER JOIN TBLRENT r
		ON m.SEQ = R."MEMBER" ;

	SELECT
	*
FROM TBLMEMBER m
	LEFT OUTER JOIN TBLRENT r
		ON m.SEQ = R."MEMBER" ;
	
/*
	셀프 조인
 */
-- 직원 테이블
CREATE TABLE tblSelf(
	seq NUMBER PRIMARY KEY,
	name varchar2(30) NOT NULL,
	depart varchar2(30) NOT NULL,
	SUPER NUMBER NULL REFERENCES TBLSELF(SEQ)
);

INSERT INTO TBLSELF VALUES (1,'홍사장','사장',NULL);
INSERT INTO TBLSELF VALUES (2,'김부장','영업부',1);
INSERT INTO TBLSELF VALUES (3,'박과장','영업부',2);
INSERT INTO TBLSELF VALUES (4,'최대리','영업부',3);
INSERT INTO TBLSELF VALUES (5,'정사원','영업부',4);
INSERT INTO TBLSELF VALUES (6,'이부장','개발부',1);
INSERT INTO TBLSELF VALUES (7,'하과장','개발부',6);
INSERT INTO TBLSELF VALUES (8,'신과장','개발부',6);
INSERT INTO TBLSELF VALUES (9,'황대리','개발부',7);
INSERT INTO TBLSELF VALUES (10,'허사원','개발부',9);

COMMIT;

-- 직원 명단을 가져오시오. 단, 상사의 이름까지
-- 1. join
-- 2. Sub Query
-- 3. 계층형 쿼리

-- 1.
SELECT
	B.NAME AS "직원명",
	B.DEPART AS "부서명",
	A.NAME AS "상사명"
FROM TBLSELF a				--역할: 부모테이블 > 상사
	LEFT OUTER JOIN TBLSELF b	--역할: 자식테이블 > 직원
		ON a.seq = b.super;

-- 2.
SELECT
	NAME AS 직원명,
	DEPART AS 부서명,
	(SELECT name FROM tblSelf WHERE seq = a.super) AS 상사명
FROM TBLSELF a;
	

/*
	전체 외부 조인, FULL OUTER JOIN
	- 서로 참조하고 있는 관계에서 사용
 */
SELECT * FROM TBLMEN;
SELECT * FROM TBLWOMEN;
-- 내부
SELECT
	M.NAME,
	W.NAME
FROM TBLMEN M
	INNER JOIN TBLWOMEN W
		ON M.NAME = W.COUPLE;
-- 외부
SELECT
	M.NAME,
	W.NAME
FROM TBLMEN M
	RIGHT OUTER JOIN TBLWOMEN W
		ON M.NAME = W.COUPLE;
-- 전체 외부
SELECT
	M.NAME,
	W.NAME
FROM TBLMEN M
	FULL OUTER JOIN TBLWOMEN W
		ON M.NAME = W.COUPLE;












SELECT * FROM TBLCUSTOMER;
SELECT * FROM TBLSALES;

SELECT * FROM TBLGENRE;
SELECT * FROM TBLVIDEO;
SELECT * FROM TBLMEMBER;
SELECT * FROM TBLRENT;

-- *** 자식 테이블보다 부모 테이블이 먼저 발생한다. (테이블 생성, 레코드 생성)

-- 고객 테이블
create table tblCustomer (
    seq number primary key,         --고객번호(PK)
    name varchar2(30) not null,     --고객명
    tel varchar2(15) not null,      --연락처
    address varchar2(100) not null  --주소
);

-- 판매내역 테이블
create table tblSales (
    seq number primary key,                             --판매번호(PK)
    item varchar2(50) not null,                         --제품명
    qty number not null,                                --판매수량
    regdate date default sysdate not null,              --판매날짜
    cseq number not null references tblCustomer(seq)    --판매한 고객번호(FK)
);

-- [비디오 대여점]


-- 장르 테이블
create table tblGenre (
    seq number primary key,         --장르 번호(PK)
    name varchar2(30) not null,     --장르명
    price number not null,          --대여가격
    period number not null          --대여기간(일)
);

-- 비디오 테이블
create table tblVideo (
    seq number primary key,                         --비디오 번호(PK)
    name varchar2(100) not null,                    --비디오 제목
    qty number not null,                            --보유 수량
    company varchar2(50) null,                      --제작사
    director varchar2(50) null,                     --감독
    major varchar2(50) null,                        --주연배우
    genre number not null references tblGenre(seq)  --장르 번호(FK)
);


-- 고객 테이블
create table tblMember (
    seq number primary key,         --고객번호(PK)
    name varchar2(30) not null,     --고객명
    grade number(1) not null,       --고객등급(1,2,3)
    byear number(4) not null,       --생년
    tel varchar2(15) not null,      --연락처
    address varchar2(300) null,     --주소
    money number not null           --예치금
);

-- 대여 테이블
create table tblRent (
    seq number primary key,                             --대여번호(PK)
    member number not null references tblMember(seq),   --회원번호(FK)
    video number not null references tblVideo(seq),     --비디오번호(FK)
    rentdate date default sysdate not null,             --대여시각
    retdate date null,                                  --반납시각
    remark varchar2(500) null                           --비고
);