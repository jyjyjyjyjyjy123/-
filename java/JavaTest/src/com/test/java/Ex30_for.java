package com.test.java;

public class Ex30_for {
	public static void main(String[] args) {
		
		//
		
//		m1();
//		m2();
//		m3();
//		m4();
		m5();
		
		//다중 반복문을 잘하기 위해선 단일 반복문을 연습
		
	}
	
	private static void m5() {
		//별찍기
		for(int i=1;i<=5;i++) {
			for(int j=1;j<=5;j++) {
				System.out.printf("*");
			}
			System.out.println();
		}
		System.out.println();
		for(int i=1;i<=5;i++) {
			for(int j=1;j<=5;j++) {
				System.out.printf("*");
			}
			System.out.println();
		}
		
	}

	private static void m4() {
		//루프 > 분기문 개입(break, continue)
		for (int i = 0; i <= 9; i++) {
			for (int j = 0; j <= 9; j++) {
				if (j==5) {
					break;	//자신이 포함된 제어문을 탈출한다.
				}
				System.out.printf("i: %d j: %d\n", i, j);
			}
		}
		
	}

	private static void m3() {
		//쌍용 교육 센터
		//	- 강의실(1강의실 ~ 6강의실)
		//	- 학생들(30명)
		
	}

	private static void m2() {
		for (int i = 1; i <= 9; i++) {
			for (int j = 2; j <= 9; j++) {
				System.out.printf("%d * %d = %2d  ", j, i, i*j);
			}
			System.out.println();
		}
	}

	public static void test() {
		//K&R > 이클립스 기본스타일
		//라인이 줄어듬
	}
	public static void test2() {
		//Allman > 		
	}

	private static void m1() {
		
		//모든 제어문끼리는 중첩이 가능하다.
		
		//중첩된 반복문
		//ctrl + shift + f (format)(자동 줄맞춤)
		//루프 변수 > i
		
		//2중 for문
		
//		for(int n=0; n<=10; n++) {
//			for(int i=0; i<=10; i++) {
//				System.out.println("실행문");
//				System.out.printf("n: %d    i: %d\n", n, i);
//			}
//		}
		for(int i=0; i<24; i++) {	//시침
			for(int j=0; j<60; j++) {	//분침
				for(int k=0; k<60; k++) {	//초침
//					System.out.println("실행문");
					System.out.printf("i: %d | j: %d | k: %d\n", i, j, k);
				}
			}
		}
		
	}
}
