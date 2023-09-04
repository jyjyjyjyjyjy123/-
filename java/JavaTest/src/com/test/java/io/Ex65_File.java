package com.test.java.io;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.util.Scanner;

public class Ex65_File {
	public static final String FILE = "C:\\class\\code\\java\\file\\list.txt";
	public static void main(String[] args) {
		/*
			파일 입출력
			- 응용프로그램 <- (데이터) -> 저장장치(*.txt)
			저장장치
			- 데이터 1,0으로 저장
			- 데이터의 자료형 존재x > 모두 다 문자
			
			인코딩, Encoding
			- 문자 코드(자바 데이터)를 부호화(1,0) 시키는 작업
			- 자바 프로그램("홍길동") > 텍스트 파일(11010100100101)
			
			디코딩 , Decoding
			- 부호화 데이터를 문자 코드를 변환하는 작업
			- 텍스트 파일(11010100100101) > 자바 프로그램("홍길동")
			
			 인코딩/디코딩 규칙 
			 - ISO-8859-1
			 - EUC-KR-
			 - ANSI
			 - MS949(CP949)
			 - UTF-8
			 - UTF-16
			 - ASCII
			 
			 ANSI(ISO-8859-1, EUC-KR-, MS949)
			 1. 영어(숫자, 특수문자, 서유럽 등) : 1byte
			 2. 한글(한자, 일본어 등) : 2byte
			 
			 UTF-8(Unicode) ******** 무조건 이걸 사용 > 국제 표준
			 1. 영어 : 1byte
			 2. 한글 : 3byte
			 
			 UTF-16(Unicode)
			 1. 영어 : 2byte
			 2. 한글 : 2byte
			
		 */
//		m1();
//		m2();
//		m3();
//		m4();
//		m5();
//		m6();
//		m7();
		m8();
	}

	private static void m8() {
		try {
			BufferedReader reader = new BufferedReader(new FileReader("C:\\class\\code\\java\\JavaTest\\src\\com\\test\\java\\Ex08_Escape.java"));
			String line = null;
			int n=1;
			while ((line = reader.readLine()) != null) {
				System.out.printf("%3d %s\n",n,line);
				n++;
			}
		} catch (Exception e) {
			System.out.println("at Ex65_File.m8");
			e.printStackTrace();
		}
		
	}

	private static void m7() {
		//메모장 쓰기
		try {
			Scanner scan = new Scanner(System.in);
			System.out.print("저장할 파일명: ");
			String filename = scan.nextLine();
			
			BufferedWriter writer = new BufferedWriter(new FileWriter("C:\\class\\code\\java\\file\\" + filename + ".txt"));
			while (true) {
				System.out.print("입력: ");
				String line = scan.nextLine();
				if (line.equals("exit")) {
					break;
				}
				writer.write(line);//한줄 입력(scan) > 한줄 쓰기(writer)
				writer.write("\r\n");
			}
			writer.close();
		} catch (Exception e) {
			System.out.println("at Ex65_File.m7");
			e.printStackTrace();
		}
		
	}

	private static void m6() {
		try {
//			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));			
			BufferedReader reader2 = new BufferedReader(new FileReader("C:\\class\\code\\java\\file\\memo.txt"));		
//			String line = reader2.readLine();
//			System.out.println(line);
			String line = null;
			while ((line = reader2.readLine()) != null) {
				System.out.println(line);
			}
			reader2.close();
		} catch (Exception e) {
			System.out.println("at Ex65_File.m6");
			e.printStackTrace();
		}
		
	}

	private static void m5() {
		//쓰기
		//- FileOutputStream > FileWriter > BufferedWriter
		
		//읽기
		//- FileInputStream > FileReader > BufferedReader
		
		try {
			BufferedWriter writer = new BufferedWriter(new FileWriter("C:\\class\\code\\java\\file\\memo.txt"));
			writer.write("하나");
			writer.write("\r\n");
			writer.write("둘");
			writer.newLine();
			writer.write("셋");
			
			writer.close();
		} catch (Exception e) {
			System.out.println("at Ex65_File.m5");
			e.printStackTrace();
		}
		
	}

	private static void m4() {
		try {
			FileReader reader = new FileReader("C:\\class\\code\\java\\file\\member.txt");
//			int code = reader.read();
			int code = -1;
			while ((code = reader.read()) != -1) {
				System.out.print((char)code);
			}
			reader.close();
		} catch (Exception e) {
			System.out.println("at Ex65_File.m4");
			e.printStackTrace();
		}
		
	}

	private static void m3() {
		//쓰기
		//- FileOutputStream > FileWriter
		
		//읽기
		//- FileInputStream > FileReader
		
		try {
			FileWriter writer = new FileWriter("C:\\class\\code\\java\\file\\member.txt");
			writer.write("홍길동");
			writer.close();
			System.out.println("종료");
		} catch (Exception e) {
			System.out.println("at Ex65_File.m3");
			e.printStackTrace();
		}
		
	}

	private static void m2() {
		try {
			//파일 읽기
			//- FileOutputStream
			//- FileInputStream
			
			//읽기 스트림 객체
			FileInputStream stream = new FileInputStream(Ex65_File.FILE);
			
			int code = -1;
			
			//**************
			while ((code = stream.read()) != -1) {
				System.out.print((char)code);
			}
			
//			code = stream.read();
//			System.out.println(code);
			
			stream.close();
			

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void m1() {
		//파일 쓰기
		//- 스트림 객체
		
		//쓰기 스트림 객체
		//1. 생성 모드, Create mode > 덮어쓰기
		//	- 기본값
		//	a. 파일이 존재하지 않으면 자동으로 생성한다.
		//	b. 파일이 존재하면 항상 덮어쓰기를 한다.
		//2. 추가 모드, Append Mode > 기존내용 > 이어쓰기
		//	a. 파일이 존재하지 않으면 자동으로 생성한다.
		//	b. 파일이 존재하면 항상 이어쓰기를 한다.
		try {
			File file = new File(Ex65_File.FILE);
			//스트림 객체 생성 > 스트림 열기
			//- 바이트 단위 쓰기(1byte)
			FileOutputStream stream = new FileOutputStream(file);
//			FileOutputStream stream = new FileOutputStream(file,true);//true를 붙이면 이어쓰기
			
//			stream.write('홍');
//			stream.write('길');
//			stream.write('동');
			String txt = "Hello~ Hong";
//			for (int i = 0; i < txt.length(); i++) {
//				stream.write(txt.charAt(i));
//			}
//			stream.write(txt.toCharArray());
			//스트림 닫기
			//- 저장이 안된다.
			//- 잠긴 파일이 된다.
			stream.close();
			System.out.println("종료");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
