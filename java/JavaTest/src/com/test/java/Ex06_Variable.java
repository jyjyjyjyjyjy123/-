package com.test.java;

public class Ex06_Variable {
	public static void main(String[] args) {
		//자료형 + 변수
		
		//목표 > 자료형 + 변수 + 리터럴
		
		//1. 주변의 데이터 검색 > 예)몸무게 > 저장할 변수
		//2. 형태 + 길이 > 자료형 결정 > 예)double 
		//3. 변수 생성 + 값 대입
		//4. 출력
		
		//각 자료형((값형 8가지,String) x 10회 = 90회)
		//byte -128 ~ 127
			//1
			byte age;
			age = 22;
			System.out.println("<byte>제 나이는 " + age + "입니다.");
			//2
			byte precipitation;
			precipitation = 30;
			System.out.println("<byte>현재 강수량은 " + precipitation + "% 입니다.");
			//3
			byte humidity;
			humidity = 80;
			System.out.println("<byte>현재 습도는 " + humidity + "% 입니다.");
			//4
			byte policeNumber;
			policeNumber = 112;
			System.out.println("<byte>경찰서의 전화번호는 " + policeNumber + "입니다.");
			//5
			byte fireStationNumber;
			fireStationNumber = 119;
			System.out.println("<byte>소방서의 전화번호는 " + fireStationNumber + "입니다.");
			//6
			byte keybordKey;
			keybordKey = 104;
			System.out.println("<byte>키보드 키의 수는 " + keybordKey + "개 입니다.");
			//7
			byte thisMonth;
			thisMonth = 7;
			System.out.println("<byte>현재 월은 " + thisMonth + "월 입니다.");
			//8
			byte today;
			today = 17;
			System.out.println("<byte>오늘은 " + today + "일 입니다.");
			//9
			byte computerSeat;
			computerSeat = 39;
			System.out.println("<byte>제가 앉아있는 컴퓨터 자리는 " + computerSeat + "번 입니다.");
			//10
			byte kakaoOpenPerson;
			kakaoOpenPerson = 26;
			System.out.println("<byte>카카오톡의 학원 오픈채팅 방에 접속자 수는 " + kakaoOpenPerson + "명 입니다.");
		//short -32,768 ~ 32,767
			//1
			short bookPage;
			bookPage = 450;
			System.out.println("<short>교재의 총 페이지 수는 " + bookPage + "입니다");
			//2
			short bookPrice;
			bookPrice = 27000;
			System.out.println("<short>책의 가격은 " + bookPrice + "원 입니다");
			//3
			short thisYear;
			thisYear = 2023;
			System.out.println("<short>현재 년도는 " + thisYear + "년 입니다");
			//4
			short kakaoTalkAlarm;
			kakaoTalkAlarm = 823;
			System.out.println("<short>현재 저의 카카오톡 알림 갯수는 " + kakaoTalkAlarm + "개 입니다");
			//5
			short frutipsKcal;
			frutipsKcal = 470;
			System.out.println("<short>프루팁스(젤리)의 칼로리는 " + frutipsKcal + "kcal입니다.");
			//6
			short daisoMinPrice;
			daisoMinPrice = 200;
			System.out.println("<short>다이소에서 제일 싼 것은 " + daisoMinPrice + "원의 종이봉투 입니다.");
			//7
			short blackpinkDebutDay;
			blackpinkDebutDay = 2534;
			System.out.println("<short>블랙핑크는 데뷔일로부터 " + blackpinkDebutDay + "일 되었습니다.");
			//8
			short naverPayPoint;
			naverPayPoint = 270;
			System.out.println("<short>현재 제가 가지고 있는 네이퍼페이 포인트는 " + naverPayPoint + "P 입니다.");
			//9
			short todayLunch;
			todayLunch = 9700;
			System.out.println("<short>오늘먹은 점심의 가격은 총 " + todayLunch + "원 입니다.");
			//10
			short subwayFare;
			subwayFare = 1250;
			System.out.println("<short>지하철 요금은 카드 기준 " + subwayFare + "원 입니다.");
		//int -2,147,483,648 ~ 2,147,483,647
			//1
			int koreaPopulation;
			koreaPopulation = 51740000;
			System.out.println("<int>한국의 인구 수는 2021년 기준 약" + koreaPopulation + "명 입니다");
			//2
			int koreaArea;
			koreaArea = 100210;
			System.out.println("<int>한국의 영토의 면적은 " + koreaArea + "Km² 입니다");
			//3
			int btsDynamiteView;
			btsDynamiteView = 1717533588;
			System.out.println("<int>BTS의 다이너마이트의 조회수는 " + btsDynamiteView + "회 입니다");
			//4
			int nonsense;
			nonsense = 190000;
			System.out.println("<int>세상에서 가장 쉬운 숫자는? " + nonsense + "(쉽구만)");
			//5
			int ikeaTable;
			ikeaTable = 199000;
			System.out.println("<int>제가쓰는 이케아 책상의 가격은" + ikeaTable + "원 입니다.");
			//6
			int ikeaInstagramFollower;
			ikeaInstagramFollower = 352000;
			System.out.println("<int>이케아 인스타그램의 팔로워는 약" + ikeaInstagramFollower + "명 입니다.");
			//7
			int lamborghiniUrusS;
			lamborghiniUrusS = 290000000;
			System.out.println("<int>람보르기니 우루스 S의 가격은 " + lamborghiniUrusS + "원 부터 시작입니다.");
			//8
			int samsungemployee;
			samsungemployee = 267305;
			System.out.println("<int>삼성의 직원수는 2022 기준 " + samsungemployee + "명 입니다.");
			//9
			int airpodsProPrice;
			airpodsProPrice = 359000;
			System.out.println("<int>에어팟 프로의 정가는 " + airpodsProPrice + "원 입니다.");
			//10
			int companionAnimalPopulation;
			companionAnimalPopulation = 15000000;
			System.out.println("<int>2022기준 반려동물 인구가 약" + companionAnimalPopulation + "명 입니다.");
		//long -9,223,372,036,854,775,808 ~ 9,223,372,036,854,775,807
			//1
			long brainCells;
			brainCells = 100000000000L;
			System.out.println("<long>뇌에는 약" + brainCells + "개의 신경세포가 존재 한다.");
			//2
			long synapse;
			synapse = 1000000000000000L;
			System.out.println("<long>뇌에는 약" + synapse + "개의 시냅스가 형성되어있다.");
			//3
			long worldPopulation;
			worldPopulation = 8000000000L;
			System.out.println("<long>전세계 인구는 22년도에" + worldPopulation + "명을 돌파하였다.");
			//4
			long apartment;
			apartment = 16240000000L;
			System.out.println("<long>청담동의 더펜트하우스 청담은 약" + apartment + "억 입니다.");
			//5
			long appleMarketCap;
			appleMarketCap = 4024000000000000L;
			System.out.println("<long>애플의 시가총액은 약" + appleMarketCap + "원 입니다.");
			//6
			long bigbang;
			bigbang = 13799000000L;
			System.out.println("<long>빅뱅은 대략" + bigbang + "전으로 추정됩니다.");
			//7
			long mostExpensiveWatch;
			mostExpensiveWatch = 32900000000L;
			System.out.println("<long>가장비싼 시계는 마리 앙투아네트의 브레게 그란데 컴플리키에션 으로 약" + mostExpensiveWatch + "원으로 추정됩니다.");
			//8
			long mostYoutubeView;
			mostYoutubeView = 13085139089L;
			System.out.println("<long>유튜브에서 가장 높은 조회수는 핑크퐁 상어로 약" + mostYoutubeView + "회 시청되었다.");
			//9
			long sunDistance;
			sunDistance = 150000000000L;
			System.out.println("<long>지구에서 태양까지는 거리는 약" + sunDistance + "m 다.");
			//10
			long sunAge;
			sunAge = 4567210000L;
			System.out.println("<long>태양의 나이는 약" + sunAge + "년 이다.");
		//float
			//1
			float myWeight;
			myWeight = 52.5f;
			System.out.println("<float>제 몸무게는 = " + myWeight + "kg입니다.");
			//2
			float temperature;
			temperature = 26.1f;
			System.out.println("<float>현재 서울 온도는 " + temperature + "°입니다.");
			//3
			float kosdaq;
			kosdaq = 898.29f;
			System.out.println("<float>현재 코스닥은 " + kosdaq + "입니다.");
			//4
			float jpy;
			jpy = 9.15f;
			System.out.println("<float>현재 엔화 환율은 1:" + jpy + "입니다.");
			//5
			float sunHydrogen;
			sunHydrogen = 73.46f;
			System.out.println("<float>태양의 대기조성중 수소는 " + sunHydrogen + "% 입니다.");
			//6
			float sunHelium;
			sunHelium = 24.85f;
			System.out.println("<float>태양의 대기조성중 헬륨은 " + sunHelium + "% 입니다.");
			//7
			float earthNitrogen;
			earthNitrogen = 78.08f;
			System.out.println("<float>지구의 대기조성중 질소는 " + earthNitrogen + "% 입니다.");
			//8
			float cassAlcohol;
			cassAlcohol = 4.5f;
			System.out.println("<float>카스의 알코올 도수는 " + cassAlcohol + "% 입니다.");
			//9
			float bacardiProofAlcohol;
			bacardiProofAlcohol = 75.5f;
			System.out.println("<float>카스의 알코올 도수는 " + bacardiProofAlcohol + "% 입니다.");
			//10
			float earthOxygenl;
			earthOxygenl = 20.95f;
			System.out.println("<float>지구의 대기조성중 산소는 " + earthOxygenl + "% 입니다.");
		//double
			//1
			double champernowneConstant;
			champernowneConstant = 0.12345678910111213;
			System.out.println("<double>챔퍼나운 상수는 10진수 기준" + champernowneConstant +"... 이다.");
			//2
			double wonjuyul;
			wonjuyul = 3.14159265358979;
			System.out.println("<double>원주율은 " + wonjuyul +"... 이다.");
			//3
			double infiniteDecimal;
			infiniteDecimal = 3.333333333333333;
			System.out.println("<double>10을 3으로 나누면" + infiniteDecimal +"... 이다.");
			//4
			double omegaAConstant;
			omegaAConstant = 0.5671432904097838;
			System.out.println("<double>오메가상수는 " + omegaAConstant +"... 이다.");
			//5
			double eulersNumber;
			eulersNumber = 2.718281828459045;
			System.out.println("<double>자연로그를 정의하는 상수는 " + eulersNumber +"... 이다.");
			//6
			double tau;
			tau = 6.283185307179562;
			System.out.println("<double>기존 원주율의 2배의 값을 가지는 타우는 " + tau +"... 이다.");
			//7
			double binaryNumber;
			binaryNumber = 0.1101110010111011;
			System.out.println("<double>2진법으로 이루어진 무한소수는 " + binaryNumber +"... 이있다.");
			//8
			double liouvillesConstant;
			liouvillesConstant = 0.110001000000000000000001;
			System.out.println("<double>라우빌 상수는 초월수로 " + liouvillesConstant +"... 이다.");
			//9
			double rootTwo;
			rootTwo = 1.4142135623730951;
			System.out.println("<double>최초로 증면된 무리수 루트2의 값은" + rootTwo +"... 이다.");
			//10
			double femto;
			femto = 0.000000000000001;
			System.out.println("<double>펨노는 SI단위계에서 10마이너스15를 나타내는 접두어로 십진수로 표현하면" + femto +"이다.");
		//boolean
			//1
			boolean netflixSubscribe;
			netflixSubscribe = false;
			System.out.println("<boolean>현재 넷플릭스를 구독하였는가? " + netflixSubscribe);
			//2
			boolean dinner;
			dinner = true;
			System.out.println("<boolean>저녁을 먹었는가? " + dinner);
			//3
			boolean tired;
			tired = true;
			System.out.println("<boolean>피곤한가? " + tired);
			//4
			boolean snailTeeth;
			snailTeeth = true;
			System.out.println("<boolean>달팽이는 이빨이 있는가? " + snailTeeth);
			//5
			boolean horseNose;
			horseNose = true;
			System.out.println("<boolean>말도 코를 고는가? " + horseNose);
			//6
			boolean strawberry;
			strawberry = true;
			System.out.println("<boolean>딸기는 장미과 인가? " + strawberry);
			//7
			boolean malaria;
			malaria = false;
			System.out.println("<boolean>세계적으로 가장 많이 발생하는 병은 말라리아 인가? " + malaria);
			//8
			boolean dragonSibjangsaeng;
			dragonSibjangsaeng = false;
			System.out.println("<boolean>용은 십장생의 하나인가? " + dragonSibjangsaeng);
			//9
			boolean personSweat;
			personSweat = true;
			System.out.println("<boolean>사람의 땀은 산성인가? " + personSweat);
			//10
			boolean AntarcticaZipCode;
			AntarcticaZipCode = false;
			System.out.println("<boolean>남극에도 우편번호가 있는가? " + AntarcticaZipCode);
		//char
			//1
			char mostFirstName;
			mostFirstName = '김';
			System.out.println("<char>가장많은 성씨는 " + mostFirstName + "입니다.");
			//2
			char Gim;
			Gim = '김';
			System.out.println("<char>해조류를 종이 형태로 얇고 넓게 펴서 말린 은식은 " + Gim + "입니다.");
			//3
			char numberOfEyes;
			numberOfEyes = '2';
			System.out.println("<char>눈의 개수는 " + numberOfEyes);
			//4
			char oyster;
			oyster = '굴';
			System.out.println("<char>조개의 일종으로 석화라고도 불리는 것은? " + oyster);
			//5
			char dog;
			dog = '개';
			System.out.println("<char>사람들이 가장 많이 키우는 애완동물은? " + dog);
			//6
			char goal;
			goal = '골';
			System.out.println("<char>축구에서 골대안으로 공이 들어가면? " + oyster);
			//7
			char triangleVertex;
			triangleVertex = '3';
			System.out.println("<char>삼각형의 꼭지점의 개수는? " + triangleVertex);
			//8
			char father;
			father = '父';
			System.out.println("<char>아버지는 한자로 무엇인가? " + father);
			//9
			char residentialFloor;
			residentialFloor = '2';
			System.out.println("<char>제가 살고있는 집은 " + residentialFloor + "층 입니다.");
			//10
			char academyFloor;
			academyFloor = '8';
			System.out.println("<char>학원은 " + academyFloor + "층 입니다.");
		//String
			//1
			String myName;
			myName = "이재용";
			System.out.println("<string>제 이름은 " + myName + "입니다.");
			//2
			String perfume;
			perfume = "tacit";
			System.out.println("<string>제가 쓰는 향수의 이름은 " + perfume + "입니다.");
			//3
			String residence;
			residence = "관악구";
			System.out.println("<string>제가 사는곳은 " + residence + "입니다.");
			//4
			String girlsgenerationDebutSong;
			girlsgenerationDebutSong = "다시 만난 세계";
			System.out.println("<string>소녀시대의 데뷔곡은 " + girlsgenerationDebutSong + "입니다.");
			//5
			String nowlisteningMusic;
			nowlisteningMusic = "tomorrow tonight";
			System.out.println("<string>현재 제가 듣고있는 노래는 Loote의 " + nowlisteningMusic + "입니다.");
			//6
			String favoriteChicken;
			favoriteChicken = "굽네 고추바사삭";
			System.out.println("<string>제가 좋아하는 치킨은 " + favoriteChicken + "입니다.");
			//7
			String dinnerMenu;
			dinnerMenu = "비엔나소세지";
			System.out.println("<string>제가 오늘 먹은 저녁은 " + dinnerMenu + "입니다.");			
			//8
			String myPhone;
			myPhone = "아이폰12mini";
			System.out.println("<string>제 휴대폰은 " + myPhone + "입니다.");
			//9
			String favoriteAnimal;
			favoriteAnimal = "고양이";
			System.out.println("<string>제가 좋아하는 동물은" + favoriteAnimal + "입니다.");			
			//10
			String mbti;
			mbti = "ISFP";
			System.out.println("<string>제 mbti는 " + mbti + "입니다.");
	}
}
