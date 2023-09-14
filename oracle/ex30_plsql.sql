/*
    
    PL/SQL	
	- Oracle's Procedureal language extension to SQL
    - 기존의 ANSI-SQL + 절차 지향 언어 기능 추가
    - ANSI-SQL + 확장팩(변수, 제어 흐름(제어문)), 객체(메서드) 정의)
    
    프로시저, Procedure
    - 메서드, 함수 등..
    - 순서가 있는 명령어의 집합
    - 모든 PL/SQL 구문은 프로시저내에서만 작성/동작이 가능하다.
    - 프로시저 아닌 영역 > ANSI-SQL 영역
    
    1. 익명 프로시저
        - 1회용 코드 작성용
        
    2. 실명 프로시저
        - 데이터베이스 객체
        - 저장용
        - 재호출
        
    PL/SQL 프로시저 구조
    1. 4개의 블럭(키워드)으로 구성
        - DECLARE
        - BEGIN
        - EXCETION
        - END
    2. DECLARE
        - 선언부
        - 프로시저내에서 사용할 변수, 객체 등을 선언하는 영역
        - 생략 가능
    3. BEGIN ~ END
        - 실행부, 구현부
        - 구현된 코드를 가지는 영역(메서드의 body({}) 영역)
        - 생략 불가능
        - 구현된 코드 > ANSI-SQL + PL/SQL(연산, 제어 등)
    4. EXCETION
        - 예외처리부
        - catch 역할, 3번 영역 try 역할
        - 생략 가능
        
        
        
        
    자료형 + 변수
    
    PL/SQL 자료형
    - ANSI-SQL과 동일
        
    변수 선언하기
    - 변수명 자료형 [not null] [default 값];
    
    PL/SQL 연산자
    - ANSI-SQL과 동일
    
    대입 연산자
    - ANSI-SQL에서 대입 연산자 > update table set column = '값';
    - PL/SQL에서 대입 연산자 > 변수 := '값';
    
    
 */

set serveroutput on; -- 현재 세션에서만 유효(접속 해제 > 초기화);
set serverout on;

-- 익명 프로시저
declare
    num number;
    name varchar2(30);
    today date;
begin
    num := 10;
    dbms_output.put_line(num); --syso
    
    name := '홍길동';
    dbms_output.put_line(name);
    
    today := sysdate;
    dbms_output.put_line(today);
    
end;
/



declare
    num1 number;
    num2 number;
    num3 number := 30;
    num4 number default 40;
    num5 number not null := 50; -- declare 블럭에서 초기화를 해야 한다.(구현부 X)
begin
    dbms_output.put_line(num1); --null 
    num2 := 20;
    dbms_output.put_line(num2);
    dbms_output.put_line(num3);
    dbms_output.put_line(num4);
    num4 := 400;
    dbms_output.put_line(num4);
--    num5 := 500;
    dbms_output.put_line(num5);
end;
/


/*
    변수 > 어떤 용도로 사용?
    - select 결과를 담는 용도(***************************)
    - select into 절 (PL/SQL) 
    
*/

declare
    vbuseo varchar2(15);
begin
    select buseo into vbuseo from tblinsa where name = '홍길동';
    dbms_output.put_line(vbuseo);
    
end;
/

begin
    -- PL/SQL 프로시저안에서는 순수한 select문은 올 수 없다.(절대)
    -- PL/SQL 프로시저안에서는 select into문만 사용한다.
    select buseo from tblinsa where name = '홍길동';
end;
/

-- 성과급 받는 직원명
create table tblName(
    name varchar2(15)
);
SELECT * from tblName;
-- 1. 개발부 + 부장 > select > name?
-- 2. tblname > name > insert

insert into tblName (name)
    values ((SELECT name from tblinsa where buseo = '개발부' and jikwi = '부장'));

declare
    vname VARCHAR2(15);
begin
    -- 1.
    SELECT name into vname from tblinsa where buseo = '개발부' and jikwi = '부장';
    -- 2. 
    insert into tblName (name)
        values (vname);
end;
/

declare
    vname VARCHAR2(15);
    vbuseo VARCHAR2(15);
    vjikwi VARCHAR2(15);
    vbasicpay number;
begin
    -- into 사용시
    -- 1. 컬럼의 개수와 변수의 개수 일치
    -- 2. 컬럼의 순서와 변수의 순서 일치
    -- 3. 컬럼과 변수의 자료형 일치
    select name, buseo, jikwi, basicpay into vname, vbuseo, vjikwi, vbasicpay
    from tblinsa where num = 1001;
    dbms_output.put_line(vname);
    dbms_output.put_line(vbuseo);
    dbms_output.put_line(vjikwi);
    dbms_output.put_line(vbasicpay);
end;
/

/*
    타입 참조
    
    %type
    - 사용하는 테이블의 특정 컬럼값의 스키마를 알아내서 변수에 적용
    - 복사되는 정보
        a. 자료형
        b. 길이
    - 컬럼 1개 참조
    
    %rowtype 
    - 행 전체 참조(여러개의 컬럼을 한번에 참조)
    - %type의 집합형
    - 레코드 전체(여러개 컬럼)을 하나의 변수에 저장 가능 

*/

declare
--    vbuseo varchar2(15);
    vbuseo tblinsa.buseo%type;
begin
    select buseo into vbuseo from tblinsa where name = '홍길동';
    dbms_output.put_line(vbuseo);
end;
/

declare
    vname tblinsa.name%type;
    vbuseo tblinsa.buseo%type;
    vjikwi tblinsa.jikwi%type;
    vbasicpay tblinsa.basicpay%type;
    vrow tblMen%rowtype; -- vrow : tbl 레코드 1개(모든 컬럼값)을 저장할 수 있는 변수
begin
    select name, buseo, jikwi, basicpay into vname, vbuseo, vjikwi, vbasicpay
    from tblinsa where num = 1001;
    dbms_output.put_line(vname);
    dbms_output.put_line(vbuseo);
    dbms_output.put_line(vjikwi);
    dbms_output.put_line(vbasicpay);
end;
/

-- 직원 중 일부에게 보너스 지급(급여 * 1.5)
create table tblBonus (
    seq number primary key,
    num number(5) not null references tblinsa(num),
    bonus number not null
);
/
declare
    vnum tblinsa.num%type;
    vbasicpay tblinsa.basicpay%type;
