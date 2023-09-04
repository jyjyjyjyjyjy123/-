package com.test.java;

import java.util.Arrays;
import java.util.Scanner;

public class Ex34_String {
	public static void main(String[] args) {
		//문자열, String
		//	- JDK 제공하는 문자열 조작 기능
		//물자열 조작 기능 == 배열 조작 기능 유사
		
		//문자열 길이
		//	-문자열의 글자수
		//	-int lonegth()
		//	-char charAt(int) 
		//	-String trim() > 앞뒤 공백제거
		
		//문자열 검색
		//	-int indexOf(char)
		//	-int indexOf(string)
		//	-int indexOf(char, int)
		//	-int indexOf(String, int)
		
		//	-int lastIndexOf(char)
		//	-int lastIndexOf(string)
		//	-int lastIndexOf(char, int)
		//	-int lastIndexOf(String, int)
		
		//	indexof - 앞(왼쪽)에서 부터
		//	lastIndexOF - 뒤(오른쪽)에서 부터
		
		
		
		
		
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
//		m12();
		m13();
		
		
		
		
	
	}

	private static void m13() {
		//문자열 분리
		//	-String[] split(String delimiter)
		//	-구분자를 기준으로 쪼개는 메소드
		String name = "홍길동,아무개,유재석,강호동,박명수,";
		String[] names = name.split(",");
		for (int i=0; i<names.length; i++) {
			System.out.println(i + ":" + names[i]);
		}
		
	}

	private static void m12() {
		//문자열 치환(바꾸기)
		//	-String replasce(String old, String new)
		//	-문자열의 일부(old)를 다른 문자열(new)로 바꾸는 메소드
		
		String txt = "안녕하세요. 홍길동입니다. 반갑습니다 홍길동";
		
		int index = txt.indexOf("홍길동");
		String temp1 = txt.substring(0,index);
		String temp2 = txt.substring(index+3);
		System.out.println(temp1+"아무개"+temp2);
		
		System.out.println(txt.replace("홍길동", "아무개"));
		
	}

	private static void m11() {
		//문자열 검색
		//	-indexOf(), lastIndexOf()
		//	-startswith(), endsWith()
		//	-boolean contains(String) 
		
		String txt = "안녕하세요. 홍길동입니다.";
		System.out.println(txt.contains("홍길동"));
		System.out.println(txt.contains("아무개"));
		
	}

	private static void m10() {
		//문자열 추출 
		//	-String substring(int beginIndex, int end Index)
		//	-String substring(int beginIndex)
		//	-beginIndex: 포함(inclusive)
		//	-endIndex: 미포함(exclusive)
		
		//***자바에서는 범위를 나타낼때 > 시작(포함) ~ 끝(미포함)
		//
		
		String txt = "가나다라마바사아자차카타파하";
		System.out.println(txt.substring(3, 7));//3번자리부터 6번까지출력
		System.out.println(txt.charAt(5));		//'바' > 문자코드값 변환o
		System.out.println(txt.substring(5, 6));//'바' > 문자코드값 변환x
		System.out.println(txt.substring(3));	//3번자리부터 출력
		//주민
		String jumin = "991231-1000001";
		//성별
		System.out.println(jumin.charAt(7) == '1'?"남자":"여자");
		System.out.println(jumin.substring(7,8).equals("1")?"남자":"여자");
		//몇년생?
		System.out.println(jumin.charAt(0) + jumin.charAt(1)); //코드값이 더해짐
		System.out.println(jumin.substring(0,2));
		
		String path = "C:\\class\\java\\JavaText\\Ex34_String.java";
		
		String fileName = path.substring(path.lastIndexOf("\\")+1);
		
		//1. 파일명 추출 > "Ex34_String.java"
		System.out.println(fileName);
		//2. 확장자 없는 파일명 추출 > "Ex34_String"
		System.out.println(fileName.substring(0,fileName.lastIndexOf(".")));
		//3. 확장자 추출 > ".java"
		
		
		
		
		
	}

	private static void m9() {
		//패턴 검색
		//	-boolean startWith(String)
		//	-boolean endWith(String)
		
		String txt = "자바 프로그래밍";
//		System.out.println(txt.startsWith("자바"));
//		System.out.println(txt.startsWith("프로그래밍"));
//		System.out.println();
//		System.out.println(txt.endsWith("자바"));
//		System.out.println(txt.endsWith("프로그래밍"));
		
		String name="홍길동";
		System.out.println(name.startsWith("홍"));
		System.out.println(name.charAt(0)=='홍');
		System.out.println(name.indexOf('홍') == 0);
		
		System.out.println(name.endsWith("동"));
		System.out.println(name.charAt(name.length()-1) == '동');
		System.out.println(name.indexOf('동') == name.length()-1);
		
		//파일 경로
		String path = "C:\\class\\java\\JavaText\\Ex34_String.java";
		//해당 파일이 '자바 소스 파일' 입니까? > 확장자 검사
		if (path.endsWith(".java")) {
			System.out.println("자바 소스 파일");
		} else {
			System.out.println("다른파일");
		}
		
	}

