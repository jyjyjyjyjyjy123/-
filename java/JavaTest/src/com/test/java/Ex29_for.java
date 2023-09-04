package com.test.java;

import java.util.Scanner;

public class Ex29_for {
	public static void main(String[] args) {
		
		
		
		/*
			제어문 > 조건문
			제어문 > 반복문
			
			반복문
				- 특정 코드를 개발자가 원하는 횟수만큼 반복 제어
				- 생산성 향상 + 유지보수성 향상
			
			for문
			for (초기식; 조건식; 증감식){
				문장;
			}
		*/
		
//		m1();
//		m2();
//		m3();
//		m4();
//		m5();
//		m6();
//		m7();
//		m8();
//		m9();
//		m10();
//		m11();
		m13();
		
		
	}
	private static void m13() {
		//난수 만들기, random
		//	-임의의 수
		//1. Math 클래스 > 대중화 방법(다른 언어)
		//2. random 클래스 > 자바 방법
		//Math.random();//0~1(0.99999...)사이값
		for (int i=1; i<=10; i++) {
			System.out.println((int)(Math.random()*10)+1);//1~10
			System.out.println((int)(Math.random()*4));//0~3
			System.out.println((int)(Math.random()*4)+4);//4~7
		
			
		}
		
	}
	public static void m12() {
		//빈 리턴문
		//	- 값을 반환하는 목적이 아니라
		//	- 메소드를 중단하는 역할만 한다.
	}

	private static void m11() {
		//요구사항] 사용자 숫자 입력 > 입력받은 숫자 누적 > 입력 횟수?
		//요구사항] 홀수만 입력
		Scanner scan = new Scanner(System.in);
		int sum = 0;
		int num;
		for (;;) { //회전수를 예측하기 힘들 때 > 무한루프
			System.out.println("숫자: ");
			num = scan.nextInt();
			if (num%2==0) {
				break;
			}
			sum += num;
		}
		System.out.println(sum);
	}

	private static void m10() {
		//학교 담임 선생님 > 학생 상담 > 1번 ~ 30번
		for (int i=1; i<=30; i++) {
			if (i==10||i==15) {
				continue;
			}
			System.out.printf("%d번 학생 상담중.. \n", i);
		}
		
	}

	private static void m9() {
		//break, continue > 독립적 사용 불가 > 다른 제어문과 함께 사용
		//break > 자신이 속한 제어문을 탈출(if문 예외, 인식 불가)
		//continue > 실행 > 제어문의 시작으로 이동
		for (int i=1; i<=10; i++) {
			if (i==5) {
				//break;
				continue;
			}
			System.out.println(i);
		}
		
		
	}

	private static void m8() {
		//무한루프, Infinite Loop
		//1. 사용자 실수 > 수정
		//2. 사용자 의도 > 어떻게?
			//조건식 부분에 true나 빈칸 > 주로 빈칸
			//초기식과 증감식도 안써도됨
		for (;;) {
			System.out.println("1");
		}
		
	}

	private static void m7() {
		//요구사항] 구구단 출력
		//요구사항] 사용자가 원하는 구구단
//		Scanner scan = new Scanner(System.in);
//		System.out.println("단수: ");
//		int dan = scan.nextInt();
//		for (int i = 1; i <= 9; i++) {
//			System.out.printf("%d * %d = %2d\n", dan, i, i*dan);
//		}
//		System.out.println();
		for (int i = 1; i <= 9; i++) {
			for (int l = 1; l <= 9; l++) {
				System.out.printf("%d * %d = %2d  ", l, i, i*l);
			}
			System.out.println();
		}
		
	}

	private static void m6() {
		//요구사항] 사용자로부터 숫자 10개를 입력받아 누적
		Scanner scan = new Scanner(System.in);
		int sum = 0;
		int num;
		for (int i = 1; i <= 10; i++) {
			System.out.printf("%d번째숫자: ", i);
			num = scan.nextInt();
			sum += num;
		}
		System.out.println(sum);
		
	}

	private static void m5() {
		//요구사항 ] 1 ~ 사용자가 원하는 숫자까지의 합
		Scanner scan = new Scanner(System.in);
		System.out.println("숫자: ");
		int num = scan.nextInt();
		int sum = 0;
		//회전수는 컴파일때는 모르지만 런타임때 알수있음 > 지연된다.
		for (int i=1; i<=num; i++) {
			 sum += i;
		}
		System.out.printf("1 ~ %d = %d\n", num, sum);
		
	}

	private static void m4() {
		//요구사항] 1~10까지의 합 > 누적
		//누적하기
		//- 누적변수(반드시초기화)
		int sum = 0;
		for (int i=1; i<=10; i++) {
			sum += i;
		}
		System.out.println(sum);
		
	}

	private static void m3() {
		//반복문 > 루프변수?
		//2. 루프 변수의 역할 > 회전수 or 값
		for (int i = 1; i <= 10; i++) {
			System.out.println(i);
		}
		//수열
	}

	private static void m2() {
		//반복문 > 회전수?
		//1. 반복문의 실행 횟수를 내가 제어할 수 있는지?
		
		
	}

	private static void m1() {
		//요구사항 "안녕하세요" X 5회 출력
		//Case 1.
//		System.out.println("안녕하세요");
//		System.out.println("안녕하세요");
//		System.out.println("안녕하세요");
//		System.out.println("안녕하세요");
//		System.out.println("안녕하세요");
		//Case 2.
		//메소드로 호출 반복
		//Case 3.
		for (int i = 1; i <= 5; i++) {
			System.out.println("안녕하세요");
			//순서
			//1. int i = 1; (초기식)(for문 첫 진입시 한번만 실행)
			//2. i <= 5; (조건식)
			//3. 블럭(문장) 실행
			//4. i++ (증감식)
			//5. 조건식이 만족하지 않을때(false) 까지 2 ~ 4 반복
		}
		//초기식: 루프 변수를 초기화하는 역할
		//조건식: 루프 지속 유무 조건
		//증감식: 루프 변수에 변화를 주는 역할 > 언젠가 루프 탈출(false)
		
		
	}
}