begin
    select num, basicpay into vnum, vbasicpay 
        from tblinsa where city = '서울' and jikwi = '부장' and buseo = '영업부';
    insert into tblBonus (seq, num, bonus)
        values ((select nvl(max(seq),0) + 1 from tblbonus), vnum, vbasicpay * 1.5);
        
end;
/


select * from tblbonus;

select * from tblbonus
    inner join tblinsa 
        on tblbonus.num = tblinsa.num;
        
-- 무명씨 > 성전환 수술 > tblmen > tblwomen 옮기기
-- 1. '무명씨' > tblmen > select
-- 2. tblwomen > insert
-- 3. tblMen > delete
select * from tblMen;
select * from tblwomen;
rollback;
/
declare
--    vname tblmen.name%type;
--    vage tblmen.age%type;
--    vheight tblmen.height%type;
--    vweight tblmen.weight%type;
--    vcouple tblmen.couple%type;
    vrow tblmen%rowtype;
begin
    select * into vrow from tblmen where name = '정형돈';
    insert into tblwomen values (vrow.name, vrow.age, vrow.height, vrow.weight, vrow.couple);
    delete tblmen where name = vrow.name;
end;
/

--------------------------------------------------------------------


/*
    
    제어문
    1. 조건문
    2. 반복문
    3. 분기문
    
*/
-- 조건문
declare
    vnum number := 10;
begin
    if vnum > 0 then 
        dbms_output.put_line('양수');
    end if;
end;
/
    -- else
declare
    vnum number := 10;
begin
    if vnum > 0 then 
        dbms_output.put_line('양수');
    else
        dbms_output.put_line('음수');
    end if;
end;
/
    -- 다중 if
declare
    vnum number := 0;
begin
    if vnum > 0 then 
        dbms_output.put_line('양수');
    elsif vnum < 0 then
        dbms_output.put_line('음수');
    else 
        dbms_output.put_line('0');
    end if;
end;
/

-- tblinsa. 남자 직웝/여자 직원 > 다른 업무
declare
    vgender char(1);
begin
    select substr(ssn,8,1) into vgender from tblinsa where num = 1035;
    if vgender = '1' then
        dbms_output.put_line('남자 직원');
    elsif vgender = '2' then
        dbms_output.put_line('여자 직원');
    end if;
end;
/
-- 직원 1명 선택 > 보너스 지급
-- 차등 지급
-- a. 과장/부장 > basicpay * 1.5
-- b. 대리/사원 > basicpay * 2
select * from tblinsa where num = 1040;
select * from tblbonus;
declare
    vnum tblinsa.num%type;
    vbasicpay tblinsa.basicpay%type;
    vjikwi tblinsa.jikwi%type;
    vbonus number;
begin
    select num, basicpay, jikwi into vnum, vbasicpay, vjikwi 
        from tblinsa where num = 1040;
    if vjikwi in ('과장','부장') then
        vbonus  := vbasicpay * 1.5;
    elsif vjikwi in ('대리','사원') then
        vbonus  := vbasicpay * 2;
    end if;
    insert into tblBonus (seq, num, bonus)
        values ((select nvl(max(seq),0) + 1 from tblbonus), vnum, vbonus);
end;
/

/*

    case문
    - ANSI-SQL의 case문과 거의 유사
    - 자바의 switch문, 다중 if문

*/
declare
    vcontinent tblcountry.continent%type;
    vresult varchar2(30);
begin
    select continent into vcontinent from tblcountry where name = '영국';
    if vcontinent = 'AS' then
        vresult := '아시아';
    elsif vcontinent = 'EU' then
        vresult := '유럽';
    elsif vcontinent = 'AF' then
        vresult := '아프리카';
    else
        vresult := '기타';
    end if;
    dbms_output.put_line(vresult);
end;
/
declare
    vcontinent tblcountry.continent%type;
    vresult varchar2(30);
begin
    select continent into vcontinent from tblcountry where name = '영국';
    case
        when vcontinent = 'AS' then vresult := '아시아';
        when vcontinent = 'EU' then vresult := '유럽';
        when vcontinent = 'AF' then vresult := '아프리카';
        else vresult := '기타';
    end case;
    dbms_output.put_line(vresult);
end;
/
declare
    vcontinent tblcountry.continent%type;
    vresult varchar2(30);
begin
    select continent into vcontinent from tblcountry where name = '영국';
    case vcontinent
        when 'AS' then vresult := '아시아';
        when 'EU' then vresult := '유럽';
        when 'AF' then vresult := '아프리카';
        else vresult := '기타';
    end case;
    dbms_output.put_line(vresult);
end;
/


/*

    반복문 
    1. loop
        - 단순 반복
    2. for loop
        - 횟수 반복(자바 for)
        - loop 기반
    3. while loop
        - 조건 반복(자바 while)
        - loop 기반

*/

-- 무한 루프
begin
    loop
        dbms_output.put_line('100');   
    end loop;
end;
/

declare
    vnum number := 1;
begin
    loop
        dbms_output.put_line(vnum);
        vnum := vnum + 1;
        exit when vnum > 10;
    end loop;
end;
/

-- loop
create table tblloop(
    seq number primary key,
    data varchar2(100) not null
);
create sequence seqloop;

-- 데이터 x 1000건 추가
-- data > 항목1, 항목2 ... 항목1000

declare
    vnum number := 1;
begin
    loop
        insert into tblloop values (seqloop.nextval, '항목'||vnum);
        vnum := vnum + 1;
        exit when vnum>1000;
    end loop;
end;
/
select * from tblloop;


-- for loop
begin
    for i in 1..10 loop
    
    end loop;
end;

create table tblgugudan)
    dan number not null,
    num number not null,
    result number not null
);

drop table tblGugudan;


create table tblGugudan (
    dan number not null,
    num number not null,
    result number not null
);

alter table tblGugudan
    add constraint tblGugudan_dan_num_pk primary key(dan, num);
    
begin
    for dan in 2..9 loop
    
        for num in 1..9 loop
            insert into tblGugudan (dan, num, result)
            values (dan, num, dan * num);
        end loop;
        
    end loop;
    
end;
/
begin
    for i in reverse 1..10 loop
        dbms_output.put_line(i);
    end loop;
end; 
/
-- 3. while loop

declare
    vnum number := 1;
begin
    while vnum <= 10 loop
        dbms_output.put_line(vnum);
        vnum := vnum + 1;
    end loop;
end; 
/

