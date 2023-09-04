package com.test.java.obj.inheritance;

import java.util.Scanner;

public class Ex57_Generic {
	public static void main(String[] args) {
		
		
		
		//클래스
		//1. 클래스
		//2. 인터페이스
		//3. 추상 클래스
		//4. enum
		//5. 제네릭 클래스
		
		//요구사항] 클래스 설계
		//1. 멤버 변수 선언 > int
		//2. 멤버 변수를 중심으로 여러가지 행동을 하는 메소드 선언
		//추가사항] String 중심으로 하는 클래스 설계 + 나머지 업무는 동일
		//추가사항] boolean 중심, double, byte... 
		//위의 문제점 > 해결 방안
		//1. Object 클래스 > 오래된 방식 ~ 현재방식
		//2. 제네릭 클래스 > 최신방식(2014) ~ 현재 방식
		WrapperInt n1 = new WrapperInt(100);
		System.out.println(n1.toString());
		System.out.println(n1.getData()*2);
		
		WrapperObject n2 = new WrapperObject(200);
		System.out.println(n2.toString());
		System.out.println((int)n2.getData()*2);
		
		Wrapper<Integer> n3 = new Wrapper<Integer>(300);
		System.out.println(n3.toString());
		
		WrapperString s1 = new WrapperString("홍길동");
		System.out.println(s1.toString());
		System.out.println(s1.getData().length());
		
		WrapperObject s2 = new WrapperObject("아무개");
		System.out.println(s2.toString());
		System.out.println(((String)s2.getData()).length());
		
		Wrapper<Stirng> s3 = new Wrapper<Stirng>("일이삼");
		System.out.println(s3.toString());
		
		//Object 변수 == 만능 주머니(모든 자료형을 담을 수 있는 변수)
		Object o1 = new Object();
		Object o2 = new Hong();//업캐스팅
		Object o3 = new Scanner(System.in);
		Object o4 = new WrapperInt(100); 
		//박싱(Boxing) > 오토박싱
		Object o5 = 10;// 자동으로 = new nteger(10);
		
		System.out.println((Integer)o5*2);//언박싱
		//Object 단점 > 꺼내쓸때 어떤게 들어있는지 알기 쉽지않음
	}
}

class WrapperInt{
	private int data; //1. 클래스 중심
	public WrapperInt(int data) {
		this.data = data;
	}
	public int getData() {
		return data;
	}
	public void setData(int data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "WrapperInt [data=" + data + "]";
	}
}
class WrapperString{
	private String data; //1. 클래스 중심
	public WrapperString(String data) {
		this.data = data;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "WrapperString [data=" + data + "]";
	}
}

class WrapperObject{
	private Object data;//*** 모든자료 수용가능
	
	public WrapperObject(Object data) {
		this.setData(data);
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "WrapperObject [data=" + data + "]";
	}
}

class Wrapper<T>{
	private T data;
	public Wrapper(T data) {
		this.setData(data);
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "Wrapper [data=" + data + "]";
	}
}




























