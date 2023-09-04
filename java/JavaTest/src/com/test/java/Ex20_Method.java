package com.test.java;

import java.util.Scanner;

public class Ex20_Method {
	public static void main(String[] args) {
		
		//메소드 인자 리스트
			//파라미터(Parameter)
			//인자(Arguments)
			//매개변수
		
		//요구사항] '홍길동'에게 인사를 하는 메소드를 구현하시오.
		//추가사항] '아무개'에게 인사를 하는 메소드를 구현하시오.
		//추가사항] '하하하'에게 인사를 하는 메소드를 구현하시오.
//		hello();
//		hello2();
//		hello3();
		
//		Scanner scan = new Scanner(System.in);
//		System.out.print("이름 : ");
//		helloEveryOne(scan.nextLine());
		checkAge(20);
		checkAge(15);
		checkScore("홍길동", 100, 90, 80);
		checkScore("아무개", 70, 60, 50);
		checkScore("하하하", 40, 30, 20);
		//실인자 -> 가인자
	}
	public static void hello() {
		System.out.println("홍길동님 안녕하세요.");
	}
	public static void hello2() {
		System.out.println("아무개님 안녕하세요.");
	}
	public static void hello3() {
		System.out.println("하하하님 안녕하세요.");
	}
	public static void helloEveryOne(String name) {
		System.out.println(name + "님 안녕하세요.");
	}
	public static void checkAge(int age) {
		String result = age >= 19 ? "성인" : "미성년자";
		System.out.printf("%d살은 %s입니다.\n", age, result);
	}
	public static void checkScore(String name, int kor, int eng, int math) {
		//총점 250 > 합격
		int total = kor + eng + math;
		String result = total >= 250 ? "합격" : "불합격";
		System.out.printf("%s학생 : %d점 = %s\n",name,  total, result);
	}
}