--육만원짜리 키보드 옛날거랑 비슷한거같은ㄷㅇ뎅 토돋ㄱ도토토독근데 이게 소리 더 크다
--오와이거되게신기하다소리가 장난아니네 근데 이거 되게 재밋다 오와 역시 비싼값하네여,,,오와나잏오앚짱이걷
--이거 짱이다 오ㅗ오란ㄱ






/*
    
    select > 결과셋 > PL/SQL 변수 대입
    
    1. select into
        - 결과셋의 레코드가 1개일 때만 사용이 가능하다.
        
    2. cursor 
        - 결과셋의 레코드가 N개일 때 사용한다.
        - 루프 사용
    
    declare
        변수 선언;
        커서 선언; -- 결과셋 참조 객체
    begin
        커서 열기;
            loop
                데이터 접근(루프 1회전 > 레코드 1개) <- 이때 커서 사용
            end loop;
        커서 닫기;
    end;
        
*/

/
declare
    vname tblinsa.name%type;
begin
    select name into vname from tblinsa;
    dbms_output.put_line(vname);
end;
/
-- 
declare
    cursor vcursor is select name from tblinsa;
    vname tblinsa.name%type;
begin
    open vcursor; -- 커서 열기 > select 실행 > 결과셋을 커서가 참조
--        fetch vcursor into vname; -- select into 역할
--        dbms_output.put_line(vname);
--        fetch vcursor into vname;
--        dbms_output.put_line(vname);

--        for i in 1..60 loop
--            fetch vcursor into vname;
--            dbms_output.put_line(vname);
--        end loop;
        loop 
            fetch vcursor into vname;
            exit when vcursor%notfound;
            dbms_output.put_line(vname);
        end loop;
    close vcursor;
end;
/
-- '기획부' > 이름, 직위, 급여 > 출력

declare
    cursor vcursor is select name, jikwi, basicpay from tblinsa where buseo = '기획부';
    vname tblinsa.name%type;
    vjikwi tblinsa.jikwi%type;
    vbasicpay tblinsa.basicpay%type;
begin
    open vcursor;
        loop
            fetch vcursor into vname, vjikwi, vbasicpay;
            exit when vcursor%notfound;
            dbms_output.put_line(vname ||','||vjikwi ||','||vbasicpay);
        end loop;
    close vcursor;
end;
/
-- 문제. tblbonus
declare 
    cursor vcursor is select name, jikwi, basicpay, num from tblinsa;
    vname tblinsa.name%type;
    vjikwi tblinsa.jikwi%type;
    vbasicpay tblinsa.basicpay%type;
    vnum tblinsa.num%type;
    vbonus number;
begin 
    open vcursor;
        loop
            fetch vcursor into vname, vjikwi, vbasicpay, vnum;
            exit when vcursor%notfound;
            if vjikwi in ('부장','과장') then
                vbonus := vbasicpay * 1.5;
            elsif vjikwi in ('대리','사원') then
                vbonus := vbasicpay * 2;
            end if;
            insert into tblBonus (seq, num, bonus) values ((select nvl(max(seq), 0) + 1 from tblBonus), vnum, vbonus);
        end loop;
    close vcursor;
end;
/
select * from tblbonus;



-- 커서 탐색
-- 1. 커서 + loop > 정석
-- 2. 커서 + for loop > 간결

declare
    cursor vcursor is select * from tblinsa;
    vrow tblinsa%rowtype;
begin
    open vcursor;
        loop
            fetch vcursor into vrow;
            exit when vcursor%notfound;
            dbms_output.put_line(vrow.name);
        end loop;
    close vcursor;
end;
/
declare
    cursor vcursor is select * from tblinsa;
begin
    for vrow in vcursor loop -- loop + fetch into + vrow 선언
        dbms_output.put_line(vrow.name);
    end loop;
end;
/


-- 예외처리
-- : 실행부에서(being ~ end) 발생하는 예외를 처리하는 블럭 > exception 블럭

declare
    vname varchar2(5);
begin
    dbms_output.put_line('하나');
    select name into vname from tblinsa where num = 1001;
    dbms_output.put_line('둘');
    dbms_output.put_line(vname);
exception 
    when others then 
        dbms_output.put_line('예외 처리');
end;

/
-- 예외 발생 > DB 저장
create table tbllog (
    seq number primary key,
    code varchar2(7) not null check (code in ('A001','B001','B002','C001')), --에러 상태
    message varchar(1000) not null,             --에러 메시지
    regdate date default sysdate not null       --에러 발생 시각
);
create sequence seqlog;
/
declare
    vcnt number;
    vname tblinsa.name%type;
begin
    select count(*) into vcnt from tblcountry where name = '태국';
    dbms_output.put_line(100/vcnt);
    select name into vname from tblinsa where num = 1000;
    dbms_output.put_line(vname);
exception
    when zero_divide then
        dbms_output.put_line('0으로 나누기');
        insert into tbllog values (seqlog.nextval, 'B001', '가져온 레코드가 없습니다.', default);
    when no_data_found then
        dbms_output.put_line('데이터 없음');
        insert into tbllog values (seqlog.nextval, 'A001', '직원이 존재하지 않습니다.', default);
    when others then
        dbms_output.put_line('나머지 예외');
        insert into tbllog values (seqlog.nextval, 'C001', '기타 예외가 발생했습니다.', default);
end;
/

select * from tbllog;


-- ~ 익명 프로시저

-- 내일은 실명 프로시저 ~





/*

	명령어 실행 > 처리과정
	
	1. ANSI-SQL
	2. 익명 프로시저
		a. 클라이언트 > 구문 작성(select)
		b. 실행(Ctrl + Enter)
		c. 명령어를 오라클 서버에 전달
		d. 서버가 명령어를 수신
		e. 구문 분석(파싱) + 문법 검사
		f. 컴파일  
		g. 실행(select)
		h. 결과셋 도출
		i. 결과셋을 클라이언트에게 반환
		j. 결과셋을 화면에 출력
		- 다시 실행
			- a ~ j 다시 반복
			- 한번 실행햇던 명령어를 다시 실행 > 위의 모든 과정을 처음부터 끝까지 다시 실행하낟.
			- 첫번째 실행 비용 = 다시 실행 비용 
		
	3. 실명 프로시저 
		a. 클라이언트 > 구문 작성(create)
		b. 실행(Ctrl + Enter)
		c. 명령어를 오라클 서버에 전달
		d. 서버가 명령어를 수신
		e. 구문 분석(파싱) + 문법 검사
		f. 컴파일  
		g. 실행
		h. 오라클 서버 > 프로시저 생성 > 저장
		i. 완료
		
		a. 클라이언트 > 구문 작성	
		b. 실행(Ctrl + Enter)
		c. 명령어를 오라클 서버에 전달
		d. 서버가 명령어를 수신
		e. 구문 분석(파싱) + 문법 검사
		f. 컴파일  
		g. 실행 > 프로시저 실행
		
		-- 다시 실행
		a. 클라이언트 > 구문 작성	
		b. 실행(Ctrl + Enter)
		c. 명령어를 오라클 서버에 전달
		d. 서버가 명령어를 수신
		e. 구문 분석(파싱) + 문법 검사
		f. 컴파일  
		g. 실행 > 프로시저 실행
		
	
*/


