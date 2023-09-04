package com.test.java.data;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		
		/*
			
			성적 관리 프로그램
			- 패키지 > "com.test.java.data"
			
			- 파일
				- "Main.java" > 메인 > 전체 컨트롤
				- "View.java" > 출력 담당
				- "Data.java" > 데이터 담당 > Student.txt 담당(입출력)
				- "Student.java" > 학생 1명 정보 > 상자
				- "Service.java" > 업무 담당
				
			- 데이터 파일
				- JavaTest > data > "student.txt"
			
		 */
		Data.load();
		Scanner scan = new Scanner(System.in);
		boolean loop = true;
		while (loop) {
			View.mainMenu();
			String sel = scan.nextLine();
			if(sel.equals("1")) {
				Service.add();
			} else if(sel.equals("2")){
				Service.list();
			} else if(sel.equals("3")){
				Service.delete();
			} else {
				loop = false;
			}
		}
		System.out.println("프로그램 종료");
		Data.save();
	}
}
