package com.test.java.obj.cast;

public class Ex56_Casting {
	public static void main(String[] args) {
		
		
		//예제]
		//프린터 기기
		//- LG500
		//- HP600
		m1();
		m2();
		m3();
		
	}
	private static void m1() {
	}
	private static void m2() {
		Lg500[] lg = new Lg500[5];
		for (int i = 0; i < lg.length; i++) {
						
		}
	}
	private static void m3() {
		Printer[] ps = new Printer[8]; 
		for (int i = 0; i < ps.length; i++) {
			if (i<5) {
				ps[i] = new Lg500();
			}else {
				ps[i] = new HP600();
			}
			
		}
		//업무
		for (int i = 0; i < ps.length; i++) {
			ps[i].print();
			//추가없무
			//lg > selfTest()
			//hp > clear()
			if(ps[i] instanceof Lg500) {
				((Lg500)ps[i]).selfTest();
			} else {
				((HP600)ps[i]).clear();
			}
		}
	}
}
interface Printer{
	
}

class Lg500 implements Printer{
	private String type;
	private int price;
	
	public void print() {
		System.out.printf("%s 방식으로 출력합니다.\n", this.type);
	}
	public void on() {
		System.out.println("프린터 전원을 켭니다.");
	}
	public void off() {
		System.out.println("프린터 전원을 끕니다.");
	}
	public void selfTest() {
		System.out.println("자가 점검을 합니다.");
	}
}
class HP600 implements Printer{
	private String color;
	private int price;
	
	public void printing() {
		System.out.printf("출력합니다.\n");
	}
	public void powerOn() {
		System.out.println("프린터 전원을 켭니다.");
	}
	public void powerOff() {
		System.out.println("프린터 전원을 끕니다.");
	}
	public void clear() {
		System.out.println("헤더를 청소합니다.");
	}
}