
/*
	
	순위 함수 
	- rownum > 기반으로 만들어진 함수
	
	1. rank() over (order by 컬럼명 [asc|desc])
	2. dense_rank()  over (order by 컬럼명 [asc|desc])
	3. row_number() over (order by 컬럼명 [asc|desc])
	
	
	순위 함수 + partition by + order by > 순위 함수 + group by > 그룹별 순위 구하기
	
 */

-- .TBLINSA. 급여순으로 가져오시오. +  순위 표시
select name, buseo, basicpay, rownum 
FROM (SELECT name, buseo, basicpay FROM tblinsa ORDER BY BASICPAY DESC);
--rank over
SELECT 
	name, buseo, basicpay, rank() over(ORDER BY basicpay desc)
FROM tblinsa;
-- dense_rank over
SELECT
	name, buseo, basicpay, dense_rank() OVER(ORDER BY basicpay desc)
FROM tblinsa;
-- row_number over
SELECT
	name, buseo, basicpay, row_number() OVER(ORDER BY basicpay DESC)
FROM tblinsa;


-- 급여 5위?
SELECT * FROM (SELECT
					name, buseo, basicpay, row_number() OVER(ORDER BY basicpay DESC) AS rnum
				FROM tblinsa)
WHERE rnum = 5;
-- 8위
SELECT * FROM (SELECT
					name, buseo, basicpay, dense_rank() OVER(ORDER BY basicpay DESC) AS rnum
				FROM tblinsa)
WHERE rnum = 8;

-- 순위 함수 + order by
-- 순위 함수 + partition by + order by > 순위 함수 + group by > 그룹별 순위 구하기

SELECT * FROM (SELECT
					name, buseo, basicpay, RANK() over(PARTITION BY BUSEO ORDER BY basicpay DESC) AS RNUM
				FROM tblinsa)
WHERE rnum = 1;






























































