
/*
	
	SQL
	1. Main Query, 일반 쿼리
		- 하나의 문장안에 하나의 SELECT(INSERT, UPDATE, DELETE)로 되어 있는 쿼리
	
	2. Sub Query, 서브 쿼리, 부속 질의
		- 하나의 문장안에(SELECT, INSERT, UPDATE, DELETE) 또 다른 문장 (SELECT) 이 들어 있는 쿼리
		- 하나의 SELECT안에 또 다른 SELECT문이 들어있는 쿼리
		- 삽입 위치 > SELECT절, FROM절, WHERE절, GROUP BY절, HAVING절, ORDER BY절
		- 컬럼(값)을 넣을 수 있는 장소면 서브쿼리가 들어갈 수 있다. 	
	
 */
-- TLBCOUNTRY. 인구수가 가장 많은 나라의 이름? 중국

UPDATE TBLCOUNTRY SET POPULATION = POPULATION + 100 WHERE NAME = '중국';

SELECT MAX(POPULATION) FROM TBLCOUNTRY;
SELECT NAME FROM TBLCOUNTRY WHERE POPULATION = 120660;
SELECT NAME FROM TBLCOUNTRY WHERE POPULATION = (SELECT MAX(POPULATION) FROM TBLCOUNTRY);

-- tblcomadian. 몸무게가 가장 많이 나가나느 사람의 이름
SELECT "LAST"||"FIRST" AS 이름 FROM TBLCOMEDIAN WHERE WEIGHT = (SELECT MAX(WEIGHT) FROM TBLCOMEDIAN);

-- tblinsa. 평균 급여보다 많이 받는 직원들
SELECT
	*
FROM TBLINSA
	WHERE BASICPAY >= (SELECT AVG(BASICPAY)FROM TBLINSA);

-- 남자(166)의 여자친구 
SELECT * FROM TBLMEN;
SELECT * FROM TBLWOMEN;
SELECT HEIGHT FROM TBLWOMEN WHERE COUPLE = (SELECT NAME FROM TBLMEN WHERE HEIGHT = 166);





/*
	
	서브쿼리 삽입 위치
	1. 조건절 > 비교값으로 사용
		a. 반환값이 1행 1열 > 단일값 반환 > 상수 취급 > 값 1개
		b. 반환값이 N행 1열 > 다중값 반환 > 열거형 비교 > IN 사용
		c. 반환값이 1행 N열 > 다중값 반환 > 그룹 비교 > N컬럼 : N컬럼
		d. 반환값이 N행 N열 > 다중값 반환 > 2 + 3 > IN + 그룹 비교
	
 */

-- 급여가 260만원 이상 받는 직원이 근무하는 부서의 직원 명단을 가져오시오.
-- ORA-01427: single-row subquery returns more than one row
SELECT
	*
FROM TBLINSA
	WHERE BUSEO = (SELECT BUSEO FROM TBLINSA WHERE BASICPAY >= 2600000);

SELECT
	*
FROM TBLINSA
	WHERE BUSEO IN (SELECT BUSEO FROM TBLINSA WHERE BASICPAY >= 2600000);


-- '홍길동'과 같은 지역, 같은 부서인 직원 명단을 가져오시오. (서울, 기획부)
SELECT * FROM TBLINSA
	WHERE CITY = (SELECT CITY FROM TBLINSA WHERE NAME = '홍길동')
		AND BUSEO = (SELECT BUSEO FROM TBLINSA WHERE NAME = '홍길동');
SELECT * FROM TBLINSA
	WHERE (CITY, BUSEO) = (SELECT CITY, BUSEO FROM TBLINSA WHERE NAME = '홍길동');
	-- WHERE 2:2

-- 급여가 260만원 이상 받은 직원과 같은 부서, 같은 지역 > 직원 명단
SELECT
	*
FROM TBLINSA
	WHERE (BUSEO, CITY) IN (SELECT BUSEO, CITY FROM TBLINSA WHERE BASICPAY >= 2600000);





