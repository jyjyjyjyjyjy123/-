
-- 컬럼 명시
SELECT * FROM TBLINSA;
SELECT NAME, SSN FROM TBLINSA;

-- 연산
SELECT NAME || '님', BASICPAY * 2 FROM TBLINSA;

-- 상수
SELECT 100, '홍길동' FROM TBLINSA;

/*
	Java Stream > list.stream().distinct().forEach()
	distinct
	- 컬럼 리스트에서 사용
	- 중복값 제거
	- dsitinct 컬럼명
*/

SELECT DISTINCT CONTINENT FROM TBLCOUNTRY;

-- tblInsa > 수많은 부서 > 어떤 부서가 있습니까?
SELECT DISTINCT BUSEO FROM TBLINSA; 
SELECT DISTINCT JIKWI FROM TBLINSA; 

SELECT DISTINCT BUSEO, JIKWI FROM TBLINSA;

/*
	case
	- 대부분의 절에서 사용 가능
	- 조건문 역할 > 컬럼값 조작
	- 조건을 만족하지 못하면 null을 반환(****************************)
 */
SELECT 
	"LAST" || "FIRST" AS name,
	CASE 
--		WHEN 조건 THEN 값
		WHEN GENDER = 'm' THEN '남자'
		WHEN GENDER = 'f' THEN '여자'
	END AS GENDER 
FROM TBLCOMEDIAN 

SELECT 
	NAME, CONTINENT,
	CASE 
		WHEN CONTINENT = 'AS' THEN '아시아'
		WHEN CONTINENT = 'EU' THEN '유럽'
		WHEN CONTINENT = 'AF' THEN '아프리카'
		ELSE '기타'
	END AS CONTINENTNAME
FROM TBLCOUNTRY;

SELECT 
	"LAST" || "FIRST" AS name,
	WEIGHT ,
	CASE
		WHEN WEIGHT > 90 then'과체중'
		WHEN WEIGHT > 50 then'정상체중'
		ELSE '저체중'
	END AS state
FROM TBLCOMEDIAN ;

SELECT 
	"LAST" || "FIRST" AS name,
	WEIGHT ,
	CASE
		WHEN WEIGHT >= 50 AND WEIGHT <= 90 then'정상체중'
		ELSE '주의필요'
	END AS state
FROM TBLCOMEDIAN ;

SELECT 
	"LAST" || "FIRST" AS name,
	WEIGHT ,
	CASE
		WHEN WEIGHT BETWEEN 50 and 90 then'정상체중'
		ELSE '주의필요'
	END AS state
FROM TBLCOMEDIAN ;

SELECT 
	NAME, JIKWI,
	CASE 
		WHEN JIKWI in('과장','부장') THEN '관리직'
		ELSE '생산직'
	END AS AAA
FROM TBLINSA;

SELECT
	NAME, SUDANG,
	CASE 
		WHEN NAME LIKE '홍%' THEN 50000
		ELSE 0
	END + SUDANG AS aaa
FROM TBLINSA;

SELECT
	TITLE, 
	CASE 
		WHEN COMPLETEDATE IS NULL THEN '미완료'
		WHEN COMPLETEDATE IS NOT NULL THEN '완료'
	END AS COMPLETE
FROM TBLTODO; 
	






















