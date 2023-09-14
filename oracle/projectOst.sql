DROP TABLE projectost;
DROP SEQUENCE seqost;

CREATE TABLE projectost (
	seq    NUMBER       PRIMARY KEY, -- OST 분류
	title  VARCHAR(255) NOT NULL, -- 제목
	mseq   NUMBER       NOT NULL  -- 영화 번호
);

CREATE SEQUENCE seqost;

INSERT INTO projectost VALUES (seqost.nextVal,'탑건 : 매버릭 (Top Gun: Maverick) (영화 OST)',2);
INSERT INTO projectost VALUES (seqost.nextVal,'Avatar: The Way of Water (Original Motion Picture Soundtrack)',3);
INSERT INTO projectost VALUES (seqost.nextVal,'공조2: 인터내셔날',5);
INSERT INTO projectost VALUES (seqost.nextVal,'Doctor Strange in the Multiverse of Madness (Original Motion Picture Soundtrack)',6);
INSERT INTO projectost VALUES (seqost.nextVal,'올빼미 OST',8);
INSERT INTO projectost VALUES (seqost.nextVal,'Thor: Love and Thunder (Original Motion Picture Soundtrack)',11);
INSERT INTO projectost VALUES (seqost.nextVal,'Minions: The Rise Of Gru (Original Motion Picture Soundtrack)',12);
INSERT INTO projectost VALUES (seqost.nextVal,'Black Panther: Wakanda Forever (Original Score)',13);
INSERT INTO projectost VALUES (seqost.nextVal,'Spider-Man: No Way Home (Original Motion Picture Soundtrack) 영화 <스파이더맨: 노 웨이 홈> OST',15);
INSERT INTO projectost VALUES (seqost.nextVal,'영웅',19);
INSERT INTO projectost VALUES (seqost.nextVal,'브로커',21);
INSERT INTO projectost VALUES (seqost.nextVal,'Fantastic Beasts: The Secrets of Dumbledore (Original Motion Picture Soundtrack)',22);
INSERT INTO projectost VALUES (seqost.nextVal,'인생은 아름다워 OST',23);
INSERT INTO projectost VALUES (seqost.nextVal,'The Batman (Original Motion Picture Soundtrack)',24);
INSERT INTO projectost VALUES (seqost.nextVal,'데시벨 OST',25);
INSERT INTO projectost VALUES (seqost.nextVal,'항해 (데시벨 OST X 차은우)',25);
INSERT INTO projectost VALUES (seqost.nextVal,'정직한 후보 2 OST',26);
INSERT INTO projectost VALUES (seqost.nextVal,'Sing 2 (Original Motion Picture Soundtrack)',27);
INSERT INTO projectost VALUES (seqost.nextVal,'Black Adam (Original Motion Picture Soundtrack)',29);
INSERT INTO projectost VALUES (seqost.nextVal,'킹메이커 OST',30);
INSERT INTO projectost VALUES (seqost.nextVal,'Uncharted (Original Motion Picture Soundtrack)',32);
INSERT INTO projectost VALUES (seqost.nextVal,'오늘 밤, 세계에서 이 사랑이 사라진다 해도 (今夜、世界からこの恋が消えても) Original Soundtrack',34);
INSERT INTO projectost VALUES (seqost.nextVal,'이상한 나라의 수학자',38);
INSERT INTO projectost VALUES (seqost.nextVal,'고백 (영화 동감 X 츄 (이달의 소녀))',40);
INSERT INTO projectost VALUES (seqost.nextVal,'습관 (Bye Bye) (영화 동감 X meenoi (미노이))',40);
INSERT INTO projectost VALUES (seqost.nextVal,'개똥벌레 (영화 동감 X 이무진)',40);
INSERT INTO projectost VALUES (seqost.nextVal,'너에게로 가는 길 (영화 동감 X 엔플라잉 (N.Flying))',40);
INSERT INTO projectost VALUES (seqost.nextVal,'늘 지금처럼 (영화 동감 X VIVIZ (비비지))',40);
INSERT INTO projectost VALUES (seqost.nextVal,'편지 (영화 동감 X 윤하 (YOUNHA))',40);
INSERT INTO projectost VALUES (seqost.nextVal,'너를 위해 (영화 동감 X 황치열)',40);
INSERT INTO projectost VALUES (seqost.nextVal,'Morbius (Original Motion Picture Soundtrack)',41);
INSERT INTO projectost VALUES (seqost.nextVal,'늑대사냥 OST',42);
INSERT INTO projectost VALUES (seqost.nextVal,'뽀로로 극장판 드래곤캐슬 대모험 OST',43);
INSERT INTO projectost VALUES (seqost.nextVal,'특송 OST',44);
INSERT INTO projectost VALUES (seqost.nextVal,'리멤버 OST',47);
INSERT INTO projectost VALUES (seqost.nextVal,'The Kings Man (Original Motion Picture Soundtrack)',48);
INSERT INTO projectost VALUES (seqost.nextVal,'뜨거운 피 OST',50);


SELECT * FROM projectost;
COMMIT;
