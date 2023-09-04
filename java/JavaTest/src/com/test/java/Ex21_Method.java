package com.test.java;

public class Ex21_Method {
	public static void main(String[] args) {
		
		//public static void hellow(String name){}
		
		//메소드 반환값(리턴값)
			//메소드가 실행 후 호출한 곳으로 돌려주는 값
		System.out.println(getNum());
		String result = getName("홍길동");
		System.out.println(result);
		
	}
	public static String getName(String name) {
		return "고객명: " + name;
	}
	public static int getNum(){
		
		return 100; //return문의 역할 > 1. 메소드 종류, 2. 값을 반환
	}
	

}
