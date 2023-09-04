package com.test.java.obj;

public class Box {
	//public > 해당 클래스 외부에 이 멤버를 공개하겠다.
	public String color;
	//private > 해당 크래스 외부에 이 멤버를 비공개하겠다. > 왜? > 내부 전용 변수
	//	- 위험해서
	//	- 공개가 필요가 없어서
	private int size;
	
	public void aaa() {
		System.out.println("aaa");
		//같은 클래스 내부에서는.. > 같은 멤버 끼리는 > 접근 지정자가 동작하지 않는다> 아예 의미가 없다.
		color = "노랑";
		size = 200;
	}
	private void bbb() {
		System.out.println("bbb");
	}
}
