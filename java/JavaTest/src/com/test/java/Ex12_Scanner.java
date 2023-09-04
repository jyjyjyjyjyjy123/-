package com.test.java;

import java.util.Scanner;

public class Ex12_Scanner {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in); //Wrapper Class
//		System.out.print("문자열 : ");
//		String line = scan.nextLine();
//		System.out.println(line);
//		
//		System.out.print("숫자 : ");
//		int num = scan.nextInt();
//		System.out.println(num);
		
		//숫자 2개 입력 > 연산
		System.out.print("첫번째 숫자 : ");
		double input1 = scan.nextDouble();
		System.out.print("두번째 숫자 : ");
		double input2 = scan.nextDouble();
		System.out.printf("%.1f + %.1f = %.1f", input1, input2, input1 + input2);
		
	}

}