/*
	프로시저
	1. 익명프로시저
		- 1회용
	
	2. 실명 프로시저
		- 재사용
		- 오라클에 저장
		
	실명 프로시저
	- 저장 프로시저(Stored Procedure)
	1. 저장 프로시저, Stored Procedure
		- 매개변수 / 반환값 구성 > 자유
	2. 저장 함수, Stored Function
		- 매개변수 / 반환값 구성 > 필수
	
	익명 프로시저 선언
	[declare
		변수 선언;
		커서 선언;]
	begin
		구현부;
	[exception
		예외처리;]	
	end;
	
	저장 프로시저 선언       
	create [or replace] procedure 프로시저명
	is(as)
		[변수 선언;
		 커서 선언;]
	begin
		구현부;
	[exception
		예외처리;]	
	end;
*/
-- 익명 프로시저
DECLARE
	vnum NUMBER;
BEGIN
	vnum := 100;
	dbms_output.put_line(vnum);
END;
/
-- 저장 프로시저
CREATE OR REPLACE PROCEDURE procTest
IS
	vnum NUMBER;
BEGIN
	vnum := 100;
	dbms_output.put_line(vnum);
END;
/
-- 저장 프로시저를 호출하는 방법
BEGIN
	procTest; -- 프로시저 호출
END;
/

-- 저장 프로시저 = 메서드
-- 매개변수 + 반환값

-- 1. 매개변수가 있는 프로시저
CREATE OR REPLACE PROCEDURE procTest(pnum number) -- 매개변수
IS
	vresult NUMBER; -- 일반변수
BEGIN
	vresult := pnum * 2;
	dbms_output.put_line(vresult);
END procTest;

BEGIN 
	-- PL/SQL 영역
	procTest(100);
END;

-- ANSI-SQL 영역
SELECT * FROM tblinsa;



CREATE OR REPLACE PROCEDURE procTest(width NUMBER, height NUMBER)
IS
	vresult NUMBER;
BEGIN
	vresult := width * height;
	dbms_output.put_line(vresult);
END procTest;

BEGIN
	procTest(10, 20);
END;


-- *** 프로시저 매개변수는 길이와 not null 표현은 불가능하다.
CREATE OR REPLACE PROCEDURE procTest(name varchar2)
IS -- 변수 선언이 없어도 반드시 기재
BEGIN
	dbms_output.put_line('안녕하세요. ' || name || '님');
END procTest;
BEGIN 
	procTest('홍길동');
END;


CREATE OR REPLACE PROCEDURE procTest(width NUMBER, height NUMBER DEFAULT 10)
IS
	vresult NUMBER;
BEGIN
	vresult := width * height;
	dbms_output.put_line(vresult);
END procTest;

BEGIN
	procTest(10, 20);
	procTest(10);
END;




/*
	매개변수 모드
	- 매개변수가 값을 전달하는 방식
	- Call by Value > 매개변수 > 값을 넘기는 방식(값형 인자)
	- Call by Reference > 매개변수 > 참조값(주소)을 넘기는 방식(참조형 인자)
	
	1. in 모드
	2. out 모드
	3. in out 모드(x)
	
 */

CREATE OR REPLACE PROCEDURE procTest (
	pnum1 IN NUMBER,		-- in parameter	//인자값
	pnum2 IN NUMBER,
	presult OUT NUMBER,		-- OUT PARAMETER //반환값 역할
	presult2 OUT NUMBER,
	preuslt3 OUT NUMBER 
)
IS
BEGIN
	presult := pnum1 + pnum2;
	preulst2 := pnum1 - pnum2;
	presult3 := pnum1 * pnum2;
END procTest;

DECLARE
	vnum NUMBER;
	vnum2 NUMBER;
	vnum3 NUMBER;
BEGIN
	procTest(10, 20, vnum, vnum2, vnum3);
	dbms_output.put_line(vnum);
	dbms_output.put_line(vnum2);
	dbms_output.put_line(vnum3);
END;

SELECT * FROM tblinsa;
-- 문제
-- 1. 부서 전달(인자) > 해당 부서의 직원 중 급여를 가장 많이 받는 사람의 번호 반환(out) > 출력
CREATE OR REPLACE PROCEDURE procTest1 (pbuseo IN varchar2, pnum OUT number)
IS
BEGIN
	SELECT num INTO pnum FROM tblinsa WHERE basicpay = (SELECT max(basicpay) FROM tblinsa WHERE buseo = pbuseo) AND buseo = pbuseo;
END;
DECLARE
	vnum NUMBER;
BEGIN
	procTest1('기획부', vnum);
	dbms_output.put_line(vnum);
END;

-- 2. 직원 번호 전달(인자) > 같은 지역에 사는 직원수?, 같은 직위?, 해당 직원보다 급여를 더 많이 받는 직원수? 반환
CREATE OR REPLACE PROCEDURE procTest2 (
	pnum IN NUMBER,
	pcnt1 OUT NUMBER,
	pcnt2 OUT NUMBER,
	pcnt3 OUT NUMBER 
)
IS
BEGIN
	SELECT count(*) INTO pcnt1 FROM tblinsa WHERE city = (SELECT city FROM tblinsa WHERE num = pnum);
	SELECT count(*) INTO pcnt2 FROM tblinsa WHERE jikwi = (SELECT jikwi FROM tblinsa WHERE num = pnum);
	SELECT count(*) INTO pcnt3 FROM tblinsa WHERE basicpay > (SELECT basicpay FROM tblinsa WHERE num = pnum);	
END;

DECLARE
	vcnt NUMBER;
	vcnt2 number;
	vcnt3 NUMBER;
BEGIN
	procTest2(1023,vcnt,vcnt2,vcnt3);
	dbms_output.put_line(vcnt);
	dbms_output.put_line(vcnt2);
	dbms_output.put_line(vcnt3);
END;

