package com.test.java;

public class Ex05_DataType {

	
	public static void main(String[] args) {
		
		//모든 자료형(8종류) + 변수 생성하기
		//정수 > byte, short, int, long
		byte b1;
		b1 = 100;
		System.out.println(b1);
		//b1 = 128; > 범위를 넘어감 
		//b1 = -129; > 범위를 넘어감
		b1 = Byte.MAX_VALUE;
		System.out.println(b1);
		b1 = Byte.MIN_VALUE;
		System.out.println(b1);
		
		short s1;
		s1 = 10000;
		System.out.println(s1);
		s1 = Short.MAX_VALUE;
		System.out.println(s1);
		s1 = Short.MIN_VALUE;
		System.out.println(s1);
		
		int n1;
		n1 = 1000000000;
		System.out.println(n1);
		n1 = Integer.MAX_VALUE;
		System.out.println(n1);
		n1 = Integer.MIN_VALUE;
		System.out.println(n1);
		
		long l1;
		l1 = 1000000000000000000L;
		System.out.println(l1);
		l1 = Long.MAX_VALUE;
		System.out.println(l1);
		l1 = Long.MIN_VALUE;
		System.out.println(l1);

		final byte KOR = 100;
		//KOR = 90;
		System.out.println(KOR);
		
		
		int n2;
		n2  = 10;
		
		//정수형 상수가 ing일까?
		// - 운영 체제 + cpu
		// - 운영 체제가 한번 처리하는 데이터의 양이 int 자료형이 된다.
		
		// 운영 체제
		// - 8bit 운영체제		>int	>1
		// - 16bit 운영체제	>int	>2
		// - 32bit 운영체제	>int	>4
		// - 64bit 운영체제	>int	>8byte가 아닌 4byte
		// 해당 bit 만큼 읽어들임
		
		// - 정수형 리터럴은 int
		
		//실수
		// - 실수형 리터럴은 자료형?
		float f1;
		f1 = 3.14F;
		System.out.println(f1);
		
		double d1;
		d1 = 6.28;
		System.out.println(d1);
		
		
		f1 = 123.12345678901234567890123456789012345678901234567890F;
		System.out.println(f1);
		d1 = 123.12345678901234567890123456789012345678901234567890D;
		System.out.println(d1);
		
		f1 = 123456789012345678901234567890F;
		System.out.println(f1);
		d1 = 123456789012345678901234567890D;
		System.out.println(d1);
		
		
		
		
		//정수형 > 4가지 > int(주력),long(int가 감당 못할때만)
		//실수형 > 2가지 > double(주력)
		
		
		//문자형
		char c1;
		c1 = 'A';
		
		
		//논리형
		//true, false
		
		boolean flag;
		flag = true; //논리형 상수(리터럴)
		
		
		
		
		//참조형
		// - String
		//		-문자열 > 문자들이 열을 지어있는 형태 > 문자 집합 >char가 여러개
		
		String name;
		name = "이재용";
		System.out.println(name);
		
		String nick = ""; //빈문자열, Empty String
		System.out.println(nick); 
		
		//연산자 일부
		//- 대입 연산자
		//- 산술 연산자
		
		int a1 = 10;
		int a2 = 20;
		int a3 = a1+a2;
		
		System.out.println(a3);
		
		String t1 = "홍";
		String t2 = "길동";
		String t3 = t1 + t2;
		System.out.println(t3);
		
		
		//요구사항] 숫자 2개를 연산과정과 함께 결과를 출력하시오.
		
		System.out.println(a1 + " + " + a2 + " = " + a3);
		
		
		
		
		
		
		
		
		
	}
}
