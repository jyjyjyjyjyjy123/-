drop table tblRent;
drop table tblMember;

-- 회원 테이블
create table tblMember (
    userid varchar2(50) not null primary key,
    userpw varchar2(100) not null, --최소 100바이트 이상
    username varchar2(100) not null,
    regdate date default sysdate not null,
    enabled char(1) default '1'
);
select * from tblmember;

-- 권한(자격) 테이블 > ROLE_MEMBER, ROLE_ADMIN
create table tblAuth (
    userid varchar2(50) not null,
    auth varchar2(50) not null,
    CONSTRAINT fk_member_auth FOREIGN KEY(userid) REFERENCES tblmember(userid)
);