--합치기
DECLARE
	vnum NUMBER;
	vcnt NUMBER;
	vcnt2 NUMBER;
	vcnt3 NUMBER;
BEGIN
	procTest1('개발부', vnum);
	procTest2(vnum,vcnt,vcnt2,vcnt3);
	dbms_output.put_line(vcnt);
	dbms_output.put_line(vcnt2);
	dbms_output.put_line(vcnt3);
END;





SELECT * FROM tblstaff;
SELECT * FROM tblproject;

DELETE FROM tblstaff;
DELETE FROM tblproject;

INSERT INTO tblStaff (seq, name, salary, address) VALUES (1, '홍길동', 300, '서울시');
INSERT INTO tblStaff (seq, name, salary, address) VALUES (2, '아무개', 250, '인천시');
INSERT INTO tblStaff (seq, name, salary, address) VALUES (3, '하하하', 250, '부산시');
INSERT INTO tblStaff (seq, name, salary, address) VALUES (4, '허허허', 200, '서울시');


INSERT INTO tblProject (seq, project, staff_seq) VALUES (1, '홍콩 수출', 1); --홍길동
INSERT INTO tblProject (seq, project, staff_seq) VALUES (2, 'TV 광고', 2); --아무개
INSERT INTO tblProject (seq, project, staff_seq) VALUES (3, '매출 분석', 3); --하하하
INSERT INTO tblProject (seq, project, staff_seq) VALUES (4, '노조 협상', 1); --홍길동
INSERT INTO tblProject (seq, project, staff_seq) VALUES (5, '대리점 분양', 2); --아무개

COMMIT;


-- 직원 퇴사 프로시저, procDeleteStaff
-- 1. 퇴사 직원 > 담당 프로젝트 유무 확인
-- 2. 담당 프로젝트 존재 > 위임
-- 3. 퇴사 직원 삭제

CREATE OR REPLACE PROCEDURE procDeleteStaff(
	pseq NUMBER, 			-- 퇴사할 직원번호
	pstaff NUMBER, 			-- 위임받을 직원번호
	presult OUT NUMBER 		-- 성공(1) or 실패(0) > 피드백 
)
IS
	vcnt NUMBER;	--퇴사 직원의 담당 프로젝트 개수
BEGIN
	-- 1. 퇴사 직원의 담당 프로젝트가 있는지?
	SELECT count(*) into vcnt FROM tblproject WHERE staff_seq = pseq;
	-- 2. 조건 > 위임 유무 결정
	IF vcnt > 0 THEN
		--3.1. 위임
		UPDATE tblproject SET staff_seq = pstaff WHERE staff_seq = pseq;
	ELSE
		-- 3.2. 아무것도 안함
		NULL; -- 이 조건의 ELSE절에서는 아무것도 하지 마시오!! > 개발자의 의도 표현
	END IF;
	-- 4. 퇴사
	DELETE FROM tblstaff WHERE seq = pseq;
EXCEPTION
	WHEN OTHERS THEN
		presult := 0;
END procDeleteStaff;

DECLARE 
	vresult NUMBER;
BEGIN
	procDeleteStaff(1,2,vresult);
	IF vresult = 1 THEN
		dbms_output.put_line('퇴사 성공');
	ELSE
		dbms_output.put_line('퇴사 실패');
	END IF;
END;
SELECT * FROM tblstaff;

-- 위임받을 직원 > 현재 프로젝트를 가장 적게 담당 직원에게 자동으로 위임
-- 동률 > rownum = 1
CREATE OR REPLACE PROCEDURE procDeleteStaff(
	pseq NUMBER, 			-- 퇴사할 직원번호
	presult OUT NUMBER 		-- 성공(1) or 실패(0) > 피드백 
)
IS
	vcnt NUMBER;	--퇴사 직원의 담당 프로젝트 개수
	vstaff_seq NUMBER; -- 담당 프로젝트가 가장 적은 직원 번호
BEGIN
	-- 1. 퇴사 직원의 담당 프로젝트가 있는지?
	SELECT count(*) into vcnt FROM tblproject WHERE staff_seq = pseq;
	-- 2. 조건 > 위임 유무 결정
	IF vcnt > 0 THEN
		--2.5 적게 맡고 있는 직원 번호?
		SELECT seq INTO vstaff_seq FROM (
		SELECT s.seq
		FROM tblstaff s
			LEFT OUTER JOIN tblproject p 
				ON s.seq = p.staff_seq
					GROUP BY s.seq
						HAVING count(p.staff_seq) = (SELECT min(count(p.staff_seq))
																	FROM tblstaff s
																		LEFT OUTER JOIN tblproject p 
																			ON s.seq = p.staff_seq
																				GROUP BY s.seq))
																			WHERE rownum = 1;
		--3.1. 위임
		UPDATE tblproject SET staff_seq = vstaff_seq WHERE staff_seq = pseq;
	ELSE
		-- 3.2. 아무것도 안함
		NULL; -- 이 조건의 ELSE절에서는 아무것도 하지 마시오!! > 개발자의 의도 표현
	END IF;
	DELETE FROM tblstaff WHERE seq = pseq;
EXCEPTION
	WHEN OTHERS THEN
		presult := 0;
END procDeleteStaff;






/*
	
	
	
	저장 프로시저
	1. 저장 프로시저
	2. 저장 함수
	
	
	
	저장 함수, Stored Function > 함수
	- 저장 프로시저와 동일
	- 반환값이 반드시 존재 > out 파라미터를 말하는게 아니라 > return 문을 사용한다.
	- out 파라미터를 사용 금지 > 대신 return 문을 사용
	- in 파라미터는 사용한다.
	- 이런 특성때문에 호출하는 구문이 조금 다르다.(****)
	
 */

-- num1 + num 2 > 합
-- 프로시저
CREATE OR REPLACE PROCEDURE procSum(
	num1 IN NUMBER,
	num2 IN NUMBER,
	presult OUT NUMBER 
)
IS
BEGIN
	presult := num1 + num2;
END procSum;

-- 함수
CREATE OR REPLACE FUNCTION fnSum(
	num1 IN NUMBER,
	num2 IN NUMBER 
	--presult out number --out을 사용하면 함수의 고유 특성이 사라진다. 프로시저와 동일
) RETURN NUMBER
IS
BEGIN
	RETURN num1 + num2;
END fnSum;



DECLARE
	vresult NUMBER;
BEGIN
	procSum(10,20,vresult);
	dbms_output.put_line(vresult);
	
	vresult := fnSum(10, 20);
	dbms_output.put_line(vresult);
