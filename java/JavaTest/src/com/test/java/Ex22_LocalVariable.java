package com.test.java;

public class Ex22_LocalVariable {
	
	//멤버 변수
	int a; 
	
	public static void main(String[] args) {
		
		//지역 변수
		int b;
		
		
		/*
			자바 변수의 종류
				1. 멤버 변수(Member Variable)
					-클래스 수업
				2. 지역 변수(Local Variable)
					- 그동안 수업한 변수
					
			지역 변수
				- 메소드내에서 선언한 변수
				- 변수의 선언 위치***
				
			지역 변수의 생명 주기, Life Cycle
				- 언제 태어나서(메모리에 생성) ~ 언제 죽는지(메모리 소멸)
				- 생성 > 변수 선언문이 실행되는 순간
				- 소멸 > 변수 선언문이 포함된 자신의 영역에서 제어가 벗어나는 순간
				
			지역 변수의 영역(space)
				-선언문이 포함된 블럭({})
		*/
		
		int c;
		
		String name = "홍길동";
		//String name = "아무개";
		
		m1();
		
		//System.out.println(age);
		
		//**지역 변수는 초기화를 하지 않으면 사용이 불가능하다.
		int num;
		
		//System.out.println(num);
	}
	public static void m2(String gender) {
		
		//매개변수 == 지역변수
		
	}
	public static void m1() {
		String name = "아무개";
		int age = 20;
		System.out.println(age);
	}
}
