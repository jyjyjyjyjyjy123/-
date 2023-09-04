/*

연산자, Operator
1. 산술 연산자
    +, -, *, /
    %(없음) > 함수로 제공(mod())
    
2. 문자열 연산자
	+ > SQL은 피연산자는 숫자만 가능 > || 를 사용한다.

3. 비교 연산자
	>, >=, <, <=
	=(==), <>(!=)
	논리값 반환 > SQL에는 boolean이 없다 > 명시적으로 표현 불가능> 조건이 필요한 상황에서 내부적으로 사용
	컬럼 리스트에서 사용 불가
	조건절에서 사용
	
4. 논리 연산자
	and(&&), or(||), not(!)
	논리값 반환
	컬럼 리스트에서 사용 불가
	조건절에서 사용
    
5. 대입 연산자
	= (사용못함)
	컬럼 = 값 이때만 사용 > update문

6. 3항 연산자
	없음
	제어문 없음
	
7. 증감 연산자
	없음
	
8. SQL연산자
	자바 연산자같은 것
	in, between, like, is 등..(OO절, OO구..)

*/

select 
    population,
    area,
    population + area,
    population - area,
    population * area,
    population / area
from tblcountry;

SELECT *  FROM TBLMEN ;
SELECT NAME, COUPLE, NAME || COUPLE  FROM TBLMEN ;

SELECT HEIGHT, WEIGHT, HEIGHT > WEIGHT  FROM TBLMEN;
SELECT HEIGHT, WEIGHT  FROM TBLMEN WHERE HEIGHT > WEIGHT;




SELECT NAME, AGE FROM TBLMEN ; --만나이로 바꾸기
-- 컬럼의 별칭(Alias)
-- : 되도록이면 가공된 컬럼에 적용
-- 컬럼명이 식별자로 적합하지 안흥ㄹ 때 사용
-- 공백은 안됨
-- 식별자로 사용 불가능 상황 > 억지로 적용할 때 " "

SELECT 
	NAME, 
	AGE, 
	AGE-1 AS 나이,
	length(NAME) AS 길이,
	couple AS "여자 친구",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 -- 공백 안됨
	name AS "select"
	FROM TBLMEN ;

-- 테이블의 별칭(Alias)
-- 편하게.. + 가독성 향상
SELECT * FROM TBLMEN t;


-- 각 절의 실행 순서
-- select 절 > 2
-- from 절 > 1 





SELECT * FROM TBLTODO t ;
INSERT INTO TBLTODO (seq, title, adddate, completedate)
	VALUES(22, '자바 복습하기', sysdate, null);
    
commit;


-- Auto-commit
--  개발자가 commit을 실행하지 않더라도, insert/update/delete 실행할때마다 자동으로 커밋을 호출하는 기능
-- 클라이언트 툴마다 설정이 다르다.
-- SQL Developer > 오토 커밋이 꺼져있다.
-- DBeaver > 오토 커밋이 켜져있다.
-- 가이드 > 일단 끈다.