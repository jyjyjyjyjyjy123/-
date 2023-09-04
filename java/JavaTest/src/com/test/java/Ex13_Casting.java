package com.test.java;

public class Ex13_Casting {
	public static void main(String[] args) {
		
		/*
			형변환, (자료)형변환
				Casting, Data Type Casting
				하나의 자료형을 또다른 자료형으로 변환하는 작업으로
				코드 작성을 유연하게 하기 위해서 사용한다.
				예)int > double, float > short
			1. 암시적 형변환(자동 타입 변환)
				큰형 = 작은형 (복사를 했을 때 원본과 항상 동일한 값 복사)
				복사되는 값이 항상 더 작기 때문에 100% 안전한 작업이다.
			2. 명사적 형변환(강제 타입 변환)
				작은형 = 큰형
				경우에 따라 다르기 때문에 늘 신경써서 관리해야 한다.
				명시적 형변환 시 발생하는 데이터가 넘치는 형상을 오버플로우(Overflow)
					위로 넘치는 현상 > Overflow
					아래로 넘치는 형상 > Underflow
					둘다 합쳐서 그냥 Overflow라고 부름
				오버플로우가 발생할 만한 상황을 미리 예측해서 관리가 필요하다.
		*/
		//암시적인 형변환
		byte a;
		short b;
		a = 10;
		//short(2) = byte(1)
		b = a ; //b = (short)a; 가 자동으로 실행됨
		
		System.out.println(b);
		
		byte c = 10;
		long d;
		d = c; //d = (long)c;
		System.out.println(d);
		
		//명사적 형변환
		short e = 1000;
		byte f;
		f = (byte)e;
		System.out.println(f); //-24
		
		int g;
		long h;
		h = 30000000000l;
		g = (int)h;
		System.out.println("이체결과 : " + g);
		
		
		
		
	}

}
