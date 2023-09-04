package com.test.java.obj.inheritance;

public class Ex53_interface {
	public static void main(String[] args) {
		
		
		
		Mxkeys keyboard = new Mxkeys();
		
		keyboard.powerOn();
		keyboard.keyDown('A');
		System.out.println(keyboard.checkBatter());
		keyboard.powerOff();
		
		
	}
}
//***keyboard는 객체를 생성할 수 없다. > 실체화할 수 없다.
interface keyboard {
	//키보드로서 갖춰야할 행동들 정의(선언부(o), 구현부(x)) > 호출 사용법
	void keyDown(char c);
	void powerOn();
	void powerOff();
	int checkBatter();
}

class Mxkeys implements keyboard{
	@Override
	public void keyDown(char c) {
		System.out.println(c + "눌렀음");
	}
	@Override
	public void powerOn() {
		System.out.println("전원 켜짐");
	}
	@Override
	public void powerOff() {
		System.out.println("전원 꺼짐");
	}
	@Override
	public int checkBatter() {
		return 80;
	}
}

































