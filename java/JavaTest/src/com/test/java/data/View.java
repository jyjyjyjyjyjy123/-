package com.test.java.data;

import java.util.Scanner;

public class View {
	public static void subTitle(String title)	{
		System.out.println();
		System.out.println();
		System.out.println("------------------");
		System.out.println("    "+title);
		System.out.println("------------------");
	}
	public static void pause()	{
		Scanner scan = new Scanner(System.in);
		System.out.println();
		System.out.println("계속하려면 엔터를 입력하시오.");
		scan.nextLine();
	}
	public static void mainMenu() {
		System.out.println("=================");
		System.out.println("1. 학생 추가하기");
		System.out.println("2. 학생 목록보기");
		System.out.println("3. 학생 삭제하기");
		System.out.println("4. 종료");
		System.out.println("=================");
		System.out.print("선택(번호): ");
	}
}
