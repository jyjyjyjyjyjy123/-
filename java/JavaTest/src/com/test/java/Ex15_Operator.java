package com.test.java;

public class Ex15_Operator {
	public static void main(String[] args) {
		
		/*
			연산자(Operator)
				수학 연산자의 대부분이 프로그래밍 연산자와 똑같다
				피연산자를 대상으로 미리 정해진 행동(연산)을 한 후에 연산의 결과를 반환 하는 요소를 연산자 라고 한다.
				주로 기호를 많이 사용 + 단어도 많이 사용
			1. 문장, Statement
			2. 표현식, Expression
			3. 연산자, Operator
			4. 피연산자, Operand
			5. 연산자 우선 순위
			6. 연산자 연산 방향
			
			문장(Statement)
				1개 이상의 표현식이 모여서 문장을 만든다
				예)int sum = 10 + 20;
			표현식(Expression)
				문장을 구성하는 최소 단위 > 하나의 완성된 문장을 만들 수 있는 최소 표현
				예)int sum, 10 + 20, sum = 30
			연산자(Operator)
				예) +, =
			피연산자(Operand)
				예) + > 10, 20, - > sum, 30
			연산자 우선 순위
				하나의 문장에 속해있는 연산자들 중에 누가 먼저 실행하는지에 대한 규칙
			연산자 연산 방향
				하나의 문장에 속해있는 연산자들 중에서 우선순위가 동일하면 누구부터 실행해야하는지에 대한 규칙
			
				
			연산자 종류
				행동과 용법에 따라 분류된다
				1. 행동(목적)
					a. 산술 연산자
					b. 비교 연산자
					c. 논리 연산자
					d. 대입 연산자
					e. 증감 연산자
					f. 조건 연산자
					g. 비트 연산자
				2. 용법(피연산자의 개수)
		 			a. 1항 연산자
		 			b. 2항 연산자
		 			c. 3항 연산자
		 			
		 	산술 연산자
		 		+, -, *, /(몫), %(나머지)
		 		2항 연산자
		 		피연산자는 숫자형을 가진다.(정수, 실수)
		*/
		//산술 연산자
		int a = 10;
		int b = 3;
		System.out.printf("%d + %d = %d\n", a, b, a+b);
		System.out.printf("%d - %d = %d\n", a, b, a-b);
		System.out.printf("%d * %d = %d\n", a, b, a*b);
		System.out.printf("%d / %d = %d\n", a, b, a/b);
		System.out.printf("%d %% %d = %d\n", a, b, a%b);
		double c = 10;
		double d = 3;
		System.out.printf("%f / %f = %f\n", c, d, c/d);
		//**모든 산술 연산자의 결과 자료형은 두 피연산자의 자료형 중 더 크기가 큰 자료형으로 변환된다. 
		System.out.println(10/3); // int/int = int
		System.out.println(10.0/3); // double / int = double
		System.out.println(10/3.0);	// int / double = double
		System.out.println(10.0/3.0); // double / double = double
		
		int e = 1000000000;
		int f = 2000000000;
		System.out.println(e + f); //결과 : -1294967296(두 피연선자가 int라서 결과도 int인데 범위를 초과되어 오버플로우)
		System.out.println((long)e + f); //결과 : 3000000000
		
		e = 300000;
		f = 500000;
		System.out.println(e * f); //오버플로우
		System.out.println((long)e * f); 
		
		e = -2100000000;
		f = 100000000;
		System.out.println(e - f); //오버플로우
		
		byte b1 = 10;
		byte b2 = 20;
		byte b3;
		//byte + byte = byte(x)(예외 상황 > byte, short 연산 결과는 무조건 int 이다 > cpu 처리 단위)
		//byte + byte = int(o)
		//short + short = short(x)
		//short + short = int(o)
		//명시적 형변환
		b3 = (byte)(b1 + b2);
		
		//***위와 같은 이유로 인해 byte, short를 거의 사용 안하고 int를 사용한다.
		
		System.out.println();
		System.out.println(10 % 3);
		System.out.println(10 % 4);
		System.out.println(10 % 5);
		System.out.println(10 % 10);
		System.out.println(10 % 11);
		//나머지 연산자 
			//패턴 예) 달력
		System.out.println(10 % 2);
		System.out.println(11 % 2);
		
				
		
		
		
	}

}
