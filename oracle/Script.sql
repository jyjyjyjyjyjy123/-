SELECT * FROM EMPLOYEES e ;

SELECT * FROM TBLTODO t ;
INSERT INTO TBLTODO (seq, title, adddate, completedate)
	VALUES(24, 'CSS 복습하기', sysdate, null);
	
COMMIT;

SELECT * FROM TBLADDRESSBOOK t ;
SELECT * FROM TBLADDRESSBOOK ;