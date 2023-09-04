package com.test.java;

public class Ex10_Input {
	
	public static void main(String[] args) throws Exception{
		/*
			콘솔 출력 > 모니터
			1. System.out.print()
			2. System.out.println()
			3. System.out.printf()
			
			콘솔 입력 > 키보드
			1. System.in.read() > 불편해서 잘 안씀
			2. BufferedReader 클래스
			3. Scanner 클래스
		  
		*/
		//System.in.read()
		//요구사항] 사용자에게 문자 1개를 입력받아 다시 화면에 출력하시오.
			//1. 안내 메시지 출력
			//2. 키 입력
			//3. 키를 화면에 출력
		System.out.println("문자 입력 :");
		int code = System.in.read(); 
			//입력 대기 상태 > 사용자의 키입력을 기다리고 있는 중..(블럭 걸렸다. 라고 표현하기도함)
			//콘솔 > 키 입력 완류 > Enter 입력
			//read() 메소드 1회 > 문자 1개 입력 (첫번째 글자)
		System.out.println("출력 : " + code);
		System.out.printf("출력 : %c\n", code);
		code = System.in.read();
		System.out.println("출력 : " + code);
		System.out.printf("출력 : %c\n", code);
		code = System.in.read();
		System.out.println("출력 : " + code);
		System.out.printf("출력 : %c\n", code);
		//13 > \r, 10 > \n
		
		
	}

}