END;




-- 프로시저: PL/SQL 전용 > 업무 절차 모듈화
-- 함수: ANSI-SQL 보조

SELECT 
	name, basicpay, sudang,
	fnSum(basicpay, sudang)
FROM tblinsa;



-- 이름, 부서, 직위, 성별(남자|여자)
SELECT
	name, buseo, jikwi,
	fnGender(ssn) AS gender
FROM tblinsa;

CREATE OR REPLACE FUNCTION fnGender(pssn varchar2) RETURN varchar2
IS
BEGIN
	RETURN	CASE
				WHEN substr(pssn, 8, 1) = '1' THEN '남자'
				WHEN substr(pssn, 8, 1) = '2' THEN '여자'
			END;
END fnGender;



/*
	
	프로시저
	1. 프로시저
	2. 함수
	3. 트리거
	
	트리거, Trigger
	- 프로시저의 한 종류
	- 개발자의 호출이 아닌, 미리 지정한 특정 사건이 발생하면 시스템이 자동으로 실행하는 프로시저
	- 예약(사건) > 사건 발생시 > 프로시저 호출
	- 특정 테이블 지정 > 지정 테이블 오라클 감시 > 
			insert or update or delete > 미리 준비해놓은 프로시저 호출
			
	트리거 구문
	create or replace trigger 트리거명
		befor|afer
		insert|update|delete
		on 테이블명
		[for each row]
	declare
		선언부;
	begin
		구현부;
	exception
		예외처리부;
	end;
	
 */


CREATE OR REPLACE TRIGGER trgInsa
	BEFORE		-- 삭제가 발생하기 직전에 아래의 구현부를 먼저 실행해라
	DELETE		-- 삭제가 발생하는지 감시
	ON tblinsa 	-- tblinsa 테이블에서(감시)
BEGIN
	dbms_output.put_line(to_char(sysdate, 'hh24:mi:ss ') || '트리거가 실행되었습니다.');
	-- 월요일에는 퇴사가 불가능
	IF to_char(sysdate, 'dy') = '월' THEN
		-- 강제로 에러 발생
		-- -20000 ~ - 29999
		raise_application_error(-20001, '월요일에는 퇴사가 불가능합니다.');
	END IF;
END trgInsa;

SELECT * FROM tblinsa;

DELETE FROM tblinsa WHERE num = 1010;



SELECT * FROM tbldiary;
-- 로그 기록
CREATE TABLE tblLogDiary (
	seq NUMBER PRIMARY KEY,
	message varchar(1000) NOT NULL,
	REGDATE DATE DEFAULT SYSDATE NOT NULL
);
CREATE SEQUENCE seqLogDiary;

CREATE OR REPLACE TRIGGER trgDiary
	AFTER
	INSERT OR UPDATE OR DELETE
	ON tblDiary
DECLARE
	vmessage varchar2(1000);
BEGIN
--	dbms_output.put_line(to_char(sysdate, 'hh24:mi:ss ') || '트리거가 실행되었습니다.');
	IF inserting THEN
--		dbms_output.put_line('추가');
		vmessage := '새로운 항목이 추가되었습니다.';
	ELSIF updating THEN
--		dbms_output.put_line('수정');
		vmessage := '기존 항목이 수정되었습니다.';
	ELSIF deleting THEN
--		dbms_output.put_line('삭제');
		vmessage := '기존 항목이 삭제되엇습니다.';
	END IF;
	INSERT INTO tblLogDiary VALUES (seqLogDiary.nextVal, vmessage, default);
END trgDiary;

INSERT INTO tbldiary VALUES (11, '프로시저를 공부했다.', '흐림', sysdate);
UPDATE tbldiary SET subject = '프로시저를 복습했다' WHERE seq = 11;
DELETE FROM tbldiary WHERE seq = 11;

SELECT * FROM tbllogdiary;


/*
	
	 [for each row]
	 1. 생략 
	 	- 문장(Query) 단위 트리거. Table level trigger 
	 	- 사건에 적용된 행의 갯수 무관 > 트리거 딱 1회 호출
	 	- 적용된 레코드의 정보는 중요하지 않은 경우 + 사건 자체가 중요한 경우 
	 2. 사용
	 	- 행(Record) 단위 트리거 
	 	- 사건에 적용된 행의 개수만큼 > 트리거가 호출
	 	- 적용된 레코드의 정보가 중요한 경우 + 사건 자체보다..
	 	- 상관 관계를 사용한다. > 일종의 가상 레코드 > :old, :new
	 	
	 	insert
	 	- :new > 방금 추가된 행
	 	update 
	 	- :old > 수정되기 전 행
	 	- :new > 수정되고 후 행
	 	delete
	 	- :old > 삭제되기 전 행
	 	
	 	
 */

SELECT * FROM tblMen;


CREATE OR REPLACE TRIGGER trgMen
	AFTER
	DELETE
	ON tblMen
BEGIN
	dbms_output.put_line('레코드를 삭제했습니다.' || :OLD.name);
END trgMen;

ROLLBACK;
SELECT * FROM tblMen;
select WHERE name = '홍길동';
DELETE FROM tblmen WHERE name = '홍길동'; -- 1명 삭제 > 트리거 1회실행
DELETE FROM tblmen WHERE age < 25; -- 다수 삭제 > 트리거 1회실행

SELECT * FROM tblmen;
   
CREATE OR REPLACE TRIGGER trgMen
	AFTER
	update
	ON tblmen
	for EACH ROW
BEGIN
	dbms_output.put_line('레코드를 수정했습니다' || OLD.name);
	dbms_output.put_line('수정하기 전 나이: ' || :OLD.age);
	dbms_output.put_line('수정하고 후 나이: ' || :new.age);
END trgmen;
SELECT * FROM tblmen;
UPDATE tblmen SET age = age+1 WHERE name = '홍길동';	


-- 퇴사 > 프로젝트 위임
SELECT * FROM tblstaff;
SELECT * FROM tblproject;
-- 직원을 퇴사 > 퇴사 바로 직전 > 담당 프로젝트 체크 > 위임

CREATE OR REPLACE TRIGGER trgDeleteStaff
	BEFORE				--3.전에
	delete				--2. 퇴사
	ON tblstaff			--1. 직원 테이블에서
	FOR EACH ROW		--4. 해당 직원 정보
BEGIN
	UPDATE tblproject SET
		staff_seq = 3
		WHERE staff_seq = :OLD.seq;
