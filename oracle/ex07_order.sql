/*
[WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expresstion [ASC|DESC]]
   
   
	select 컬럼리스트 	3. 컬럼 지정(보고싶은 컬럼만 가져오기) > Projection
	from 테이블 			1. 테이블 지정
	where 조건 			2. 조건 지정(보고싶은 형만 가져오기 )> sELECTION 
	order by 정렬기준; 	4. 순서대로
	
	order by 절
	- 원본 테이블 정렬이 아님 > 오라클 저장된 데이터 > 개발자가 접근못함 > 오라클 스스로 관리
	- 결과 테이블 정렬
	- order by 컬럼명 [ASC|DESC]
	
 */

SELECT * FROM TBLINSA
	ORDER BY NAME asc;
SELECT * FROM TBLINSA
	ORDER BY BUSEO ASC; -- 1차 정렬
SELECT * FROM TBLINSA
	ORDER BY BUSEO ASC, JIKWI DESC; -- 2차 정렬
SELECT * FROM TBLINSA
	ORDER BY BUSEO ASC, JIKWI DESC, BASICPAY ASC; -- 3차 정렬
	

-- 비교 > 숫자, 문자, 날짜 > 정렬 가능
SELECT * FROM TBLINSA ORDER BY BASICPAY DESC;
SELECT * FROM TBLINSA ORDER BY NAME ASC;
SELECT * FROM TBLINSA ORDER BY IBSADATE ASC;
SELECT NAME, BUSEO, JIKWI FROM TBLINSA ORDER BY 3; --컬럼리스트의 컬럼순서(비권장)
	


-- 가공된 값의 정렬
-- 급여(basicpay + sudang)를 가장 많이 받는 직원순으로 가져오시오.
SELECT * FROM TBLINSA ORDER BY BASICPAY+SUDANG DESC;

-- 직위순으로 정렬: 부장 > 과장 > 대리 > 사원
SELECT 
	NAME, JIKWI
FROM TBLINSA
	ORDER BY CASE 
		WHEN JIKWI = '부장' THEN 4
		WHEN JIKWI = '과장' THEN 3
		WHEN JIKWI = '대리' THEN 2
		WHEN JIKWI = '사원' THEN 1
	END DESC;

-- 직원: 남자 > 여자 순으로
SELECT 
	NAME, SSN 
FROM TBLINSA
	ORDER BY CASE 
		WHEN SSN LIKE '%-1%' THEN '1'
		WHEN SSN LIKE '%-2%' THEN '2'
	END ASC;

-- 남자 직원만 가져오기
SELECT *
FROM TBLINSA 
	WHERE CASE
		WHEN SSN LIKE '%-1%' THEN 1
		WHEN SSN LIKE '%-2%' THEN 2
	END = 1;

-- case end는 컬럼이 들어갈 수 있는 곳에서는 항상 들어갈 수 있다.

SELECT * FROM TBLINSA;

















