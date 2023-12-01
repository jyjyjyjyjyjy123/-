select * from tabs order by table_name;

select * from tblAddress;           

create table tblAddress(
    SEQ NUMBER PRIMARY KEY, 
	NAME VARCHAR2(30) NOT NULL, 
	AGE NUMBER NOT NULL, 
	GENDER CHAR(1) NOT NULL, 
	ADDRESS VARCHAR2(300) NOT NULL, 
	REGDATE DATE DEFAULT sysdate NOT NULL
);

select * from tblchild;
select count(*) from tblAddress;
select * from tbladdress;

select * from tblselfsymtom;
select * from tblselfsymtom