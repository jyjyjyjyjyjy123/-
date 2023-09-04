package com.test.java;

public class Ex09_Output {

	public static void main(String[] args) {
		
		/*
			CLI > Command Line Interface > 텍스트 기반 명령 입출력 환경
			GUI > Graphic User Interface > 화면 기반 입출력 환경
		 
		 	콘솔 입출력, Console Input Output 
		 		기본 입력 장치 : 키보드 
		 		기본 출력 장치 : 모니터
		 		
		 	콘솔 출력
		 		클래스.필드.메소드(인자)
		 		1. System.out.println(값)
		 			println 메소드
		 			print line
		 			값을 줄단위로 출력한다. (값을 출력하고 Enter를 침)
		 			값에 빈칸을 넣으면 
		 		2. System.out.print(값)
		 			print 메소드
		 			print
		 			값을 출력한다.
		 		3. System.out.printf(값)
		 			printf 메소드
		 			print format
		 			편리, 가독성
		 			형식 문자를 제공
		 				1. %s > String
						2. %d > Decimal(모든 정수 > byte, short, int, long)
						3. %f > Float(모든 실수 > float, double)
						4. %c > Char
						5. %b > Boolean
		 				형식문자는 > 확장 기능
		 					1. %숫자s, %숫자d 와 같이 사이에 숫자를 넣어 출력할 너비를 지정한다.(Tap 문자와 유사한 역할)
		 						해당 숫자안에서 데이터를 출력 >양수와 음수를 넣을수 있으며 양수는 우측 정렬 음수는 좌측 정렬
		 						예) printf("[%5d][%-5d]", 123, 123); > [  123][123  ]  
		 					2. %.숫자f 위와 같으나f의 경우 숫자 앞에 .을 찍어 소수점 이하 자릿수를 지정한다. 
		 						예) printf("%.1f",3.15); > 3.1  
		 					3. %,d, %,f 사이에 ,를 찍어 자릿수 표기(3자리)를 한다.
		 						printf("%,d",123456789) > 123,456,789
		 					순서는 , 숫자 .숫자 순 예)printf("[%,20.2f]\n",num3);
		 					,도 %숫자 너비안에 포함
		 					
		 						
		 
		*/
		//println 
		System.out.println(10);
		System.out.println(3.14);
		System.out.println('A');
		//print
		System.out.print(10);
		System.out.print(3.14);
		System.out.print('A');
		
		System.out.println();
		
		//성적표 출력하기 
		String name1 = "홍길동";
		int kor1 =100;
		int eng1 =90;
		int math1 =80;
		String name2 = "아무개";
		int kor2 =85;
		int eng2 =75;
		int math2 =89;
		System.out.println("==============================");
		System.out.println("             성적표             ");
		System.out.println("==============================");
		System.out.println("[이름]\t[국어]\t[영어]\t[수학]");
		System.out.print(name1+"\t"+kor1+"\t"+eng1+"\t"+math1+"\n");
		System.out.println(name2+"\t"+kor2+"\t"+eng2+"\t"+math2);
		System.out.println();
		
		//printf
		//요구사항] "안녕하세요. 홍길동님" 문장을 출력하시오.
		String name = "홍길동";
		System.out.println("안녕하세요. " + name + "님"); //println 사용시
		System.out.printf("안녕하세요. %s님\n", name);
		//요구사항] "안녕하세요. 홍길동님, 안녕히 가세요. 홍길동님"
		System.out.println("안녕하세요. " + name + "님, 안녕히 가세요. " + name + "님"); //println 사용시	
		System.out.printf("안녕하세요. %s님, 안녕히 가세요. %s님\n", name, name);
		//형식문자
			//1. %s > String
			//2. %d > Decimal(모든 정수 > byte, short, int, long)
			//3. %f > Float(모든 실수 > float, double)
			//4. %c > Char
			//5. %b > Boolean
		
		System.out.printf("저는 %s입니다. 나이는 %d살이고, 키는 %fcm입니다. 혈액형은 %c형입니다. %b\n"
							, "홍길동", 20, 175.3, 'O', true);
		
		//요구사항] 천단위 + 소수이하 2자리 + 전체너비(20자리 + 우측정렬)
		double num3 = 1234567.89012345;
		
		System.out.printf("[%,20.2f]\n",num3);
		
		
		//카페 메뉴판 출력 > 열 정렬!! > \t + 형식문자
		System.out.println("=======================");
		System.out.println("    음료가격(단위 : 원)");
		System.out.println("=======================");
		
		System.out.printf("콜라 :\t\t %,6d\n",2500);
		System.out.printf("사이다 :\t\t %,6d\n",3500);
		System.out.printf("라떼 :\t\t %,6d\n",500);
		System.out.printf("아메리카노 :\t %,6d\n",15000);
		
	}
}
