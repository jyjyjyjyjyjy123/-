package com.test.java;

import java.util.Scanner;

public class Ex16_Operator {
	public static void main(String[] args) {
		
		/*
			비교 연산자
				>, >=, <=, < , =(equals)=, !=(not equals)
				2항 연산자
				피연산자들의 우위(동등) 비교하는 연산자
				피연산자는 숫자형을 가진다
				연산의 결과가 항상 boolean이다.
		*/
		
		int a = 10;
		int b = 3;
		System.out.printf("%d > %d = %b\n", a, b, a > b);
		System.out.printf("%d >= %d = %b\n", a, b, a >= b);
		System.out.printf("%d < %d = %b\n", a, b, a < b);
		System.out.printf("%d <= %d = %b\n", a, b, a <= b);
		System.out.printf("%d == %d = %b\n", a, b, a == b);
		System.out.printf("%d != %d = %b\n", a, b, a != b);
		System.out.println();
		//요구사항] 사용자 나이 입력 > 19세 이상 통과, 미만 거절
//		Scanner scan = new Scanner(System.in);
//		System.out.print("나이 입력 : ");
//		int age = scan.nextInt();
//		System.out.println(age >= 19);
//		System.out.println();
		
//		System.out.println('A' == 'A');
//		System.out.println('A' == 'a');
		//비교 연산자의 모든 값형은 안전하지만 문자열의 비교는 주의 해야함!
		String s1 = "홍길동";
		String s2 = "홍길동";
		String s3 = "아무개";
		String s4 = "홍";
		s4 = s4 + "길동";
		System.out.println(s4);
		System.out.println(s1 == s2);
		System.out.println(s1 == s3);
		System.out.println(s1 == s4); //예상결과 : true, 실제결과 : false
		//***문자열의 비교는 ==, != 연산자를 사용하면 절대 안됨***
		//문자열 비교는 Equlas() 메소드를 사용한다.
		System.out.println(s1.equals(s4)); //s1 == s4
		
		
		
		
		
		
		
	}

}
