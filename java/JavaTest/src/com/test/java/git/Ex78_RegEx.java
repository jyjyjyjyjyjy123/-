package com.test.java.regex;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;





public class Ex78_RegEx {
	
	public static void main(String[] args) {
		
		//정규 표현식 + 자바 > 적용
		//- 검색(+치환) > replaceAll(), replaceFirst()
		//- 분리 > split()
		//- 유효성 검사 > Pattern, Matcher
		
		//1. 정규식 객체
		//2. 다른 객체의 기능들 중 일부가 정규 표현식 지원 
		
		//https://regexlib.com/ - 정규표현식 사이트
		
		//m1();
		//m2();
		//m3();
		//m4();
		m5();
		
	}//main

	private static void m5() {
		
		//유효성 검사
		
		//회원 가입 > 유효성 검사
		//1. 이름 > 필수, 한글, 2~5자 이내
		//2. 이메일 > 필수, 이메일 형식
		//3. 나이 > 필수, 숫자, 18세 이상
		//4. 아이디 > 필수, 영어+숫자+_조합,숫자로 시작 불가능, 4~12자 이내
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("[회원가입]");
		
		String name = getData(scan, "이름");
		//유효성 검사
		
		String email = getData(scan, "이메일");
		//유효성 검사
		
		String age = getData(scan, "나이");
		//유효성 검사
		
		String id = getData(scan, "아이디");
		//유효성 검사
		
		//일괄 유효성 검사
		if (isValid(name, email, age, id)) {
			System.out.println("가입 완료");
		} else {
			System.out.println("가입 실패");
		}
	}

	private static boolean isValid(String name, String email, String age, String id) {
		
		//유효성 검사 > 잘못된 걸 찾아라!
//		if () {
//			return false;
//		}
		
		String regex = "";
		Pattern p1 = null;
		Matcher m1 = null;
		
		//이름
		regex = "^[가-힣]{2,5}$"; //^ =  ^[]로 시작  $ = []로 끝나야 함
		p1 = Pattern.compile(regex);
		m1 = p1.matcher(name); //사용자가 입력한 이름에서 패턴 검색
		
		if (!m1.find()) {
			System.out.println("이름 > 필수, 한글, 2~5자 이내");
			return false;
		}
		
		
		//이메일
		regex = "^\\w+@[a-zA-Z_]+?\\.[a-zA-Z]{2,3}$";
		p1 = Pattern.compile(regex);
		m1 = p1.matcher(email); //사용자가 입력한 이름에서 패턴 검색
		
		if (!m1.find()) {
			System.out.println("이메일 > 필수, 이메일 형식");
			return false;
		}
		
		
		//3. 나이 > 필수, 숫자, 18세 이상 ~ 100세 이하
		regex = "^[0-9]{2,3}$";
		p1 = Pattern.compile(regex);
		m1 = p1.matcher(age); //사용자가 입력한 이름에서 패턴 검색
		
		if (!m1.find() || (Integer.parseInt(age) < 18 || Integer.parseInt(age) > 100)) {
			System.out.println("나이 > 필수, 숫자, 18세 이상 100세 이하");
			return false;
		}
		
		//4. 아이디 > 필수, 영어+숫자+_조합,숫자로 시작 불가능, 4~12자 이내
		regex = "^[A-Za-z_][A-Za-z0-9_]{4,11}$";
		regex = "^[A-Za-z_]\\w{4,12}$";
		p1 = Pattern.compile(regex);
		m1 = p1.matcher(id); //사용자가 입력한 이름에서 패턴 검색
		
		if (!m1.find()) {
			System.out.println("아이디 > 필수, 영어+숫자+_조합,숫자로 시작 불가능, 4~12자 이내");
			return false;
		}
		
		return true;
	}
	
	
	
	

	private static String getData(Scanner scan, String label) {
		System.out.print(label + ":");
		return scan.nextLine();
	}

