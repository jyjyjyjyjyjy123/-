package com.test.java.obj.inheritance;

import java.util.Date;

public class Ex48_Overriding {
	public static void main(String[] args) {
		//대중적인 오버라이드
		Time t1 = new Time(2, 30);
		System.out.println(t1);
		System.out.println(t1.toString());//String java.lang.Object.toString() //재정의 전
		//String com.test.java.obj.inheritance.Time.toString() //재정의 후
		System.out.println(t1.info());
		
		Date now = new Date();
		System.out.println(now);
		System.out.println(now.toString());	//String java.util.Date.toString()
											//toString()을 재정의 해서 다르게 출력된다.
		
	}
}
class Time{
	private int hour;
	private int minute;
	public Time(int hour, int minute) {
		this.hour = hour;
		this.minute = minute;
	}
	public String info() {
		return this.hour+":"+this.minute;
	}
	
	@Override //이노테이션(Annotation)
	public String toString() {
		
		return this.hour+":"+this.minute;
	}
}