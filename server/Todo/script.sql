-- todo > script.sql

drop table tblTodo;
drop sequence seqTodo;

-- 할일 테이블
create table tblTodo (
    seq number primary key,                 -- 번호(PK)
    todo varchar2(1000) not null,           -- 할일
    state char(1) default 'n' not null,     -- 미완료(n), 완료(y)
    regdate date default sysdate not null   -- 날짜
);

create SEQUENCE seqTodo;

insert into tblTodo (seq, todo, state, regdate) -- 추가
    VALUES(seqTodo.nextVal, '할일입니다.', default, default);    

select * from tblTodo order by seq desc;                          -- 확인 

select * from tblTodo order by state asc, seq desc;

update tblTodo set state = 'y' where seq = 7;   -- 수정

delete from tblTodo where seq = 1;              -- 삭제

commit;
