package com.test.java.obj;

public class Ex41_Class {
	public static void main(String[] args) {
		//Pencil, PencilCase
		
		PencilCase pcase = new PencilCase();
		
		pcase.setColor("파란색");
		
		
//		for (int i = 0; i < 5; i++) {
//			Pencil p1 = new Pencil();
//			p1.setHardness("HB");
//			p1.setColor("검은색");
//			
//			//[index] : 인덱서(Indexer) - 표기법 
//			pcase.getPencil()[i] = p1;
//		}
//		
//		for (int i = 0; i < 5; i++) {
//			System.out.println(pcase.getPencil()[i].info());
//		}
		//필통에 연필 넣기
		for (int i = 0; i < 5; i++) {
			Pencil p = new Pencil();
			p.setHardness("B");
			p.setColor("파란색");
			pcase.add(p);
			
		}
		System.out.println(pcase.info());
		//필통에서 연필을 꺼내기
		Pencil p2 = pcase.get(2);
		System.out.println(pcase.info());
		
		
		//
		//String[] color = {red, "blue"...};
		//방번호 > 난수
		//color[(int)(Math.random()*color.lenght)]; 
	}
}
