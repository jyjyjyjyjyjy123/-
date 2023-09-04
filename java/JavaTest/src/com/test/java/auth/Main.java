package com.test.java.auth;

import java.util.Scanner;

import com.test.java.auth.admin.Admin;
import com.test.java.auth.data.Data;
import com.test.java.auth.member.Member;

public class Main {
	public static void main(String[] args) {
		/*
		 * 콘솔 > 인증 처리 > 로그인/로그아웃
		 * 
		 * 파일
		 * - Main
		 * - Member - 정보(상자)
		 * - Auth
		 * - Data
		 * - Member2 - 회원정보, 회원전용
		 * - Admin - 관리자전용
		 * 
		 * 데이터 파일
		 * - member
		 * - 아이디,비번,이름,등급
		 */
		
		Data.load();
		boolean loop = true;
		Scanner scan = new Scanner(System.in);
		while (loop) {
			System.out.println("===============");
			System.out.println("    회원 관리");
			System.out.println("===============");
			if (Auth.auth == null) {				
				System.out.println("1. 로그인");
			}else {				
				System.out.println("1. 로그아웃");
				System.out.println("2. 회원정보");
				System.out.println("3. 회원전용");
				if (Auth.auth.getLv().equals("2")) {					
					System.out.println("4. 관리자전용");
				}
			}
			System.out.println("5. 종료");
			System.out.print("선택: ");
			String sel = scan.nextLine();
			if (sel.equals("1")&&Auth.auth==null) {
				Auth.login();
			}else if(sel.equals("1")) {
				Auth.logout();
			}else if(sel.equals("2")) {
				Member.info();
			}else if(sel.equals("3")) {
				Member.somthing();
			}else if(sel.equals("4")) {
				Admin.somthing();				
			}else {
				System.out.println("종료");
				break;
			}
			
		}
	}
}