	private static void m4() {
		String txt = "안녕하세요 이도훈입니다. 네? 당신 이름도 도훈이라고요? 아~ 김도훈이요. 저쪽에 최도훈도 있습니다. 그리고 남궁도훈도 있습니다";
		
		//[요구사항] 모든 길동이 찾기!!
		//String regex = "[이김최]?도훈";
		String regex = "(이|김|최|남궁)?(도훈)";
		
		Pattern p1 = Pattern.compile(regex);
		
		Matcher m1 = p1.matcher(txt);
		
		while (m1.find()) {
			System.out.println("칮은 이름: " + m1.group());
			System.out.println("성: " + m1.group(1));
			System.out.println("이름: " + m1.group(2));
			
		}
	}

	private static void m3() {
		//정규 표현식 객체
		String txt = "안녕하세요. 홍길동입니다. 제 연락처는 011-4940-1301입니다. 제 메일은 sjw05345@naver.com입니다. 추가 연락처는 010-2314-1234입니다. 010-4567-8900";
		
		
		//정규 표현식 객체 생성하기
		//String regex = "[0-9]{3}-[0-9]-{3,4}-[0-9]{4}";
		String regex = "(\\d{3})-(\\d{3,4})-(\\d{4})";
		
		//p1 = 정규 표현식 객체
		Pattern p1 = Pattern.compile(regex);
		
		//txt을 대상으로 p1 패턴 검색
		Matcher m1 = p1.matcher(txt);
		
		//System.out.println(m1.find()); //검색 결과
		
//		if (m1.find()) {
//			System.out.println("txt에서 전화번호 발견");
//		} else {
//			System.out.println("txt에서 전화번호 발견하지 못함");
//			
//		}
		
//		System.out.println(m1.find());//010-4940-1301
//		System.out.println(m1.find());//010-2314-1234
//		System.out.println(m1.find());
		
		//전화번호 > 총 몇 번 발견?
		
		int count = 0;
		
//		while (m1.find()) {
//			count++;
//		}
		
		//System.out.printf("전화번호가 총 %d회 발견되었습니다.", count);
		
		
		while (m1.find()) {
			System.out.println("[전화번호 발견]");
			
			System.out.println("전화번호: " + m1.group(0));
			System.out.println("통신사: " + m1.group(1));
			System.out.println("앞자리: " + m1.group(2));
			System.out.println("뒷자리: " + m1.group(3));
			
			
			System.out.println();
		}
		
		
	}

	private static void m2() {
		
		String name = ",홍길동,아무개;하하하,,테스트,이순신"; //CSV
		
		String[] list = name.split("[,;\s]{1,2}");
		
		for (String item : list) {
			System.out.println(item);
		}
		
	}

	private static void m1() {
		
		//게시판 > 개인 정보 기재 불가(전화 번호) > 마스킹
		String txt = "안녕하세요. 홍길동입니다. 제 연락처는 010-4940-1301입니다. 제 메일은 sjw05345@naver.com입니다. 추가 연락처는 010-2314-1234입니다.";
		
//		System.out.println(txt.replaceAll("010-[0-9]{3,4}-[0-9]{4}", "XXX-XXXX-XXXX")); //전체 마스킹
//		System.out.println(txt.replaceAll("\\w+@[a-zA-Z_]+?\\.[a-zA-Z]{2,3}", "OOOO@OOOO"));
		
		System.out.println(txt
				.replaceAll("010-[0-9]{3,4}-[0-9]{4}", "XXX-XXXX-XXXX")
				.replaceAll("\\w+@[a-zA-Z_]+?\\.[a-zA-Z]{2,3}", "OOOO@OOOO")); //전체 마스킹
		
		System.out.println(txt.replaceFirst("010-[0-9]{3,4}-[0-9]{4}", "XXX-XXXX-XXXX")); //첫번째만 마스킹
		
	}

}
