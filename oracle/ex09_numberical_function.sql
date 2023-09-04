/*
	숫자 함수(= 수학 함수)
	- Math.xxxx()
	
	round()
	- 반올림 함수
	- number round(컬럼명): 정수 반환
	- number round(컬럼명, 소수이하 자릿수): 실수 반환
	
 */
SELECT * FROM DUAL; -- 시스템 테이블 > 1행 1열 테이블(***)
-- 현재 시간 필요
SELECT SYSDATE FROM DUAL;

SELECT 
	3.5678,
	ROUND(3.5678),
	ROUND(3.5678, 1),
	ROUND(3.5678, 2)
FROM DUAL;

-- 평균 급여
SELECT ROUND(AVG(BASICPAY)) FROM TBLINSA;

/*
	floor(), truc()
	- 절삭 함수 > 내림
	
 */
SELECT
	3.5678,
	FLOOR(3.5678),
	TRUNC(3.5678,1)
FROM DUAL;
/*
	CEIL()
	- 올림
 */


/*
	MOD()
	- 나머지 함수
	- NUMBER MOD(피제수, 제수)
 */
SELECT
	10/3,
	MOD(10,3)
FROM DUAL;

/*
	substr
 */
SELECT SUBSTR(ssn,8,1) FROM TBLINSA;

SELECT COUNT(*) FROM TBLINSA WHERE SUBSTR(NAME,1,1) = '김';
SELECT
	count (CASE
		WHEN SUBSTR(NAME,1,1) = '김' THEN 1
	END) AS 김,
	count (CASE
		WHEN SUBSTR(NAME,1,1) = '이' THEN 1
	END) AS 이,
	count (CASE
		WHEN SUBSTR(NAME,1,1) = '박' THEN 1
	END) AS 박,
	count (CASE
		WHEN SUBSTR(NAME,1,1) = '최' THEN 1
	END) AS 최,
	count (CASE
		WHEN SUBSTR(NAME,1,1) = '정' THEN 1
	END) AS 정,
	COUNT(CASE
		WHEN SUBSTR(NAME,1,1) NOT IN ('김', '이', '박', '최', '정') THEN 1
	END) AS 나머지,
	COUNT(*) AS 전체
FROM TBLINSA;

/*
	문자열 길이
	- length()
	- number length(컬럼)
 */
-- 컬럼 리스트에서 사용 
SELECT name, LENGTH(name) FROM TBLCOUNTRY;

-- 조건절에서 사용 
SELECT name, LENGTH(name) FROM TBLCOUNTRY WHERE LENGTH(name) > 3;

-- 정렬에서 사용
SELECT name, LENGTH(name) FROM TBLCOUNTRY ORDER BY LENGTH(name) DESC;


/*
	문자열 검색(indexOf)
	- instr()
	- 검색어의 위치를 반환
	- nuber instr(컬럼, 검색어)
	- nuber instr(컬럼, 검색어, 시작위치)
	
 */
SELECT
	'안녕하세요. 홍길동님',
	INSTR('안녕하세요. 홍길동님', '홍길동')AS AA
FROM DUAL;

/*
	패딩
	- lpad(), rpad()
	- varchar2 lpad(컬럼, 개수, 문자)
	- varchar2 rpad(컬럼, 개수, 문자)
 */

/*
	트림
	- 공백제거
	- trim, ltrim, rtrim
	- varchar2 trim(칼럼)
	- varchar2 ltrim(칼럼)
	- varchar2 rtrim(칼럼)
 */



/*
	문자열 치환
	- replace()
	- varchar2 replace(컬럼, 찾을 문자열, 바꿀 문자열)
 */
SELECT
	REPLACE('홍길동','홍','김'),
	REPLACE('홍길동','이','김'),	
	REPLACE('홍길홍','홍','김')	
FROM DUAL;

SELECT
	NAME,
	REGEXP_REPLACE(NAME, '김.{2}', '김OO'),
	TEL,
	REGEXP_REPLACE(TEL,'(\d{3})-(\d{4})-(\d{4})','\1-\2-xxxx')
FROM TBLINSA;

/*
	문자열 치환
	- decode()
	- replace()와 유사
	- varchar2 decode(컬럼, 찾을 문자열, 바꿀 문자열, [찾을문자열, 바꿀문자열] x N) 
 */
SELECT
	GENDER,
	DECODE(GENDER,'m','남자','f3','여자')
FROM TBLCOMEDIAN;






