package com.test.java.obj.inheritance;

public class Ex54_interface {
	public static void main(String[] args) {
		
		//상속
		//1. 단일 상속 > 부모가 1개인 경우
		//2. 다중 상속 > 부모가 2개 이상인 경우
		
		//*** 자바는 다중 상속을 허용하지 않는다.***
		//*** 인터페이스에 한해서 다중 상속을 허용한다.*** > 인터페이스는 구현부가 없어서..
		
		
		
		Hong hong = new Hong();
	}
}
interface 직원{
	void 출근하다();
	void 퇴근하다();
	void 일을한다();
}
interface 아빠{
	void 애들하고놀기();
	void 돈벌기();
	void 낮잠자기();
}

class Hong implements 직원, 아빠 {

	@Override
	public void 출근하다() {
	}
	@Override
	public void 퇴근하다() {
	}
	@Override
	public void 일을한다() {
	}
	@Override
	public void 애들하고놀기() {
	}
	@Override
	public void 돈벌기() {
	}
	@Override
	public void 낮잠자기() {
	}
}
class lee implements 직원{
	@Override
	public void 출근하다() {
	}
	@Override
	public void 퇴근하다() {
	}
	@Override
	public void 일을한다() {
	}
	
}
class prk implements 아빠{
	@Override
	public void 애들하고놀기() {
	}
	@Override
	public void 돈벌기() {
	}
	@Override
	public void 낮잠자기() {
	}
	
}

























