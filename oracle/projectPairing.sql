DROP SEQUENCE seqpairing;
DROP TABLE projectpairing;

CREATE TABLE projectpairing (
	seq      NUMBER       PRIMARY KEY, -- 편성표 번호
	schedule DATE         NOT NULL, -- 날짜시간
	endschedule DATE         NOT NULL,  -- 끝나는시간
	channel  VARCHAR(255) NOT NULL, -- 채널
	mseq     NUMBER       NOT NULL  -- 영화 번호
);


CREATE SEQUENCE seqpairing;

INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/10/10/00', 'YY/mm/DD/HH/mi'),to_date('2023/09/10/11/00', 'YY/mm/DD/HH/mi'),'OCN',1);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/10/11/00', 'YY/mm/DD/HH/mi'),to_date('2023/09/10/12/20', 'YY/mm/DD/HH/mi'),'OCN',1);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/08/08/45', 'YY/mm/DD/HH/mi'),to_date('2023/09/08/11/20', 'YY/mm/DD/HH/mi'),'캐치온1',5);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/12/01/10', 'YY/mm/DD/HH/mi'),to_date('2023/09/12/02/19', 'YY/mm/DD/HH/mi'),'OCN MOVIE',15);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/12/02/19', 'YY/mm/DD/HH/mi'),to_date('2023/09/12/04/10', 'YY/mm/DD/HH/mi'),'OCN MOVIE',15);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/06/07/34', 'YY/mm/DD/HH/mi'),to_date('2023/09/06/08/47', 'YY/mm/DD/HH/mi'),'스크린',16);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/06/08/47', 'YY/mm/DD/HH/mi'),to_date('2023/09/06/09/54', 'YY/mm/DD/HH/mi'),'스크린',16);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/06/09/00', 'YY/mm/DD/HH/mi'),to_date('2023/09/06/10/30', 'YY/mm/DD/HH/mi'),'OCN',18);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/06/10/30', 'YY/mm/DD/HH/mi'),to_date('2023/09/06/12/00', 'YY/mm/DD/HH/mi'),'OCN',18);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/13/09/00', 'YY/mm/DD/HH/mi'),to_date('2023/09/13/10/00', 'YY/mm/DD/HH/mi'),'OCN',18);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/13/10/00', 'YY/mm/DD/HH/mi'),to_date('2023/09/13/12/00', 'YY/mm/DD/HH/mi'),'OCN',18);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/09/10/30', 'YY/mm/DD/HH/mi'),to_date('2023/09/09/11/30', 'YY/mm/DD/HH/mi'),'OCN',36);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/09/11/30', 'YY/mm/DD/HH/mi'),to_date('2023/09/09/12/50', 'YY/mm/DD/HH/mi'),'OCN',36);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/10/12/30', 'YY/mm/DD/HH/mi'),to_date('2023/09/10/01/30', 'YY/mm/DD/HH/mi'),'OCN',36);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/10/01/30', 'YY/mm/DD/HH/mi'),to_date('2023/09/10/02/50', 'YY/mm/DD/HH/mi'),'OCN',36);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/09/11/30', 'YY/mm/DD/HH/mi'),to_date('2023/09/10/12/20', 'YY/mm/DD/HH/mi'),'OCN MOVIE',41);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/10/12/20', 'YY/mm/DD/HH/mi'),to_date('2023/09/10/01/40', 'YY/mm/DD/HH/mi'),'OCN MOVIE',41);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/10/09/00', 'YY/mm/DD/HH/mi'),to_date('2023/09/10/09/50', 'YY/mm/DD/HH/mi'),'OCN MOVIE',41);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/10/09/50', 'YY/mm/DD/HH/mi'),to_date('2023/09/10/11/20', 'YY/mm/DD/HH/mi'),'OCN MOVIE',41);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/10/02/50', 'YY/mm/DD/HH/mi'),to_date('2023/09/10/03/40', 'YY/mm/DD/HH/mi'),'OCN',44);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/10/03/40', 'YY/mm/DD/HH/mi'),to_date('2023/09/10/05/00', 'YY/mm/DD/HH/mi'),'OCN',44);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/12/07/30', 'YY/mm/DD/HH/mi'),to_date('2023/09/12/08/30', 'YY/mm/DD/HH/mi'),'OCN',50);
INSERT INTO projectpairing VALUES (seqpairing.nextVal,to_date('2023/09/12/08/30', 'YY/mm/DD/HH/mi'),to_date('2023/09/12/10/00', 'YY/mm/DD/HH/mi'),'OCN',50);

SELECT * FROM projectpairing;
COMMIT;