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


select * from tblComment;

insert into tblComment (seq, content, regdate, id, bseq) values (seqComment.nextVal, '뭐먹지', default, 'rkskek', 292);




select * from tblMarker;

insert into tblMarker (seq, lat, lng) values (seqMarker.nextval, 37.49934, 127.0333);

select * from tblplace;

insert into tblPlace (seq, lat, lng, name, category) values ((select max(SEQ) from tblplace)+1, 37.49934, 127.0333, '개인', '쌍용');

select * from tbldispense;
select * from tblregister;
commit;

delete tblregister where mediseq = 412;

insert into tbl (seq, lat, lng, name, category) values (seqPlace.nextVal, 37.49934, 127.0333, '개인', '쌍용');

select t.dispenseseq,t.pharmacyid,t.pickupway,t.regdate,t.dispensestatus from tbldispense t;

insert into tbldispense (dispenseseq, pharmacyid, pickupway, regdate, dispensestatus) values ((select max(dispenseseq) from tbldispense)+1, 'sla0623', '방문수령', TO_DATE('2023-11-13 12:10:00', 'YYYY-MM-DD:HH24:MI:SS'), '예약대기중');

select max(tblregister.mediseq) from tblregister;

