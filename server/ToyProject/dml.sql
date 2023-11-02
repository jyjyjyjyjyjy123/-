-- ToyProject
-- 회원

insert into tblUser (id, pw, name, email, lv, pic, intro, ing) values ('hong', '1234', '홍길동',  'hong@gmail.com', '1', default, '자바를 공부하는 학생입니다.', default);
insert into tblUser (id, pw, name, email, lv, pic, intro, ing) values ('admin', '1234', '관리자',  'hong@gmail.com', '1', default, '관리자', default);

select * from tblUser;

commit;

select * from tblUser where id = 'rkskek' and pw = '1234' and ing = 'y';

SELECT * from vwboard;
SELECT * from tblboard;

update tblBoard set readcount = readcount + 1 where seq = 1;

insert into tblBoard (seq, subject, content, regdate, readcount, id)
    values (seqBoard.nextVal, '게시판입니다.', '내용입니다.', default, default, 'rkskek');
    
select * from vwBoard where subject like '%잠만보%';

select * from (select a.*, rownum as rnum from vwBoard a) where rnum between 1 and 10;