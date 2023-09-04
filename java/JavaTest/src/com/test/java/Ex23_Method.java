package com.test.java;

public class Ex23_Method {
	public static void main(String[] args) {
		
		/*
			메소드 오버로딩, Method Overloading
				같은 이름의 메소드를 여러개 만드는 기술
				메소드의 인자 리스트를 다양한 형태로구성해서, 같은 이름의 메소드를 여러개 만드는 기술
			메소드 오버로딩 이유?
				- 성능 향상? > X
				- 개발자에게 도움 > O
				- 메소드의 이름을 여러개 외우지 않아도 되게끔 하나로 통일
			메소드 오버로딩 구현 조건 가능 
				1. 매개 변수의 개수
				2. 매개 변수의 자료형 메소드
			오버로딩 구현 조건 불가능 
				1. 매개변수의 이름 
				2. 반환값의 자료형
			메소드를 여러개 선언할 예정
				1. public static void test(){} 		//생성됨
				2. public static void test(){} 		//생성안됨
				3. public static void test(int n){} //생성됨
				4. public static void test(int m){} //생성안됨
				5. public static void test(String s){} //생성됨
				6. public static void test(int n, int m){} //생성됨
				7. public static int test(){} //생성안됨
				
			메소드를 호출해보는 것이 가장 좋은 검증방법
		*/
		drawLine();
		drawLine("*");
		
		
		System.out.println(100);
		System.out.println("문자열");
		
	}
	public static void println(int num){
		
	}
	public static void test(){
		
	}
	public static void test(int n){
		
	}
	//요구사항] 선을 그리는 메소드를 선언하시오.
	public static void drawLine() {
		System.out.println("=========================");
	}
//	public static void drawLine() {
//		System.out.println("*************************");
//	}
	
	//메소드 오버로딩
	public static void drawLine(String s) {
		System.out.print(s);
		
	}
	
}