	private static void m8() {
		//대소문자 변경
		//	-String toUpperCase()
		//	-String toLowerCase()
		
		String content = "오늘 수업은 Java입니다.";
		String word = "java";
		
		System.out.println(content);
		System.out.println(content.toUpperCase());
		System.out.println(content.toLowerCase());
		
		//대소문자 구분(Case senstive)
		//	-정확도 높음
		//	-검색율 낮음
		
		if (content.indexOf(word) > -1) {
			System.out.println("결과 o");
		}else {
			System.out.println("결과 x");
		}
		//대소문자 구분(Case insenstive)
		//	-정확도 낮음
		//	-검색율 높음
		if (content.toUpperCase().indexOf(word.toUpperCase()) > -1) {
			System.out.println("결과 o");
		}else {
			System.out.println("결과 x");
		}
		
	}

	private static void m7() {
		//주민등록번호 > '-' 기입
		String jumin = "991231-1000001";
//		if (jumin.charAt(6)=='-') {
//			System.out.println("0");		
//		}else {
//			System.out.println("1");
//		}
//		
//		if (jumin.indexOf("-") == 6) {
//			System.out.println("0");		
//		}else {
//			System.out.println("1");
//		}
		//게시판 글쓰기
		String word = "바보";
		String context = "안녕하세요. 반갑습니다~ 자바를 공부하고 있어요.";
		
		if(context.indexOf(word)>-1) {
			System.out.println("금지어 발견");
		} else {
			
			System.out.println("글쓰기 진행~");
		}
		String[] words = {"바보", "멍청이", "메롱", "ㅂㅏㅂㅗ"};
		for (int i=0; i<words.length; i++) {
			if(context.indexOf(words[i])>-1) {
				System.out.println("금지어 발견");
				break;
			}
			
		}
		
		
		
		
		
	}

	private static void m6() {
		String txt = "안녕하세요. 홍길동입니다.";
		int index = -1;
		
//		index = txt.indexOf('하');
//		System.out.println(index);
//		index = txt.indexOf('홍');
//		System.out.println(index);
//		index = txt.indexOf('김');
//		System.out.println(index);
//		index = txt.indexOf("홍길동"); //첫번째 문자의 위치를 반환
//		System.out.println(index);
		
		txt = "안녕하세요. 홍길동입니다. 반갑습니다. 홍길동입니다. 안녕히가세요. 홍길동입니다. 홍길동 홍길동";
		
//		index = txt.indexOf("홍길동");
//		System.out.println(index);
//		
//		index = txt.indexOf("홍길동",10);
//		System.out.println(index);
//		
//		index = txt.indexOf("홍길동",25);
//		System.out.println(index);
		
//		index = -1;
		
//		for (int i=0; i<3; i++)
		
//		while (true) {
//			index = txt.indexOf("홍길동", index);
//			if (index == -1) {
//				break;
//			}
//			System.out.println(index);
//			index += 3;
//		}
		
		txt = "안녕하세요. 홍길동입니다. 반갑습니다. 홍길동입니다.";
		System.out.println(txt.indexOf("홍길동"));	//왼쪽 > 오른쪽
		System.out.println(txt.lastIndexOf("홍길동"));	//오른쪽 > 왼쪽
		
	}

	private static void m5() {
		//공백 제거
		//	-String trim()
		//	-문자열내의 공백(Whitespace > 스페이스, 탭, 개행)문자를 제거
		//	-문자열의 시작과 끝에 존재하는 공백들을 제거한다.***
		
		String txt ="     가     나     다     ";
		System.out.printf("[%s]\n",txt);
		System.out.printf("[%s]\n",txt.trim());
		
		
	}

	private static void m4() {
		//주민등록번호 : 991231-1000001
		String jumin = "991231-2000001";
		if (jumin.charAt(6)=='-') {
			System.out.println("올바른 주민번호");
			if (jumin.charAt(7)=='1' || jumin.charAt(7)=='3') {
				System.out.println("남자");
			}else {
				System.out.println("여자");
			}			
		}else {
			System.out.println("올바르지 않은 주민번호");
		}
		
		
	}

	private static void m3() {
		Scanner scan = new Scanner(System.in);
		//요구사항 회원 가입 > 아이디 입력 > 영어 소문자만 입력
		System.out.print("아이디: ");
		String id = scan.nextLine();
		
		for (int i = 0; i < id.length(); i++) {
			char c = id.charAt(i);
			if (c < 'a' || c > 'z') {
				System.out.println("잘못된 문자가 발견되었습니다.");
				break;
			}
		}
		System.out.println("종료");
	}

	private static void m2() {
		//문자열 추출
		//	-char charAt(int index)
		
		String txt = "안녕하세요. 홍길동입니다.";
		
		char c = txt.charAt(3);
		System.out.println(c);
		c = txt.charAt(7);
		System.out.println(c);
		c = txt.charAt(13);
		System.out.println(c);
		c = txt.charAt(12);
		System.out.println(c);
		
	}

	private static void m1() {
		//요구사항] 회원 가입 > 이름 입력 > 이름을 2자 ~ 5자이내로 작성하시오.
		Scanner scan = new Scanner(System.in);
		System.out.print("이름: ");
		String name = scan.nextLine();
		if (name.length() >= 2 && name.length() <= 5) {
			System.out.println("올바름 이름");
		}else {
			System.out.println("이름을 2자 ~ 5자이내로 작성하시오.");
		}
	}
}
