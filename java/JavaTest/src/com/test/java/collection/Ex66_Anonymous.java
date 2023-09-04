package com.test.java.collection;

public class Ex66_Anonymous {
	public static void main(String[] args) {
		/*
			익명 객체, Anonymous Object
			- 익명 클래스, Anonymous Class
		 */
		
		
		//요구사항] 인터페이스를 구현한 클래스 선언 > 객체 생성
		//1. 본인 타입으로 참조 변수 만들기
		BBB b1 = new BBB();
		b1.aaa();
		System.out.println();
		//2. 부모 타입(인터페이스)로 참조 변수 만들기 
		AAA b2 = new BBB();
		b2.aaa();
		System.out.println();
		//3.
//		AAA b3 = new AAA(); //구현부가 없음
//		b3.aaa();
		//익명 클래스
		AAA b3 = new AAA() {

			@Override
			public void aaa() {
				System.out.println("aaa");
			}
			
		};
		b3.aaa();
		//b2 vs b3
		//b2
		//- AAA 인터페이스 선언
		//- BBB 클래스 구현
		//b3 
		//- 실명 클래스 구현(x) > 익명 클래스 구현(o)
		
		//익명 클래스를 구현 > 클래스의 재사용성 때문
		//익명 클래스 > 재사용 의사 없음
		//실명 클래스 > 재사용 의사 있음
		
		//클래스 사용 목적 > 객체 생성
		Test t1 = new Test();
		Test t2 = new Test();
		Test t3 = new Test();
		
		//익명 클래스 > 붕어빵틀은 맞는데 > 붕어빵을 딱 1개만 만들기위한 틀
		AAA t4 = new AAA() {
			
			@Override
			public void aaa() {	
			}
			
		};
		//생김새는 같지만 위와 아래는 별도의 클래스다.
		AAA t5 = new AAA() {

			@Override
			public void aaa() {
			}
			
		};
		
		
	}
	
}

class Test {
	public int a;
	public int b;
	public void ccc() {
		
	}
}

interface AAA{
	
	void aaa();
}

class BBB implements AAA {
	@Override
	public void aaa() {
		System.out.println("aaa");
		
	}
}




