END trgDeleteStaff;

DELETE FROM tblstaff WHERE seq = 1;








-- 회원 테이블, 게시판 테이블
-- - 포인트 제도
--	1. 글 작성 > 포인트 + 100
--	2. 글 삭제 > 포인트 + 50

CREATE TABLE tblUser (
	id varchar2(30) PRIMARY key,
	point NUMBER DEFAULT 1000 NOT null
);

CREATE TABLE tblBoard (
	seq NUMBER PRIMARY keY,
	subject varchar2(1000) NOT NULL,
	id VARCHAR2(30) NOT NULL REFERENCES tblUser(id)
);

CREATE SEQUENCE seqboard;
INSERT INTO tblUser VALUES ('hong', default);
SELECT * FROM tblUser;
SELECT * FROM tblboard;


-- A. 글을 쓴다.(삭제한다)
-- B. 포인트를 누적(차감)한다.

-- Case 1. hard
-- 개발자 직접 제어

-- 1.1 글쓰기
INSERT INTO tblboard VALUES (seqboard.nextVal, '게시판입니다.', 'hong');

-- 1.2 포인트 누적하기
UPDATE tbluser SET point = point + 100 WHERE id = 'hong';

-- 1.3 글삭제
DELETE FROM TBLBOARD WHERE SEQ = 1;

-- 1.4 포인트 차감하기
UPDATE tbluser SET point = point - 50 WHERE id = 'hong';


-- Case 2.프로시저
-- 글쓰기
CREATE OR REPLACE PROCEDURE procAddBoard (
	pid varchar2,
	psubject varchar2
)
IS
BEGIN
	-- 2.1 글쓰기
	INSERT INTO tblboard VALUES (seqboard.nextVal, psubject, pid);
	-- 2.2 포인트 누적하기
	UPDATE tbluser SET point = point + 100 WHERE id = pid;
END procAddBoard;
-- 삭제
CREATE OR REPLACE PROCEDURE procDeleteBoard (
	pseq number
)
IS
	vid varchar2(30);
BEGIN
	-- 2.1 삭제글의 작성자 알아내기
	SELECT id INTO vid FROM tblboard WHERE seq = pseq;
	-- 2.2 글삭제
	DELETE FROM TBLBOARD WHERE SEQ = pseq;
	-- 2.3 포인트 차감하기
	UPDATE tbluser SET point = point - 50 WHERE id = vid;
END procDeleteBoard;


BEGIN
--	procAddBoard('hong', '글을 작성합니다.');
	procDeleteBoard(4);
END;


-- case.3 트리거
SELECT * FROM tbluser;
SELECT * FROM tblboard;

CREATE OR REPLACE TRIGGER trgBoard
	AFTER
	INSERT OR DELETE
	ON tblboard
	for EACH ROW
BEGIN
	IF inserting THEN
		UPDATE tblUser SET point = point + 100 WHERE id = :NEW.id;
	ELSIF deleting THEN
		UPDATE tblUser SET point = point - 50 WHERE id = :old.id;
	END IF;
END trgBoard;

INSERT INTO tblboard VALUES (seqBoard.nextVal, '또 다시 글을 씁니다.', 'hong');
DELETE FROM tblboard WHERE seq = 6;

COMMIT;



/*
	
	함수 return
	
	1. 단일값 O
	2. 단일값 X > corsor
	
	
	프로시저 out parameter
	
	1. 단일값(단일 레코드)
		a. number
		b. varchar2
		c. date
		
	2. 다중값(다중 레코드)
		a. cursor
 */

CREATE OR REPLACE PROCEDURE procBuseo (
	pbuseo varchar2
)
IS
	CURSOR vcursor
	IS
	SELECT * FROM tblinsa WHERE buseo = pbuseo;
	vrow tblinsa%rowtype;
BEGIN
	OPEN vcursor;
	LOOP
		FETCH vcursor INTO vrow;
		EXIT WHEN vcursor%notfound;
		--업무
		dbms_output.put_line(vrow.name || ',' || vrow.buseo);
	END LOOP;
	CLOSE vcursor;
END procBuseo;

BEGIN
	procBuseo('영업부');
END;




CREATE OR REPLACE PROCEDURE procBuseo (
	pbuseo IN varchar2,
	pcursor OUT sys_refcursor --커서의 자료형
)
IS
BEGIN
	OPEN pcursor;
	FROM
	SELECT * FROM tblinsa WHERE buseo = pbuseo;
	CLOSE pcursor;
END procBuseo;


DECLARE
	vcursor sys_refcursor;
	vrow tblinsa%rowtype;
BEGIN
	procBuseo('영업부', vcursor);
	LOOP
		FETCH vcursor INTO vrow;
		EXIT WHEN vcursor%notfound;
		dbms_output.put_line(vrow.name);
	END LOOP;
END;





-- 프로시저 총 정리 > CRUD

-- 1. 추가 작업(C)
CREATE OR REPLACE PROCEDURE 추가작업명(
	추가할 데이터 -> IN 매개변수,
	추가할 데이터 -> IN 매개변수,
	추가할 데이터 -> IN 매개변수,		--원하는 만큼
	성공 유무 반화 -> OUT 매개변수	-- 피드백(1,0)
)
IS
	내부 변수 선언
BEGIN
	작업(INSERT + (SELECT, UPDATE, delete))	
EXCEPTION
	WHEN OTHERS THEN
		예외처리
END 추가작업명;

SELECT * FROM tbltodo;
CREATE SEQUENCE seqTodo START WITH 25;

--	할일 추가하기(C)
CREATE OR REPLACE PROCEDURE procAddTodo (
	ptitle varchar2,
	presult OUT NUMBER -- 1 OR 0
)
IS
BEGIN
	INSERT INTO tbltodo (SEQ, TITLE, adddate, completedate) VALUES (seqTodo.nextval, ptitle, sysdate, null);
	presult := 1; --성공
EXCEPTION
	WHEN OTHERS THEN presult := 0; --실패
END procAddTodo;


DECLARE
	vresult NUMBER;
BEGIN
	procAddTodo('새로운 할일입니다.',vresult);
	dbms_output.put_line(vresult);
END;


-- 2. 수정 작업(U)
CREATE OR REPLACE PROCEDURE 수정작업명(
	수정할 데이터 -> IN 매개변수,
	수정할 데이터 -> IN 매개변수,
	수정할 데이터 -> IN 매개변수,		--원하는 만큼
	식별자 -> in 매개변수		--WHERE절에 사용할 PK OR 데이터
	성공 유무 반화 -> OUT 매개변수	-- 피드백(1,0)
)
IS
	내부 변수 선언
