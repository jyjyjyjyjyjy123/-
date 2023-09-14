DROP TABLE projectmoviedirector;
DROP SEQUENCE seqmoviedirector;
CREATE TABLE projectmoviedirector (
	seq  NUMBER PRIMARY KEY, -- 번호
	dseq NUMBER NOT NULL REFERENCES projectDirector(seq), -- 감독 번호
	mseq NUMBER NOT NULL REFERENCES projectMovie(seq) -- 영화 번호
);


CREATE SEQUENCE seqmoviedirector;

INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,1,1);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,2,2);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,3,3);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,4,4);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,5,5);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,6,6);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,7,7);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,8,8);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,9,9);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,10,10);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,11,11);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,12,12);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,13,13);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,14,14);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,15,15);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,16,16);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,17,17);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,18,18);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,19,19);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,20,20);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,21,21);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,22,22);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,23,23);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,24,24);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,25,25);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,26,26);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,27,27);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,28,28);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,29,29);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,30,30);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,31,31);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,32,32);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,33,33);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,34,34);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,35,35);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,36,36);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,37,37);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,38,38);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,39,39);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,40,40);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,41,41);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,42,42);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,43,43);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,44,43);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,45,44);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,46,45);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,47,46);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,48,47);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,49,48);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,50,49);
INSERT INTO projectmoviedirector VALUES (seqmoviedirector.nextval,51,50);

SELECT * FROM projectmoviedirector;
COMMIT;
