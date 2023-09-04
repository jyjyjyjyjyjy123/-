package com.test.java.auth;

import java.util.Scanner;

import com.test.java.auth.data.Data;
import com.test.java.auth.data.Member;

public class Auth {
	public static Member auth;//로그인을 성공한 회원의 객체 > 인증 티켓

	public static void login() {
		//인증 > Authendication 
		//- 접속한 사람이 회원인지 확인하는 과정
		Scanner scan = new Scanner(System.in);
		System.out.println("---------------");
		System.out.println("     로그인");
		System.out.println("---------------");
		System.out.print("아이디: ");
		String id = scan.nextLine();
		System.out.print("비밀번호: ");
		String pw = scan.nextLine();
		
		for (Member m : Data.list) {
			if (m.getId().equals(id) && m.getPw().equals(pw)) {
				Auth.auth = m;
				break;
			}
		}
		if (Auth.auth != null) {
			System.out.println("로그인 성공");
		}else {
			System.out.println("로그인 실패");
		}
		
		scan.nextLine(); //pause()
		
		
	}

	public static void logout() {
		Auth.auth = null;
		System.out.println("로그아웃");
		Scanner scan = new Scanner(System.in);
		scan.nextLine();
	}

}
