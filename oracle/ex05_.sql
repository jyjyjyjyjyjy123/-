
/*
 * [WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expresstion [ASC|DESC]]
select 컬럼리스트 3. 컬럼 지정(보고싶은 컬럼만 가져오기) > Projection
from 테이블 1. 테이블 지정
where 조건 2. 조건 지정(보고싶은 형만 가져오기 )> sELECTION 

where절
	레코드(행)을 검색한다.
	원하는 행만 추출하는 역할
*/
-- 컬럼(5), 레코드(14)
SELECT 
	*
FROM TBLCOUNTRY;

SELECT 
	NAME, CAPITAL 
FROM TBLCOUNTRY
	WHERE CONTINENT = 'AS'; 
	
SELECT 
	*
FROM TBLCOUNTRY 
	WHERE NAME ='대한민국';
SELECT 
	*
FROM TBLCOUNTRY 
	WHERE CONTINENT  = 'AS' OR CONTINENT ='EU';
SELECT 
	*
FROM TBLCOUNTRY 
	WHERE AREA >= 29 AND POPULATION <= 10000;

-- 1. 몸무게가 60KG이상이고, 키가 170cm 미만인 사람을 가져오기
SELECT 
	*
FROM TBLCOMEDIAN
	WHERE WEIGHT >= 60 AND HEIGHT < 170;
-- 2. 몸무게가 70kg 이하인 여자만 가져오시오.
SELECT 
	*
FROM TBLCOMEDIAN
	WHERE WEIGHT <= 70 AND GENDER ='f';

--tblInsa;
SELECT 
	*
FROM TBLINSA ;
-- 3. 부서가 '개발부'이고, 급여가 150만원 이상 받은 직원을 가져오시오.
SELECT 
	*
FROM TBLINSA
	WHERE BUSEO ='개발부' AND BASICPAY >= 1500000;
-- 4. 급여 + 수당을 합한 금액이 200만원 이상 받는 직원을 가져오시오.
SELECT 
	*
FROM TBLINSA
	WHERE BASICPAY + SUDANG >=2000000;

/*
	between
	- where절에서 사용 > 조건으로 사용
	- 컬럼명 between 최솟값 and 최댓값
	- 범위 조건
	- 가독성(***)
	
 */
-- 1. 숫자형
SELECT 
	*
FROM TBLINSA 
	WHERE BASICPAY BETWEEN 1000000 AND 1100000;

-- 2. 문자형
SELECT 
	*
FROM EMPLOYEES 
	WHERE FIRST_NAME BETWEEN 'J' AND 'L';

-- 3. 날짜 시간형
SELECT 
	*
FROM TBLINSA
	WHERE IBSADATE >= '2000-01-01';
SELECT * FROM TBLINSA WHERE IBSADATE >='2000-01-01' AND IBSADATE <= '2000-12-31';
SELECT * FROM TBLINSA WHERE IBSADATE BETWEEN '2000-01-01' AND '2000-12-31';

/*
	in
	- 컬럼 in ();
 */
-- tblInsa. 개발부 + 총무부
SELECT * FROM TBLINSA WHERE BUSEO IN ('개발부','총무부','홍보부');
SELECT * FROM TBLINSA WHERE CITY  in('서울', '인천') AND JIKWI IN('과장','부장') AND BASICPAY BETWEEN 2500000 AND 3000000;

-- between, in > 사용 금지 > 성능 문제 > 비교 연산자보다 느림

/*
	LIKE
	- where절에서 사용 > 조건으로 사용
	- 패턴 비교
	- 컬럼명  LIKE '패턴 문자열'
	- 정규 표현시의 초간단 버전

	패턴 문자열 구성요소
	1. _: 임의의 문자 1개(.)
	2. %: 임의의 문자 N개
*/

--김oo
SELECT * FROM TBLINSA WHERE NAME LIKE '김__';

/*
	RDBMS에서의 null
	- 컬럼값(셀)이 비어있는 상태
	- null 상수 제공
	- 대부분의 언어는 null은 연산의 대상이 될 수 없다.(******************************)
	
	null 조건
	- where절에서 사용
	- 컬럼명 is null
 */

--인구수가 미기재된 나라?
SELECT * FROM TBLCOUNTRY WHERE POPULATION is NULL;
--인구수가 기재된 나라?
SELECT * FROM TBLCOUNTRY WHERE NOT POPULATION is NULL;
--아직 실행하지 않은 할 일?
SELECT * FROM TBLTODO WHERE COMPLETEDATE IS NULL;


SELECT * FROM EMPLOYEES ;


