--16. tblAddressBook. 남자 평균 나이보다 나이가 많은 서울 태생 + 직업을 가지고 있는 사람들을 가져오시오.
SELECT
	*
FROM TBLADDRESSBOOK
	WHERE 
		GENDER = 'm' AND 
		HOMETOWN = '서울' AND 
		JOB IS NOT NULL AND
		AGE > (SELECT AVG(AGE) FROM TBLADDRESSBOOK GROUP BY GENDER HAVING GENDER ='m')
	ORDER BY AGE; 
-- employees. 'Munich' 도시에 위치한 부서에 소속된 직원들 명단?
SELECT
	*
FROM EMPLOYEES;


-- tblMan. tblWoman. 서로 짝이 있는 사람 중 남자와 여자의 정보를 모두 가져오시오.
--    [남자]        [남자키]   [남자몸무게]     [여자]    [여자키]   [여자몸무게]
--    홍길동         180       70              장도연     177        65
--    아무개         175       null            이세영     163        null
--    ..
SELECT
	NAME AS "남자 이름",
	HEIGHT AS "남자 키",
	WEIGHT AS "남자 몸무게",
	COUPLE AS "여자 이름",
	(SELECT HEIGHT FROM TBLWOMEN WHERE NAME = TBLMEN.COUPLE) AS "여자 키",
	(SELECT WEIGHT FROM TBLWOMEN WHERE NAME = TBLMEN.COUPLE) AS "여자 몸무게"
FROM TBLMEN;
	
-- tblAddressBook. 가장 많은 사람들이 가지고 있는 직업은 주로 어느 지역 태생(hometown)인가?
SELECT
	HOMETOWN,
	COUNT(*)
FROM TBLADDRESSBOOK
	WHERE JOB IN (SELECT JOB FROM TBLADDRESSBOOK GROUP BY JOB HAVING COUNT(JOB) = (SELECT MAX(COUNT(JOB)) FROM TBLADDRESSBOOK GROUP BY JOB))
	GROUP BY HOMETOWN;
-- tblAddressBook. 이메일 도메인들 중 평균 아이디 길이가 가장 긴 이메일 사이트의 도메인은 무엇인가?


            
            

-- tblAddressBook. 평균 나이가 가장 많은 출신(hometown)들이 가지고 있는 직업 중 가장 많은 직업은?






-- tblAddressBook. 남자 평균 나이보다 나이가 많은 서울 태생 + 직업을 가지고 있는 사람들을 가져오시오.






-- tblAddressBook. 가장 나이가 많으면서 가장 몸무게가 많이 나가는 사람과 같은 직업을 가지는 사람들을 가져오시오.



-- tblAddressBook.  동명이인이 여러명 있습니다. 이 중 가장 인원수가 많은 동명이인(모든 이도윤)의 명단을 가져오시오.




-- tblAddressBook. 가장 사람이 많은 직업의(332명) 세대별 비율을 구하시오.
--    [10대]       [20대]       [30대]       [40대]
--    8.7%        30.7%        28.3%        32.2%