BEGIN
	작업(UPDATE + (SELECT, UPDATE, DELETE, SELECT..))	
EXCEPTION
	WHEN OTHERS THEN
		예외처리
END 추가작업명;

-- 할일 수정하기(U) > completedate > 채우기 > 할일 완료 처리하기
CREATE OR REPLACE PROCEDURE procCompleteTodo (
	-- procCompleteTodo date > 수정할 날짜 > 지금 > sysdate 처리
	pseq IN NUMBER, -- 수정할 할일 번호
	presult OUT NUMBER
)
IS
BEGIN
	UPDATE tbltodo SET completedate = sysdate WHERE seq = pseq;
	presult := 1;
EXCEPTION
	WHEN OTHERS THEN presult := 0;
END procCompleteTodo;


DECLARE
	vresult NUMBER;
BEGIN 
	procCompleteTodo(25, vresult);
	dbms_output.put_line(vresult);
END;

SELECT * FROM tbltodo;



-- 3. 삭제 작업(D)
CREATE OR REPLACE PROCEDURE 삭제작업(
	식별자 -> IN 매개변수,
	성공 유무 반환 -> OUT 매개변수
)
IS
	내부 변수 선언
BEGIN
	작업(DELETE + (INSERT, UPDATE, DELETE, SELECT))
EXCEPTION
	WHEN OTHERS THEN
		예외처리
END;


-- 할일 삭제하기(D)
CREATE OR REPLACE PROCEDURE procDeleteTodo(
	pseq IN NUMBER,
	presult OUT NUMBER
)
IS
BEGIN
	DELETE FROM tbltodo WHERE seq = pseq;
	presult := 1;
EXCEPTION
	WHEN OTHERS THEN presult := 0;
END procDeleteTodo;

DECLARE
	vresult NUMBER;
BEGIN
	procDeleteTodo(26, vresult);
	dbms_output.put_line(vresult);
END;


-- 읽기 작업(R)
-- : 조건 유/무
-- : 반환 단일행/다중행, 단일컬럼/다중컬럼

-- 한일 몇개? 안한일 몇개? 총 몇개?
CREATE OR REPLACE PROCEDURE 읽기작업명(
	조건 데이터 -> IN 매개변수,
	단일 반환값 -> OUT 매개변수,
	다중 반환값 -> OUT 매개변수(커서)
)
IS
	내부 변수 선언
BEGIN
	작업(SELECT + (INSERT, UPDATE, DELETE, select))
EXCEPTION
	WHEN OTHERS THEN 예외처리
END 읽기작업명;

-- 한일 몇개? 안한일 몇개? 총 몇개?
CREATE OR REPLACE PROCEDURE procCountTodo(
	pcount1 OUT NUMBER,	--한일
	pcount2 OUT NUMBER,	--안한일
	pcount3 OUT NUMBER	--모든일
)
IS
BEGIN
	SELECT count(*) INTO pcount1 FROM tbltodo WHERE completedate IS NOT NULL;
	SELECT count(*) INTO pcount2 FROM tbltodo WHERE completedate IS NULL;
	SELECT count(*) INTO pcount3 FROM tbltodo;
EXCEPTION
	WHEN OTHERS THEN dbms_output.put_line('예외 처리');
END procCountTodo;


DECLARE
	vcount1 NUMBER;
	vcount2 NUMBER;
	vcount3 NUMBER;
BEGIN
	procCountTodo(vcount1, vcount2, vcount3);
	dbms_output.put_line(vcount1);
	dbms_output.put_line(vcount2);
	dbms_output.put_line(vcount3);
END;

-- 한일 몇개? 안한일 몇개? 총 몇개? 중 하나 택
CREATE OR REPLACE PROCEDURE procCountTodo(
	psel IN NUMBER,	--선택(1-한일, 2-안한일, 3-모든일)
	pcount OUT NUMBER
)
IS
BEGIN
	IF psel = 1 THEN SELECT count(*) INTO pcount FROM tbltodo WHERE completedate IS NOT NULL;
	ELSIF psel = 2 THEN SELECT count(*) INTO pcount FROM tbltodo WHERE completedate IS NULL;
	ELSIF psel = 3 THEN	SELECT count(*) INTO pcount FROM tbltodo;
	END IF;
EXCEPTION
	WHEN OTHERS THEN dbms_output.put_line('예외 처리');
END procCountTodo;


DECLARE
	vcount NUMBER;
BEGIN
	procCountTodo(2,vcount);
	dbms_output.put_line(vcount);
END;


--번호 > 할일 1개 반환
CREATE OR REPLACE PROCEDURE procGetTodo(
	pseq IN NUMBER,
	prow OUT tbltodo%rowtype
)
IS
BEGIN
	SELECT * INTO prow FROM tbltodo WHERE seq = pseq;
EXCEPTION
	WHEN OTHERS THEN dbms_output.put_line('예외처리');
END procGetTodo;


DECLARE
	vrow tbltodo%rowtype;
BEGIN
	procGetTodo(1, vrow);
	dbms_output.put_line(vrow.title);
END;


-- 다중 레코드 반환
-- 1. 한일 목록 반환
-- 2. 안한일 목록 반환
-- 3. 모든일 목록 반환
CREATE OR REPLACE PROCEDURE procListTodo(
	psel IN NUMBER,	--선택(1-한일, 2-안한일, 3-모든일)
	pcursor OUT sys_refcursor
)
IS
BEGIN
	IF psel = 1 THEN 
		OPEN pcursor
		FOR 
		SELECT * FROM tbltodo WHERE completedate IS NOT NULL;
	ELSIF psel = 2 THEN
		OPEN pcursor
		FOR 
		SELECT * FROM tbltodo WHERE completedate IS NULL;
	ELSIF psel = 3 THEN
		OPEN pcursor
		FOR 
		SELECT * FROM tbltodo;
	END IF;
EXCEPTION
	WHEN OTHERS THEN dbms_output.put_line('예외 처리');
END procListTodo;

DECLARE
	vcursor sys_refcursor;
	vrow tbltodo%rowtype;
BEGIN
	procListTodo(3,vcursor);
	LOOP
		FETCH vcursor INTO vrow;
		EXIT WHEN vcursor%notfound;
		dbms_output.put_line(vrow.title||','||vrow.completedate);
	END LOOP;
END;



















