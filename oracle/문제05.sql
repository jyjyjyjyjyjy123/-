-- 문제05.sql


-- 정렬


-- employees
-- 1. 전체 이름(first_name + last_name)이 가장 긴 -> 짧은 사람 순으로 정렬해서 가져오기
--    > 컬럼 리스트 > fullname(first_name + last_name), length(fullname)
 SELECT
 	FIRST_NAME || LAST_NAME
 FROM EMPLOYEES
	ORDER BY FIRST_NAME || LAST_NAME DESC;

-- 2. 전체 이름(first_name + last_name)이 가장 긴 사람은 몇글자? 가장 짧은 사람은 몇글자? 평균 몇글자?
--    > 컬럼 리스트 > 숫자 3개 컬럼
 SELECT
 	LENGTH(MAX(FIRST_NAME || LAST_NAME))AS 가장긴이름,
 	LENGTH(MIN(FIRST_NAME || LAST_NAME))AS 가장짧은이름,
 	AVG(LENGTH(FIRST_NAME || LAST_NAME))AS 평균
 FROM EMPLOYEES;

-- 3. last_name이 4자인 사람들의 first_name을 가져오기
--    > 컬럼 리스트 > first_name, last_name
--    > 정렬(first_name, 오름차순)
SELECT
	FIRST_NAME
FROM EMPLOYEES
	WHERE LENGTH(LAST_NAME) = 4;


-- decode

-- 4. tblInsa. 부장 몇명? 과장 몇명? 대리 몇명? 사원 몇명?
SELECT
	COUNT(DECODE(JIKWI,'부장',1)),
	COUNT(DECODE(JIKWI,'과장',1)),
	COUNT(DECODE(JIKWI,'대리',1)),
	COUNT(DECODE(JIKWI,'사원',1))
FROM TBLINSA;


-- 5. tblInsa. 간부(부장, 과장) 몇명? 사원(대리, 사원) 몇명?
SELECT
	COUNT(DECODE(JIKWI,'부장',1))+COUNT(DECODE(JIKWI,'과장',1)),
	COUNT(DECODE(JIKWI,'대리',1))+COUNT(DECODE(JIKWI,'사원',1))
FROM TBLINSA;


-- 6. tblInsa. 기획부, 영업부, 총무부, 개발부의 각각 평균 급여?
SELECT
	ROUND(AVG(DECODE(BUSEO, '기획부', BASICPAY))),
	ROUND(AVG(DECODE(BUSEO, '영업부', BASICPAY))),
	ROUND(AVG(DECODE(BUSEO, '총무부', BASICPAY))),
	ROUND(AVG(DECODE(BUSEO, '개발부', BASICPAY)))
FROM TBLINSA;

-- 7. tblInsa. 남자 직원 가장 나이가 많은 사람이 몇년도 태생? 여자 직원 가장 나이가 어린 사람이 몇년도 태생?
SELECT
	MIN(DECODE(SUBSTR(SSN,8,1), 1, SUBSTR(SSN,1,2))),
	MAX(DECODE(SUBSTR(SSN,8,1), 2, SUBSTR(SSN,1,2)))
FROM TBLINSA;















