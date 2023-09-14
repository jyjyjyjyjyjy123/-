/*
	인덱스, Index 
	- 검색을 빠른 속도로 하기 위해 사용하는 도구
	- SQL 명령 처리 속도를 빠르게 하기 위해서, 특정 컬럼에 대해 생성되는 도구
	- 책 > 목차 / 인덱스(찾아보기) > 검색도구
	
	데이터베이스
	- 테이블내의 레코드 순서가 사용자 원하는 정렬 상태가 아니다. > DBMS가 자체적 정렬 보관
	- 어떤 데이터 검색 > 처음 ~ 끝까지 차례대로 검색 > table full scan
	- 특정 컬럼 선택 > 별도의 테이블에 복사 > 미리 정렬 >> 인덱스
	- 원본 테이블 <- 참조 -> 인덱스
	
	인덱스 장단점
	- 처리 속도를 향상 시킨다.
	- 무분별한 인덱스 사용은 DB 성능을 저하시킨다.
	
	자동으로 인덱스가 걸리는 컬럼
	1. Primary key
	2. Unique
	- ** 테이블에서 PK컬럼을 검색하는 속도 >>> 테이블에서 PK가 아닌 컬럼을 검색하는 속도
 */

CREATE TABLE tblIndex
AS
SELECT * FROM tbladdressbook;

SELECT count(*) FROM tblindex;

INSERT INTO tblindex SELECT * FROM tblindex;


SELECT * FROM tbladdressbook;	--seq(pk)
SELECT * FROM tblidnex; 		--제약사항이 없음(pk가 없음)


-- 시간확인
SET timing ON;

-- SQL실행
-- 1. 컨트롤 + 엔터  > 결과 > 테이블
-- 2. F5            > 결과 > 텍스트
SELECT * FROM tbladdressbook WHERE name = '최민기';
-- 인덱스 없이 검색 > 경과 시간: 00:00:00.047
SELECT count(*) FROM tblindex WHERE name = '최민기';

-- 인덱스 생성
create index idxName
    on tblindex(name);
    
-- 경과 시간: 00:00:00.000
SELECT count(*) FROM tblindex WHERE name = '최민기';

commit;



/*
    
    인덱스 종류
    1. 고유 인덱스
    2. 비고유 인덱스
    
    3. 단일 인덱스
    4. 복합 인덱스
    
    5. 함수 기반 인덱스
    
    
    
    
*/

-- 고유 인덱스
-- : 색인의 값이 중복이 불가능하다.
-- : PK, UNIQUE만 가능
create unique index idxName2 on tblIndex(name); -- 동명이인(x)

-- 비고유 인덱스
-- : 색인의 값이 중복이 가능하다.
-- : 일반 컬럼
create index idxHomtown on tblindex(hometown);

-- 단일 인덱스
-- : 컬럼 1개를 대상으로 만든 인덱스
create index idxHometown on tblindex(hometown);
drop index idxHometown;

-- 인덱스 생성전 > 경과 시간: 00:00:00.828
-- 인덱스 생성후 > 경과 시간: 00:00:00.016
SELECT count(*) from tblindex where hometown = '서울';

-- 인덱스 생성전 > 경과 시간: 00:00:01.625
-- 인덱스 생성후 > 경과 시간: 00:00:02.905
-- 오히려 독이될 수 있다
SELECT count(*) from tblindex where hometown = '서울' and job = '학생';

-- 복합(결합) 인덱스
-- : 컬럼 N개를 대상으로 만든 인덱스
create index idexHometownJob on tblindex(hometown, job);


-- 복합 인덱스 생성후 > 경과 시간: 00:00:00.094
SELECT count(*) from tblindex where hometown = '서울' and job = '학생';
-- 복합 인덱스 생성후 > 경과 시간: 00:00:00.344
SELECT count(*) from tblindex where hometown = '서울';


-- 함수 기반 인덱스
-- : 가공된 값을 사용하는 인덱스

-- 인덱스 생성전 > 경과 시간: 00:00:01.499
-- 인덱스 생성후 > 경과 시간: 00:00:01.719
-- 가공된 데이터를 검색시 인덱스가 정상작동 안함
-- 가공된 인덱스 생성후 > 경과 시간: 00:00:00.125
select count(*) from tblindex where substr(email, instr(email, '@')) = '@gmail.com';

create index idxEmail on tblindex(email);
drop index idxEmail;
create index idxEmail on tblindex(substr(email, instr(email, '@')));













































