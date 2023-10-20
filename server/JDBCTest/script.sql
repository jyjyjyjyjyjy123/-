-- hr

--SELECT * from tblAddress;
--drop table tblAddress;
--drop sequence seqAddress;

create table tblAddress (
    seq number primary key,
    name varchar2(30) not null,
    age number not null,
    gender char(1) not null,
    address varchar2(300) not null,
    regdate date default sysdate not null
);

create sequence seqAddress;

insert into tbladdress (seq, name, age, gender, address, regdate)
    values (seqAddress.nextval, '홍길동', 20, 'm', '서울시 강남구 역삼동', default);
    
SELECT * from tblAddress;
commit;





-- Ex05.java

-- m1. 인자값(X), 반환값(X)
create or replace procedure procM1
is
begin
    update tblAddress set age = age +1;
end procM1;

-- m2. 인자값(O), 반환값(X)
create or replace procedure procM2 (
    pname tblAddress.name%type,
    page tblAddress.age%type,
    pgender tblAddress.gender%type,
    paddress tblAddress.address%type
)
is
begin
    insert into tblAddress values (seqAddress.nextval, pname, page, pgender, paddress, default);
end procM2;

-- m3. 인자값(X), 반환값(O)
create or replace procedure procM3 (
    pcnt out number
)
is
begin
    select count(*) into pcnt from tbladdress;
end procM3;

-- m4m4. 인자값(x), 반환값(O)
create or replace procedure procM4 (
    pname out varchar2,
    page out number,
    paddress out varchar2
)
is
begin
    select name, age, address into pname, page, paddress from tblAddress where rownum = 1;
end procM4;

-- m5. 인자값(x), 반환값(O)
create or replace procedure procM5 (
    pcursor out SYS_REFCURSOR
)
is
begin
    open pcursor
    for
        select * from tblAddress;
end procM5;