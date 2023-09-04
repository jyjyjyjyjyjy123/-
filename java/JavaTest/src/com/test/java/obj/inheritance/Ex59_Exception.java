package com.test.java.obj.inheritance;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.Buffer;
import java.util.Scanner;

public class Ex59_Exception {
	public static void main(String[] args) {
		/*
		 
		 예외, Exception
		 - 런타임 오류
		 - 컴파일 발견(X) > 실행 중 발견(p)
		 - 개발자 미리 예측(o) or dPcmr(x)
		 
		 예외 처리, Exception Handling
		 1. 전통적인 방식
		 	- 제어문 사용(조건문)
		 2. 전용 방식
		 	try catch finally등 사용
		*/
//		m1();
//		m2();
//		m3();
//		try {
//			m4();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		m6();
		
		try {
			int num = 0;
			System.out.println(100/num);
		} catch (Exception e) {
		}
		try {
			
		} catch (Exception e) {
			System.out.println("at Ex59_Exception.main");
			e.printStackTrace();
		}
		
		
	}
	private static void m6() {
		//예외 던지기
		//요구사항] 숫자 입력 > 처리
		//조건] 반드시 짝수만 입력
		//홀수 입력시 > 에러 처리
		
		int num = 0;
		if (num % 2 ==0) {
			System.out.println("업무 진행..");
		}else {
			System.out.println("예외 처리");
		}
		//try로 구현
		try {
			if (num % 2 == 1) {
				throw new Exception("홀수 입력");//강제로 에러 발생
			}
			System.out.println("업무 진행..");			
		} catch (Exception e) {
			System.out.println("예외 처리");
			System.out.println(e.getMessage());

		}
		
		
	}
	private static void m4() throws Exception{
		//예외 미루기
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		//Unhandled exception type IOException
		String input = reader.readLine();			
//		try {
//			String input = reader.readLine();			
//		} catch (Exception e) {
//			
//		}
	}
	
	private static void m3() {
		try {
			//0으로 나누기 
			int num = 0;
			System.out.println(100/num);
			//배열 첨자 
			int[] nums= new int[3];
			nums[5] = 10;
			//널참조
			Scanner scan = null;
			scan.nextLine();
		} catch (ArithmeticException e) {
			System.out.println("0으로 나누기");
		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("배열 첨자");
		} catch (NullPointerException e) {
			System.out.println("널참조");
		} catch (Exception e) {
			System.out.println("예외처리");
		}
		
	}
	private static void m2() {
		int num = 10;
		try {
			System.out.println(100/num);
		} catch (Exception e) {
			System.out.println("예외 처리");
		} finally {
			//? > 마무리 영역 > 무조건 실행되는 블럭 > 뒷수습
			//- 예외와 상관없이 항상 실행해야 하는 코드 블럭
			System.out.println("마지막");
		}
	}
	private static void m1() {
		Scanner scan = new Scanner(System.in);
		System.out.print("숫자: ");
		int num = scan.nextInt();
		//예외 처리 > 전통적인 방식
		
		//권장
		if (num != 0) {
			//비지니스 코드(=업무 코드) > 원래 목적
			System.out.printf("100/%d = %d\n",num, 100/num);		
		}else {
			//예외 처리 코드
			System.out.println("0을 입력하면 안됩니다.");
		}
		//비권장 > 가독성
//		if (num == 0) {
//			//예외 처리 코드
//			System.out.println("0을 입력하면 안됩니다.");
//		}else {
//			//비지니스 코드(=업무 코드) > 원래 목적
//			System.out.printf("100/%d = %d",num, 100/num);		
//		}
		//if문 vs try문
		//- if문: 사전에 미리 검사를 해서 사고가 안나게 처리
		//- try문 : 일단 실행 > 감시 > 사고가 터지면 뒷처리
		
		//try 영역 > 감시(cctv) > 예외가 발생하는지 감시
		try {
			System.out.println(1);
			System.out.printf("100/%d = %d\n",num, 100/num);
			System.out.println(2);
		}catch (Exception e) {
			System.out.println("0을 입력하면 안됩니다.");
			//Exception e
			//- 예외 객체
			//- 예외의 상황을 전달
			System.out.println(e.getMessage());
		}
		System.out.println("종료");
	}
}
