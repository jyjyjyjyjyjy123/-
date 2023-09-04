package com.test.java;

import java.util.Scanner;

public class Ex28_switch {
	public static void main(String[] args) {
		/*
			switch문 (switch case문)
				- 조건이 boolean이 아닌 일반 값이다. > 정수, 문자열, 열거형(enum)
				- if문보다 활용도가 떨어진다.
				- if문보다 가독성이 높다.
				- switch (조건) {
					case 값:
						문장;
						break;
					[case 값:
						문장;
						break;] x N
					[default: 
						문장;
						break;]
				}
		*/
//		m1();
//		m2();
//		m3();
		m4();
		
		
		
	}

	private static void m4() {
		Scanner scan = new Scanner(System.in);
		//nextLine() vs 나머지()
		//- nextLine()
		//	- 입력된 버퍼에서 개행문자를 만나기 전까지 읽기
		//	- 위의 개행문자를 버퍼에서 제거한다.
		//- 나머지 nextXXX()
		//	- 입력된 버퍼에서 개행문자를 만나기 전까지 읽기
		//	- 위의 개행문자를 버퍼에서 제거하지 않는다.
		//1. 문자열 입력
		//2. 숫자 입력
		System.out.print("문자열: ");
		String txt = scan.nextLine();
		System.out.println(txt);
		System.out.print("숫자: ");
		int num = scan.nextInt();
		System.out.println(num);
		System.out.println("종료");
		
	}

	private static void m3() {
		//요구사항] 사용자가 월을 입력 > 해당월의 마지막 일?
		Scanner scan = new Scanner(System.in);
		int lastDay = 0;
		System.out.print("월: ");
		int month = scan.nextInt();
		switch (month) {
		case 1:	case 3:	case 5:	case 7:	case 8:	case 10: case 12:
			lastDay = 31;
			break;
		case 2:
			lastDay = 28;
			break;
		case 4: case 6: case 9: case 11:
			lastDay = 30;
			break;
		}
		System.out.printf("입력하신 %d월의 마지막 날짜는 %d일입니다.", month, lastDay);
		
	}

	private static void m2() {
		//요구사항] 자판기
		//	-메뉴 출력 > 음료 선택 > 가격 출력
		
		Scanner scan = new Scanner(System.in);
		System.out.println("==========");
		System.out.println("   자판기");
		System.out.println("==========");
		System.out.println("1. 콜라");
		System.out.println("2. 사이다");
		System.out.println("3. 박카스");
		System.out.println("==========");
		System.out.print("선택(번호입력): ");
		int input = scan.nextInt();
		//값: > Label(표지판)
		switch (input) {
		case 1 :
		case 2 :
			System.out.println("1500원입니다.");
			break;
		case 3 :
			System.out.println("500원입니다.");
			break;
		default :
			System.out.println("잘못된 선택입니다.");
			break;
		}
		
		
		
	}

	private static void m1() {
		Scanner scan = new Scanner(System.in);
		System.out.print("숫자: ");
		int num = scan.nextInt();
		switch (num) {
		case 1:
			System.out.println("하나");
			break;
		case 2:
			System.out.println("둘");
			break;
		case 3: 
			System.out.println("셋");
			break;
		}
	}
}
