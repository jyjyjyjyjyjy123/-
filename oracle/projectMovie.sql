DROP TABLE projectMovie;
DROP SEQUENCE seqMovie;
CREATE TABLE projectMovie (
	seq         NUMBER       PRIMARY KEY, -- 영화 번호
	title       VARCHAR(255) NOT NULL, -- 제목
	runningtime NUMBER       NOT NULL, -- 러닝타임
	audience    NUMBER       NOT NULL, -- 누적관객수
	rate        NUMBER       NOT NULL, -- 평점
	releasedate DATE         NOT NULL, -- 개봉일
	cookie      NUMBER       NOT NULL, -- 쿠키 개수
	award       VARCHAR(255) NULL      -- 수상내역
);

CREATE SEQUENCE seqMovie;

INSERT INTO projectMovie VALUES (seqmovie.nextVal,'범죄도시2',106,12693415,8.0,'2022-05-18',0,'42회 황금촬영상(2022)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'탑건: 매버릭',130,8197326,9.3,'2022-06-22',0,'31회 MTV 영화 & TV 상(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'아바타: 물의 길',192,10805065,7.8,'2022-12-14',0,'95회 아카데미시상식(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'한산: 용의 출현',130,7265209,8.5,'2022-07-27',0,'	59회 백상예술대상(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'공조2: 인터내셔날',129,6982940,7.4,'2022-09-7',1,'58회 대종상영화제(2022)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'닥터 스트레인지: 대혼돈의 멀티버스',126,5884595,6.7,'2022-05-04',2,'31회 MTV 영화 & TV 상(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'헌트',125,4352513,8.8,'2022-08-10',0,'59회 백상예술대상(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'올빼미',118,3329634,8.8,'2022-11-23',0,'59회 백상예술대상(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'쥬라기 월드: 도미니언',147,2837413,6.0,'2022-06-01',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'마녀(魔女) Part2. The Other One',137,2806501,5.9,'2022-06-15',1,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'토르: 러브 앤 썬더',119,2716306,5.0,'2022-07-06',2,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'미니언즈2',87,2269033,6.6,'2022-07-20',1,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'블랙 팬서: 와칸다 포에버',161,2105988,5.7,'2022-11-09',1,'95회 아카데미시상식(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'비상선언',140,2058869,6.2,'2022-08-03',0,'16회 아시아필름어워즈(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'스파이더맨: 노 웨이 홈',148,7551990,6.7,'2021-12-15',2,'30회 MTV 영화 & TV 상(2022)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'육사오(6/45)',113,1981014,8.1,'2022-08-24',1,'59회 백상예술대상(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'헤어질 결심',138,1898785,7.7,'2022-06-29',0,'59회 백상예술대상(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'외계+인 1부',142,1539364,7.1,'2022-07-20',1,'	42회 황금촬영상(2022)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'영웅',120,3273771,9.2,'2022-12-21',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'해적: 도깨비 깃발',125,1339242,5.4,'2022-01-26',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'브로커',129,1261131,6.0,'2022-06-08',0,'16회 아시아필름어워즈(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'신비한 동물들과 덤블도어의 비밀',142,1195443,6.1,'2022-04-13',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'인생은 아름다워',122,1172016,8.9,'2022-09-28',0,'58회 대종상영화제(2022)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'더 배트맨',176,906659,6.5,'2022-03-01',1,'21회 워싱턴비평가협회상(2022)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'데시벨',110,901426,6.5,'2022-11-16',1,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'정직한 후보2',107,899899,3.4,'2022-09-28',1,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'씽2게더',110,885578,8.8,'2022-01-05',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'극장판 짱구는 못말려: 수수께끼! 꽃피는 천하떡잎학교',104,837647,8.5,'2022-09-28',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'블랙 아담',125,779489,6.7,'2022-10-19',1,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'킹메이커',123,783567,8.2,'2022-01-26',0,'42회 황금촬영상(2022)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'자백 ',105,738122,7.5,'2022-10-26',0,'42회 판타스포르토국제영화제(2022)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'언차티드',116,730847,6.3,'2022-02-16',2,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'경관의 피',119,684667,6.5,'2022-01-05',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'오늘 밤, 세계에서 이 사랑이 사라진다 해도',121,1100695,7.0,'2022-11-30',0,'6회 일본아카데미상(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'극장판 주술회전 0',105,664565,7.4,'2022-02-17',1,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'압꾸정',112,608639,4.6,'2022-11-30',1,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'극장판 포켓몬스터DP: 기라티나와 하늘의 꽃다발 쉐이미',96,581223,8.1,'2022-06-01',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'이상한 나라의 수학자',117,534291,8.4,'2022-03-09',0,'21회 피렌체 한국영화제(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'명탐정 코난: 할로윈의 신부',110,490869,8.3,'2022-07-13',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'동감',114,490145,5.9,'2022-11-16',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'모비우스',104,475928,6.2,'2022-03-30',2,'43회 골든라즈베리시상식(2023)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'늑대사냥',121,458720,6.1,'2022-09-21',0,'55회 시체스국제판타스틱영화제(2022)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'뽀로로 극장판 드래곤캐슬 대모험',70,450934,7.8,'2022-07-28',0,'26회 부천국제판타스틱영화제(2022)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'특송',108,444417,6.9,'2022-01-12',0,'42회 황금촬영상(2022)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'니 부모 얼굴이 보고 싶다',111,416524,7.0,'2022-04-27',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'놉',130,416048,6.0,'2022-08-17',0,'88회 뉴욕비평가협회상(2022)');
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'리멤버',128,412836,9.1,'2022-10-26',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'킹스맨: 퍼스트 에이전트',131,1029365,7.0,'2021-12-22',1,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'배드 가이즈',100,400329,8.0,'2022-05-04',0,NULL);
INSERT INTO projectMovie VALUES (seqmovie.nextVal,'뜨거운 피',120,398105,6.2,'2022-03-23',0,'58회 백상예술대상(2022)');

SELECT * FROM projectmovie;