/*

SQL, Quert(질의)

SELECT문
    DML, DQL
    SQL은 SELECT로 시작해서 SELECT로 끝난다.
    CRUD
    
    [WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expresstion [ASC|DESC]]
    
    //기본 SELECT문
    SELECT column_list -- 원하는 컬럼을 지정만 가져와라.
    FROM table_name -- 데이터 소스. 어떤 테이블로부터 데이터를 가져와라.
    
    각 절의 순서************** 
    2. SELECT
    1. FROM 
*/

select * from tblType;
select * from employees;
-- 테이블 구조?? > 스키마(Scheme) > 명세서
desc employees;
select first_name from employees;

select * from tblAddressBook;
select * from tblComedian;
select * from tblCountry;
select * from tblDiary;
select * from tblHousekeeping;
select * from tblInsa;
select * from tblMen;
select * from tblWomen;
select * from tblSalary;
select * from tblTodo;
select * from tblZoo;
select * from zipcode;


-- select 절
-- from 절

-- select 컬럼리스트
select * from tblcomedian;

-- 단일 컬럼
select first from tblcomedian;
select nick from tblcomedian;

select first, last, gender, height, weight, nick from tblcomedian;
-- 다중 컬럼(,를 이용)
select first, last from tblcomedian;
-- 컬럼 순서 > 자유
select last, first from tblcomedian;
-- 동일 컬럼 반복
select first, length(first) from tblcomedian;


select
    first, last
from 
    tblcomedian;
