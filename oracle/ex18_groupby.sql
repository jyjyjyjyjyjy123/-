/*
	
	[WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expresstion [ASC|DESC]]
    
    select 컬럼리스트 	4. 컬럼 지정(보고싶은 컬럼만 가져오기) > Projection
	from 테이블 			1. 테이블 지정
	where 조건 			2. 조건 지정(보고싶은 형만 가져오기 )> sELECTION 
	group by 기준		3. (레코드끼리) 그룹을 나눈다.
	order by 정렬기준; 	5. 순서대로
	
	
	
 */

-- tblinsa. 부서별 평균 급여?
SELECT * FROM TBLINSA;
SELECT ROUND(avg(BASICPAY)) AS 평균 FROM TBLINSA; -- 155만원, 전체 60명

SELECT DISTINCT BUSEO FROM TBLINSA; -- 7개
SELECT ROUND(avg(BASICPAY)) AS 평균 FROM TBLINSA WHERE BUSEO = '총무부'; --171
SELECT ROUND(avg(BASICPAY)) AS 평균 FROM TBLINSA WHERE BUSEO = '개발부'; --138
SELECT ROUND(avg(BASICPAY)) AS 평균 FROM TBLINSA WHERE BUSEO = '영업부'; --160
SELECT ROUND(avg(BASICPAY)) AS 평균 FROM TBLINSA WHERE BUSEO = '기획부'; --185
SELECT ROUND(avg(BASICPAY)) AS 평균 FROM TBLINSA WHERE BUSEO = '인사부'; --153
SELECT ROUND(avg(BASICPAY)) AS 평균 FROM TBLINSA WHERE BUSEO = '자재부'; --141
SELECT ROUND(avg(BASICPAY)) AS 평균 FROM TBLINSA WHERE BUSEO = '홍보부'; --145


-- ***group by 목적 > 그룹별 통계값을 구하기 위해서 > 집계 함수 사용
SELECT
	BUSEO,
	COUNT(*) AS "부서별 인원수",
	ROUND(AVG(BASICPAY)) AS "부서별 평균급여",
	SUM(BASICPAY) AS "부서별 지급액",
	MAX(BASICPAY) AS "부서내의 최고 급여",
	MIN(BASICPAY) AS "부서내의 최저 급여"
FROM TBLINSA
	GROUP BY BUSEO;

SELECT
	GENDER,
	COUNT(*)
FROM TBLCOMEDIAN
	GROUP BY GENDER;

SELECT
	JIKWI,
	COUNT(*)
FROM TBLINSA
	GROUP BY JIKWI;

SELECT
	GENDER,
	MAX(HEIGHT),
	MIN(HEIGHT),
	MAX(WEIGHT),
	MIN(WEIGHT)
FROM TBLCOMEDIAN
	GROUP BY GENDER;

-- group by 사용 시 > select 컬럼 리스트 > 일반 컬럼 명시 불가능 > 집계 함수, 그룹 컬럼
SELECT
	BUSEO,
	COUNT(*)
FROM TBLINSA
	GROUP BY BUSEO;

-- 다중 그룹
SELECT
	BUSEO,
	JIKWI,
	COUNT(*)
FROM TBLINSA
	GROUP BY BUSEO, JIKWI
	ORDER BY BUSEO, JIKWI;


-- 급여별 그룹
-- 100만원 이하, 100 ~ 200만원, 200만원 이상
SELECT
	(FLOOR(BASICPAY / 1000000)+1)*100||'만원 이하'AS MONEY,
	COUNT(*)
FROM TBLINSA
	GROUP BY FLOOR(BASICPAY / 1000000);

SELECT
	SUBSTR(ssn,8,1),
	COUNT(*)
FROM TBLINSA
	GROUP BY SUBSTR(ssn,8,1);

--SELECT
--	COUNT(CASE
--		WHEN COMPLETEDATE IS NOT NULL THEN 1
--	END),
--	COUNT(CASE
--		WHEN COMPLETEDATE IS NULL THEN 1
--	END)
--FROM TBLTODO;

SELECT
	CASE
		WHEN COMPLETEDATE IS NOT NULL THEN 1
		ELSE 2
	END,
	COUNT(*)
FROM TBLTODO
	GROUP BY CASE
				WHEN COMPLETEDATE IS NOT NULL THEN 1
				ELSE 2
			END;



