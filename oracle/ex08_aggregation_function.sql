/*
	메서드 (Method)
	- 클래스 안에서 정의한 함수
	
	함수(Function)
	- 어딘가에 소속되어 있지않고, 독립적으로 존재
	1. 내장형 함수( Function)
	2. 사용자 정의 함수(User Function) > ANSI-SQL(X), PL/SQL(O)

	집계 합수, Aggregation Funciton(****************************)
	- 아주 쉬움 > 뒤에나오는 수업과 결합시 꽤 어려움
	1. count()
	2. sum()
	3. avg()
	4. max()
	5. min()
	
	count()
	- 결과 테이블의 레코드 수를 반환한다. 
	- number count(컬럼명)
	- NULL값은 카운트에서 제외된다. (*********)
 */

--tblCountry. 총 나라 몇개국?
SELECT count(*) FROM TBLCOUNTRY;
SELECT count(NAME) FROM TBLCOUNTRY;
SELECT count(POPULATION) FROM TBLCOUNTRY;

-- 모든 직원수?
SELECT count(*) FROM TBLINSA;
SELECT count(TEL) FROM TBLINSA;
SELECT count(*) - count(tel) FROM TBLINSA;
SELECT count(*) FROM TBLINSA WHERE tel IS NOT NULL;

-- TBLiNSA 어떤 부서들 있나요?
SELECT COUNT(DISTINCT BUSEO) FROM TBLINSA;

-- TBLCOMEDIAN 남자수? 여자수?
SELECT COUNT(*) FROM TBLCOMEDIAN WHERE GENDER = 'm';
SELECT COUNT(*) FROM TBLCOMEDIAN WHERE GENDER = 'f';

-- 남자수 + 여자수 > 1개의 테이블로 반환(***************)
SELECT 
	COUNT(CASE
		WHEN GENDER = 'm' THEN 1
	END),
	COUNT(CASE
		WHEN GENDER = 'f' THEN 1
	END)
FROM TBLCOMEDIAN;

-- tblInsa 기획부 몇명?, 총무부 몇명?, 개발부 몇명?, 총인원?, 나머지 부서 몇명?
SELECT 
	COUNT(CASE
		WHEN BUSEO = '기획부' THEN '0'
	END)AS 기획부,
	COUNT(CASE
		WHEN BUSEO = '총무부' THEN '0'
	END)AS 총무부,
	COUNT(CASE
		WHEN BUSEO = '개발부' THEN '0'
	END)AS 개발부,
	COUNT(*)AS 총인원,
	COUNT(CASE
		WHEN BUSEO NOT IN ('기획부','총무부','개발부') THEN '0'
	END)AS 나머지
FROM TBLINSA;

/*
	sum()
	- 해당 컬럼의 합을 구한다.
	- number sum(컬럼명)
	- 해당 컬럼 > 숫자행 
 */
	
SELECT * FROM TBLCOMEDIAN;
SELECT SUM(HEIGHT), SUM(WEIGHT) FROM TBLCOMEDIAN;
SELECT SUM(FIRST) FROM TBLCOMEDIAN; --ORA-01722: invalid NUMBER

SELECT
	SUM(BASICPAY) AS "지출 급여 합",
	SUM(SUDANG) AS "지출 수당 합",
	SUM(BASICPAY) + SUM(SUDANG) AS "총 지출1",
	SUM(BASICPAY+SUDANG) AS "총 지출2"
FROM TBLINSA;

SELECT * FROM TBLINSA;
/*
	avg()
	- 해당 컬럼의 평균값을 구한다.
	- number avg(컬럼명)
	- 숫자형만 적용 가능
 */

SELECT SUM(BASICPAY)/60 AS avg FROM TBLINSA;
SELECT AVG(BASICPAY) FROM TBLINSA;

-- tblCountry, 평균 인구수?
SELECT AVG(POPULATION) FROM TBLCOUNTRY;
SELECT SUM(POPULATION)/COUNT(*) FROM TBLCOUNTRY;
-- 위 두 결과값이 다름 > NULL
-- 회사 > 성과급 지금 > 출처 > 1팀 공로~
-- 	1. 균등 지급: 총지급액 / 모든직원수
--	2. 차등 지급: 총지급액 / 1팀직원수

/*
	max()
	- object max(컬럼명)
	- 최댓값 반환 
	min()
	- object min(컬렴명)
	- 최솟값 반환
	
	둘다 숫자형, 문자형, 날짜형 모두 적용 가능 
 */
SELECT MAX(SUDANG), MIN(SUDANG) FROM TBLINSA;		-- 숫자형
SELECT MAX(NAME), MIN(NAME) FROM TBLINSA; 			-- 문자형
SELECT MAX(IBSADATE), MIN(IBSADATE) FROM TBLINSA;	-- 날짜형


SELECT
	COUNT(*),
	SUM(BASICPAY),
	AVG(BASICPAY),
	MAX(BASICPAY),
	MIN(BASICPAY)
FROM TBLINSA;


-- 집계 함수 사용시 주의점
-- 1. ORA-00937: not a single-group group function
-- 컬럼 리스트에서는 집계함수와 일반컬럼을 동시에 사용할 수 없다.
-- 요구사항] 직원들 이름과 총직원수를 동시에 가져오시오.
SELECT COUNT(*) FROM TBLINSA; 	-- 직원수
SELECT NAME FROM TBLINSA;		-- 직원명
SELECT NAME, COUNT(*) FROM TBLINSA; -- 안됨

-- 2. ORA-00934: group function is not allowed here
-- WHERE절에는 집계 합수를 사용할 수 없다.
-- 집계 함수(집합), 컬럼(개인)
-- WHERE절 > 개개인(레코드)의 데이터를 접근해서 조건 검색 > 집합값 호출 불가능
-- 요구사항] 평균 급여보다 더 많이 받는 직원들?
SELECT AVG(BASICPAY) FROM TBLINSA;					-- 급여 평균
SELECT * FROM TBLINSA WHERE BASICPAY >= 1556526;	-- 
SELECT * FROM TBLINSA WHERE BASICPAY >= AVG(BASICPAY); --안됨




































