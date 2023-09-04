package com.test.java;

public class Ex14_Casting {
	public static void main(String[] args) {
		
		//정수형 리터럴은 int이다.
		//실수형 리터럴은 double이다.
		
		byte b1 = 10; //byte = int (작은형 = 큰형)
		short s1 = 10; // short = int (작은형 = 큰형)
		//명사적 형변화가 필요하지만 byte와 short의 범위에 맞는 상수만 들어가게 해줌 > 서비스 문법
		int n1 = 10; // int = int 
		long l1 = 10; // long = int (큰형 = 작은형)
		
		float f1 = 3.14f; //float = double (작은형 = 큰형)
		//float는 뒤에 f를 넣어 float임을 표기한다
		double f2 = 3.14d; //double = double
		
		//정수 > 실수
		int n2 = 100;	//원본
		float n3;	//복사본
		n3 = n2;	//암시적인형변화 float = int
		System.out.println(n3); //100.0 float로 바뀜
		//실수 > 정수
		int n4;	//복사본
		float n5 = 100;	//원본
		n4 = (int)n5; //명시적인 형변화 n4 = n5;는 에러가남
		System.out.println(n4);
		
		//정수와 실수간의 크기 비교는 단순하게 byte로 하는게 아닌 실제 표현 가능한 숫자의 범위로 비교
		//크기정리
			//byte < short < int < long <<< float < double
		
		//char > 겉보기는 문자, 속으론 숫자 > 프로그램 입장 > 숫자 취급
		char m1;	//원본
		short m2;	//복사본
		m1 = 'A';
		m2 = (short)m1;
		System.out.println(m2);	//65
		
		char m3;	//복사본
		short m4;	//원본
		m4 = 65;
		m3 = (char)m4;
		System.out.println(m3);	//A
		
		//char는 표현 가능한 숫자의 범위와 short간의 범위가 어긋나기 때문에 int를 이용하면 된다.
		
		int m5;
		char m6;
		m5 = 44032;
		System.out.println((char)m5);
		m6 = '가';
		System.out.println((int)m6);
		
		//값형끼리 형변환
		//값형과 참조형끼리는 형변환이 절대 불가능
		//boolean은 형변환 불가능
		//정수 > 정수
		//실수 > 실수
		//정수 > 실수
		//실수 > 정수
		//문자 > 정수 (유니코드값으로 바뀐다.)
		//정수 > 문자 (유니코드의 값에 맞는 문자로 바뀐다.)
		
		//값형 <- (형변환) -> 값형
		//값형 <- (형변환) -> 참조형
		
		String a1 = "100";
		int a2;
		a2 = Integer.parseInt(a1); //"100" > 100 으로 바뀌지만 이건 형변환이라는 표현을 안씀
		//반대의 경우
		String a3;
		int a4 = 100;
		a3 = String.valueOf(a4); //100 > "100"
		//잘 안씀 > a3 = a4 + ""; 도 가능함
		
		
		
	}

}