/*
	
	select 컬럼리스트 	5. 컬럼 지정
	from 테이블 			1. 테이블 지정
	where 조건 			2. 조건 지정(레코드에 대한 조건 - 개인 조건) 
	group by 기준		3. (레코드끼리) 그룹을 나눈다.
	having 조건			4. 조건 지정(그룹에 대한 조건 - 그룹 조건)
	order by 정렬기준; 	6. 순서대로
	
 */


SELECT
	BUSEO,
	ROUND(AVG(BASICPAY))
FROM TBLINSA
	WHERE BASICPAY >= 1500000		--1. 60명
	GROUP BY BUSEO;					--2. 23명

SELECT
	BUSEO,
	ROUND(AVG(BASICPAY))
FROM TBLINSA							--1. 60명
	GROUP BY BUSEO						--2. 60명 > 그룹
	HAVING AVG(BASICPAY) >= 1500000;	--3. 집합에 대한 조건 >  집계 함수 조건
	
	
-- 부서의 인원수가 10명이 넘는 결과
SELECT
	BUSEO,
	COUNT(*)
FROM TBLINSA
	GROUP BY BUSEO
		HAVING COUNT(*) >= 10;

	
-- 부서의 과장/부장 인원수가 3명이 넘는 결과
SELECT
	BUSEO,
	COUNT(*)
FROM TBLINSA
	WHERE JIKWI IN ('과장', '부장')
	GROUP BY BUSEO
		HAVING COUNT(*) >= 3;


-- job_id 그룹 > 통계
SELECT
	JOB_ID AS 직업,
	COUNT(*) AS 인원수,
	ROUND(AVG(SALARY)) AS 평균급여
FROM EMPLOYEES
	GROUP BY JOB_ID;

-- 시도별 인원수
SELECT * FROM TBLADDRESSBOOK;
-- SUBSTR(컬럼, 시작위치, 문자개수)
SELECT
	SUBSTR(ADDRESS, 1 , INSTR(ADDRESS,' ')-1) AS 시도,
	COUNT(*) AS 인원수
FROM TBLADDRESSBOOK
	GROUP BY SUBSTR(ADDRESS, 1 , INSTR(ADDRESS,' ')-1)
	ORDER BY 인원수 DESC;

-- TBLINSA 부서별, 직급별 인원수
SELECT
	BUSEO AS 부서명,
	COUNT(*) AS 총인원,
	COUNT(DECODE(JIKWI, '부장', 1)) AS 부장,
	COUNT(DECODE(JIKWI, '과장', 1)) AS 과장,
	COUNT(DECODE(JIKWI, '대리', 1)) AS 대리,
	COUNT(DECODE(JIKWI, '사원', 1)) AS 사원
FROM TBLINSA
	GROUP BY BUSEO; 

SELECT
	BUSEO,
	JIKWI,
	COUNT(*)
FROM TBLINSA
	GROUP BY BUSEO, JIKWI
	ORDER BY BUSEO, JIKWI;
	




/*
	ROLLUP()
	- GROUP BY 의 집계 결과를 좀 더 자세하기 반환
	- 그룹별 중간 통계
 */

SELECT
	BUSEO AS 부서명,
	COUNT(*) AS 인원수,
	SUM(BASICPAY) AS 급여총합,
	ROUND(AVG(BASICPAY)) AS 급여평균,
	MAX(BASICPAY),
	MIN(BASICPAY)
FROM TBLINSA
	GROUP BY ROLLUP(BUSEO);

SELECT
	BUSEO AS 부서명,
	JIKWI AS 직급,
	COUNT(*) AS 인원수,
	SUM(BASICPAY) AS 급여총합,
	ROUND(AVG(BASICPAY)) AS 평균급여,
	MAX(BASICPAY),
	MIN(BASICPAY)
FROM TBLINSA
	GROUP BY ROLLUP(BUSEO,JIKWI);

/*
	CUBE()
	- GROUP BY 의 집계 결과를 좀 더 자세하게 반환
	
 */

SELECT
	BUSEO AS 부서명,
	JIKWI AS 직급,
	COUNT(*) AS 인원수,
	SUM(BASICPAY) AS 급여총합,
	ROUND(AVG(BASICPAY)) AS 평균급여,
	MAX(BASICPAY),
	MIN(BASICPAY)
FROM TBLINSA
	GROUP BY CUBE(BUSEO,JIKWI);





