
/*
	형변환 함수
	-(int)num
	1. to_char(숫자)		: 숫자 > 문자
	2. to_char(날짜) 	: 날짜 > 문자 ***
	3. to_number(문자)	: 문자 > 숫자
	4. to_date(문자)		: 문자 > 날짜 ***
	

	to_char(숫자 [, 형식문자열])
	형식 문자열 구성요소
	a. 9: 숫자 1개를 문자 1개로 바꾸는 역할. 빈자리를 스페이스로 치환.	>%5d
	b. 0: 숫자 1개를 문자 1개로 바꾸는 역할. 빈자리를 0으로 치환		>%05d
	c. $: 통화 기호 표현
	d. L: 통화 기호 표현(Locale)
	e. .: 소숫점
	f. ,: 천단위 표기
	
	
 */
SELECT
	WEIGHT,
	TO_CHAR(WEIGHT),
	LENGTH(TO_CHAR(WEIGHT)),
	LENGTH(WEIGHT),	--암시적 형변환 > 문자열
	SUBSTR(WEIGHT, 1, 1),
	WEIGHT || 'kg',
	TO_CHAR(WEIGHT) || 'kg'
FROM TBLCOMEDIAN;

SELECT
	WEIGHT,
	'@'||TO_CHAR(WEIGHT)||'@',
	'@'||TO_CHAR(WEIGHT, '9999')||'@',	--@   64@
	'@'||TO_CHAR(-WEIGHT, '9999')||'@',	--@  -64@
	'@'||TO_CHAR(WEIGHT, '0000')||'@',	--@ 0064@
	'@'||TO_CHAR(-WEIGHT, '0000')||'@',	--@-0064@
FROM TBLCOMEDIAN;

SELECT
	100,
	'@'||TO_CHAR(100, '$999')||'@',	--@ $100@
	'@'||TO_CHAR(100, 'L999')||'@'	--@        ￦100@
FROM DUAL;
SELECT
	1234567.89,
	'@'||TO_CHAR(1234567.89, '9,999,999.99')||'@'	--@ 1,234,567.89@
FROM DUAL;



/*
	TO_CHAR(날짜)
	- 날짜 > 문자
	- CHAR TO_CHAR(컬럼, 형식문자열)
	
	형식문자열 구성요소
	a. yyyy
	b. yy
	c. month
	d. mon
	e. MM
	f. day
	g. dy
	h. ddd
	i. dd
	j. d
	k. hh
	l. hh24
	n. mi
	m. ss
	o. am(pm)
 */

SELECT SYSDATE FROM DUAL; 
SELECT TO_CHAR(SYSDATE) FROM DUAL; -- 잘안씀 > 쓸모없음
SELECT TO_CHAR(SYSDATE , 'yyyy') FROM DUAL; -- 년(4자리)
SELECT TO_CHAR(SYSDATE , 'yy') FROM DUAL;	-- 년(2자리)
SELECT TO_CHAR(SYSDATE , 'month') FROM DUAL;-- 월(풀네임)
SELECT TO_CHAR(SYSDATE , 'mon') FROM DUAL;	-- 월(약어)
SELECT TO_CHAR(SYSDATE , 'mm') FROM DUAL;	-- 월(2자리)
SELECT TO_CHAR(SYSDATE , 'day') FROM DUAL;	-- 요일(풀네임)
SELECT TO_CHAR(SYSDATE , 'dy') FROM DUAL;	-- 요일(약어)
SELECT TO_CHAR(SYSDATE , 'ddd') FROM DUAL;	-- 일 (올해의 며칠)
SELECT TO_CHAR(SYSDATE , 'dd') FROM DUAL;	-- 일 (이번달의 며칠)
SELECT TO_CHAR(SYSDATE , 'd') FROM DUAL;	-- 일 (이번주의 며칠(요일))
SELECT TO_CHAR(SYSDATE , 'hh') FROM DUAL;	-- 시 (12시간)
SELECT TO_CHAR(SYSDATE , 'hh24') FROM DUAL;	-- 시 (24시간)
SELECT TO_CHAR(SYSDATE , 'mi') FROM DUAL;	-- 분
SELECT TO_CHAR(SYSDATE , 'ss') FROM DUAL;	-- 초
SELECT TO_CHAR(SYSDATE , 'am') FROM DUAL;	-- 오전/오후
SELECT TO_CHAR(SYSDATE , 'pm') FROM DUAL;	-- 오전/오후

-- 암기
SELECT
	SYSDATE,
	TO_CHAR(SYSDATE, 'YYYY-MM-DD') AS 날짜,
	TO_CHAR(SYSDATE, 'hh24:mi:ss') AS 시간,
	TO_CHAR(SYSDATE, 'yyyy-mm-dd hh24:mi:ss') ,
	TO_CHAR(SYSDATE, ' day am hh:mi:ss')
FROM DUAL;

SELECT
	NAME,
	TO_CHAR(IBSADATE, 'YYYY-MM-DD') AS IBSADATE,
	TO_CHAR(IBSADATE, 'day') AS DAY,
	CASE
		WHEN to_char(IBSADATE,'d') IN ('1','7') THEN '휴일입사'
		ELSE '평일입사'
	END AS aaa
FROM TBLINSA;

-- 요일별 입사자
SELECT
	COUNT(CASE
		WHEN to_char(IBSADATE,'d') = '1' THEN 1 
	END) AS 일요일,
	COUNT(DECODE(TO_CHAR(IBSADATE, 'd'), 2, 1)) AS 월요일,
	COUNT(DECODE(TO_CHAR(IBSADATE, 'd'), 3, 1)) AS 화요일,
	COUNT(DECODE(TO_CHAR(IBSADATE, 'd'), 4, 1)) AS 수요일,
	COUNT(DECODE(TO_CHAR(IBSADATE, 'd'), 5, 1)) AS 목요일,
	COUNT(DECODE(TO_CHAR(IBSADATE, 'd'), 6, 1)) AS 금요일,
	COUNT(DECODE(TO_CHAR(IBSADATE, 'd'), 7, 1)) AS 토요일
FROM TBLINSA;

-- 입사날짜 > 2000년 이후
SELECT * FROM TBLINSA WHERE IBSADATE >= '2000-01-01'; --문자열 > 암시적 형변환

-- 입사날짜 > 2000년
SELECT * FROM TBLINSA
	WHERE IBSADATE >= '2000-01-01' AND IBSADATE <= '2000-12-31'; --오답

SELECT * FROM TBLINSA
	WHERE TO_CHAR(IBSADATE, 'yyyy') = '2000';


/*
	number to_number(문자)
	
 */

SELECT	
	'123' * 2,	-- 암시적 형변환
	TO_NUMBER('123') * 2 
FROM DUAL;

/*
	date to_date(문자, 형식문자열)
*/
SELECT
	'2023-08-29', -- 자료형? 문자 VS 날짜
--	TO_DATE('2023-08-29'),
--	TO_DATE('2023-08-29', 'YYYY-MM-DD'),
--	TO_DATE('20230829'),
--	TO_DATE('20230829', 'YYYYMMDD'),
	TO_DATE('2023/08/29'),
	TO_DATE('2023/08/29', 'YYYY/MM/DD'),
	TO_DATE('2023-08-29 15:15:15', 'YYYY/MM/DD hh24:mi:ss')
FROM DUAL;


SELECT * FROM TBLINSA
	WHERE IBSADATE >= TO_DATE('2000-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
		AND IBSADATE >= TO_DATE('2000-12-31 12:59:59', 'YYYY-MM-DD HH24:MI:SS');











































