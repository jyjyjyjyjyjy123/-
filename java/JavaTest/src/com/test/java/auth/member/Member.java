package com.test.java.auth.member;

import java.util.Scanner;

import com.test.java.auth.Auth;

public class Member {
	public static void info() {
		if (Auth.auth == null) {
			System.out.println();
			System.out.println("회원만 접근 가능합니다.");
			System.out.println();
			return ;
		}
		System.out.println("---------------");
		System.out.println("    회원 정보");
		System.out.println("---------------");
		System.out.println("아이디: " + Auth.auth.getId());
		System.out.println("이름: "+ Auth.auth.getName());
		System.out.println("등급: "+ (Auth.auth.getLv().equals("1")? "일반회원":"관리자"));
		Scanner scan = new Scanner(System.in);
		scan.nextLine();
	}

	public static void somthing() {
		if (Auth.auth == null) {
			System.out.println();
			System.out.println("회원만 접근 가능합니다.");
			System.out.println();
			return ;
		}
		System.out.println("회원 전용 기능입니다.");
		Scanner scan = new Scanner(System.in);
		scan.nextLine();
		
	}
}
