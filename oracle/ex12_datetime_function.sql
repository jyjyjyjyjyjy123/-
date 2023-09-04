/*
	날짜 시간 함수
	sysdate
	- 현재 시스템의 시각을 반환
	- jave의 Calendar.getInstance()
	- date sysdate
 */


/*
	날짜 연산
	1. 시각 - 시각 = 시간
	2. 시각 + 시간 = 시각
	3. 시각 - 시간 = 시각 
 */

-- 시각 - 시각 = 시간
SELECT
	NAME,
	IBSADATE,
	round(SYSDATE - IBSADATE) AS 근무일수, --9088.6
	round((SYSDATE - IBSADATE)/365) AS 근무년수, --사용금지
	round((SYSDATE - IBSADATE)*24)AS 근무시수, --사용금지
	round((SYSDATE - IBSADATE)*24*60)AS 근무분수, --사용금지
	round((SYSDATE - IBSADATE)*24*60*60)AS 근무초수 --사용금지
FROM TBLINSA;

-- 오라클 > 식별자 최대 길이 > 30바이트(UTF-8)
--

SELECT
	TITLE,
	ADDDATE,
	COMPLETEDATE,
	ROUND((COMPLETEDATE - ADDDATE)*24) AS 실행하기까지걸린시간
FROM TBLTODO
	WHERE COMPLETEDATE IS NOT NULL
	ORDER BY ROUND((COMPLETEDATE - ADDDATE)*24) DESC;




--	시각 + 시간 = 시각
--	시각 - 시간 = 시각 
SELECT
	SYSDATE,
	SYSDATE + 100 AS "100일뒤",
	SYSDATE - 100 AS "100일전",
	SYSDATE + (3/24) AS "3시간 후",
	SYSDATE - (5/24) AS "5시간 전",
	SYSDATE + (30/60/24) AS "30분 뒤"
FROM DUAL;

/*
	시각 - 시각 = 시간(일)	> 일 > 시 > 분 > 초 환산 가능
						 	> 일 > 월 > 년 환산 불가능
	시각 + 시간(일) = 시각	> 일, 시, 분, 초 가능
						 	> 월, 년 불가능
	
	월, 년을 계산할 수 있는 함수를 제공
 */
SELECT
	SYSDATE + 3 *30
FROM DUAL;
/*
	MONTHS_BETWEEN()
	- NUMBER MONTHS_BETWEEN(DATE, DATE)
	- 시각 - 시각 = 시간(월)
 */
SELECT
	NAME,
	ROUND(SYSDATE - IBSADATE) AS "근무일수",
	ROUND(MONTHS_BETWEEN(SYSDATE, IBSADATE))AS "근무월수",
	ROUND(MONTHS_BETWEEN(SYSDATE, IBSADATE)/12)AS "근무월수"
FROM TBLINSA

/*
	add_months()
	- date add_months(date, 시간)
	- 시각 + 시간(월) = 시각
 */
SELECT
	SYSDATE,
	ADD_MONTHS(SYSDATE, 3),
	ADD_MONTHS(SYSDATE, -2),
	ADD_MONTHS(SYSDATE, 5*12)	
FROM DUAL;
/*
	시각 - 시각
	1. 일, 시, 분, 초 > 연산자(-)
	2. 월, 년 > months_between()
	
	시각 +- 시간
	1. 일, 시, 분, 초 > 연산자(+,-)
	2. 월, 년 > add_months()
 */


SELECT
	SYSDATE,
	LAST_DAY(SYSDATE)
FROM DUAL;


