/*
	
	서브쿼리 삽입 위치
	1. 조건절 > 비교값으로 사용
		a. 반환값이 1행 1열 > 단일값 반환 > 상수 취급 > 값 1개
		b. 반환값이 N행 1열 > 다중값 반환 > 열거형 비교 > IN 사용
		c. 반환값이 1행 N열 > 다중값 반환 > 그룹 비교 > N컬럼 : N컬럼
		d. 반환값이 N행 N열 > 다중값 반환 > 2 + 3 > IN + 그룹 비교
	
	2. 컬럼리스트 > 컬럼값(출력값)으로 사용
		- 반드시 결과값이 1행 1열이어야 한다. > 스칼라 쿼리 > 원자값 반환
		a. 정적 쿼리 > 모든 행에 동일한 값을 반환
		b. 상관 서브 쿼리(*******) > 서브쿼리의 값과 바깥쪽 메인쿼리의 값을 서로 연결
 */
SELECT
	NAME, BUSEO, BASICPAY,(SELECT ROUND(AVG(BASICPAY)) FROM TBLINSA) AS AVG
FROM TBLINSA;

--ORA-01427: single-row subquery returns more than one row
SELECT
	NAME, BUSEO, BASICPAY,
	(SELECT JIKWI FROM TBLINSA)
FROM TBLINSA;

SELECT
	NAME, BUSEO, BASICPAY,
	(SELECT ROUND(AVG(BASICPAY)) FROM TBLINSA WHERE BUSEO = A.BUSEO) AS AVG
FROM TBLINSA A;

SELECT * FROM TBLMEN;
SELECT * FROM TBLWOMENEN;

-- 남자(이름, 키, 몸무게) + 여자(이름, 키, 몸무게)
SELECT
	NAME AS "남자 이름",
	HEIGHT AS "남자 키",
	WEIGHT AS "남자 몸무게",
	COUPLE AS "여자 이름",
	(SELECT HEIGHT FROM TBLWOMEN WHERE NAME = TBLMEN.COUPLE) AS "여자 키",
	(SELECT WEIGHT FROM TBLWOMEN WHERE NAME = TBLMEN.COUPLE) AS "여자 몸무게"
FROM TBLMEN


/*
	
	서브쿼리 삽입 위치
	1. 조건절 > 비교값으로 사용
		a. 반환값이 1행 1열 > 단일값 반환 > 상수 취급 > 값 1개
		b. 반환값이 N행 1열 > 다중값 반환 > 열거형 비교 > IN 사용
		c. 반환값이 1행 N열 > 다중값 반환 > 그룹 비교 > N컬럼 : N컬럼
		d. 반환값이 N행 N열 > 다중값 반환 > 2 + 3 > IN + 그룹 비교
	
	2. 컬럼리스트 > 컬럼값(출력값)으로 사용
		- 반드시 결과값이 1행 1열이어야 한다. > 스칼라 쿼리 > 원자값 반환
		a. 정적 쿼리 > 모든 행에 동일한 값을 반환
		b. 상관 서브 쿼리(*******) > 서브쿼리의 값과 바깥쪽 메인쿼리의 값을 서로 연결
		
	3. FROM절에서 사용
		- 서브 쿼리와 결과 테이블을 하나의 테이블이라고 생각하고 메인 쿼리를 실행
		- 인라인 뷰(Inline View)
*/

SELECT
	*
FROM
	(
		SELECT
			NAME, BUSEO
		FROM TBLINSA
	);


-- 인라인뷰의 컬럼 별칭 > 바깥쪽 메인 쿼리에서 그대로 전달 + 사용
SELECT NAME, GENDER
FROM (SELECT NAME, SUBSTR(SSN, 1, 8) AS GENDER FROM TBLINSA);

SELECT 
	NAME, HEIGHT , COUPLE,
	(SELECT HEIGHT FROM TBLWOMEN WHERE NAME = TBLMEN.COUPLE) AS WOMENHEIGHT
FROM TBLMEN
	ORDER BY HEIGHT, WOMENHEIGHT;










