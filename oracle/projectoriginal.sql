CREATE table projectoriginal (
	seq    NUMBER       NOT NULL, -- 원작번호
	name   VARCHAR(255) NOT NULL, -- 제목
	author VARCHAR(255) NOT NULL, -- 저자
	mseq   NUMBER       NOT NULL REFERENCES projectmovie(seq)  -- 영화 번호
);

CREATE SEQUENCE seqoriginal;

INSERT INTO projectoriginal VALUES (seqoriginal.nextval,'신비한 동물들과 덤블도어의 비밀,도서','JK롤링',22);
INSERT INTO projectoriginal VALUES (seqoriginal.nextval,'경관의 피(블랙 앤 화이트 60)','사사키 조',33);
INSERT INTO projectoriginal VALUES (seqoriginal.nextval,'오늘 밤, 세계에서 이 사랑이 사라진다 해도,도서','이치조 미사키',34);
INSERT INTO projectoriginal VALUES (seqoriginal.nextval,'50,뜨거운 피','김언수',50);


SELECT * FROM projectoriginal;
COMMIT;