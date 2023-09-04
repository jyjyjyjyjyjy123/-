package com.test.java;

import java.util.Scanner;

public class Ex18_Operator {

	public static void main(String[] args) {
		
		//요구사항] 사용자로부터 문자 1개 입력받아 영소문자인지 검사
		//		 > 유효성 검사(Validation)
		//1. 스캐너 생성하기
		//2. 안내 메시지 출력
		//3. 문자 입력
		//4. 영어 소문자 검사(문자 코드값)
		//5. 결과 출력
		Scanner scan = new Scanner(System.in);
		System.out.println("문자 : ");
		String input = scan.nextLine();
		System.out.println((int)input.charAt(0));
		//**외우는게 좋음**
			//A(65) ~ Z(90)
			//a(97) ~ z(122)
			//0(48) ~ 9(57)
			//가(44032) ~ 힣(55203)
		//한글
			//완성형 한글 > 가, 강, 곽
			//조합형 한글 > ㄱ, ㄴ, ㄷ
		
		int code = (int)input.charAt(0);
		System.out.printf("입력한 문자 %c는 소문자가 %s\n", code, (code >= 97 && code <=122) ? "맞습니다." : "아닙니다.");
		//System.out.println(code >= 'a' && code <= 'z');
		
		
		
		
		
	}
}
