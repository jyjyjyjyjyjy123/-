package com.test.java;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Ex11_BufferedReader {
	public static void main(String[] args) throws Exception{
		
		//BufferedReader 클래스
		
		//Ctrl + Shift + o
		//int a;
		//reader > 콘솔 입력 도구
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		//System.out.println("문자 입력 :");
		//int code = reader.read();
		//System.out.println(code);
		//System.out.printf("출력 : %c\n", code);
		
		//String line = reader.readLine();
		
//		System.out.print("이름 입력 : ");
		//readLine() : 입력 버퍼에서 처음부터 ~ 엔터(\r\n)를 만나기 전까지 모두 읽어오는 메소드(엔터 자동삭제)
//		String name = reader.readLine();
//		System.out.printf("안녕하세요. %s님\n",name);
//		System.out.print("숫자 입력 : ");
//		String num = reader.readLine(); //숫자를 받더라도 문자열로 돌려줌
//		double num2 = Double.parseDouble(num);
//		System.out.println(num2 * 2);
		
		//Wrapper Class(Utility Class)
			//원시형 데이터를 도와주는 기능을 제공하는 클래스(** : 주로많이씀)
			//byte > Byte
			//short >Short
			//int > Integer **
			//long >Long **
			//float > Float
			//double > Double **
			//boolean > Boolean
			//char > Character
		//요구사항] 숫자 2개 입력하여 + 연산을 하며 연산 과정과 결과를 모두 출력
			//숫자1 : 5
			//숫자2 : 3
			// 5 + 3 = 8
//		System.out.print("첫번째 숫자 : ");
//		String input1 = reader.readLine();
//		System.out.print("두번째 숫자 : ");
//		String input2 = reader.readLine();
//		int n1 = Integer.parseInt(input1);
//		int n2 = Integer.parseInt(input2);
//		System.out.printf("%d + %d = %d\n", n1, n2, n1+n2);
		
		System.out.print("숫자 : ");
		String input = reader.readLine();
		int num = Integer.parseInt(input);
		System.out.println(100 / num); //제수(나누는 수)는 0이 될 수 없다.
		
		
		/*
			오류, 버그(Bug), 예외(Exception) 등..
			
			1. 컴파일 에러
				컴파일 작업 중에 발생하는 에러로 컴파일러가(javac.exe) 발견 > 문법이 틀렸기 때문
				발생시 컴파일 작업이 중단되기 때문에 프로그램 생설 불가하여 반드시 해결해야됨
				이클립스에서는 빨간 밑줄로 표시해준다
				컴파일러가 알려주기 때문에 난이도가 가장 낮으며 발견이 쉽다, 고치기도 쉽다 (주로 오타) 
		  	2. 런타임 에러
		  		런타임(Runtime)은 프로그램 실행 중에 발생하는 에러
		  		문법에는 오류가 없으나 다른 원인으로 발생하는 에러
		  		예외(Exception)이라고 부르기도함
		  		난이도는 중간 > 발견할수도 있고 못할수도 있다.
		  		충분히 사전에 테스트 하는것이 제일 좋다. 
		  			예) 게임 출시 > 클로즈드 알파, 클로즈드 베타 > 오픈 알파, 오픈 베타 
		  	3. 논리 에러
		  		컴파일 성공하고 실행에 성공하지만 결과가 이상함
		  		난이도 최상 > 발견하기 힘들고 고치기 힘듬
		*/
		
		
		
		
		
		
		
		
		
		
		
	}

}
