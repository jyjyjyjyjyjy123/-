package com.test.java;

import java.util.Scanner;

public class Ex17_Operator {
	public static void main(String[] args) {
		
		/*
			논리 연산자
				&&(and), ||(or), !(not), ^(xor)
				2항 연산자 (&&, ||, ^)
				1항 연산자 (!)
				피연산자를 대상으로 정해진 규칙에 따라 연산 결과를 반환
				피연산자의 자료형이 boolean이다.
				연산의 결과가 boolean이다.
						
			논리곱
				T && T = T
				T && F = F
				F && T = F
				F && F = F
			논리합
				T || T = T
				T || F = T
				F || T = T
				F || F = F
			부정(논리를 반대로 뒤집기)
				!T = F
				!F = T
			베타적 논리합(같은때 F, 다를때 T)
				T ^ T = F
				T ^ F = T
				F ^ T = T
				F ^ F = F
		*/
		
		
		
		
		/*
			대입 연산자(할당 연산자)
				=
				+=, -=, *=, /=, %= (복합 대입 연산자)
				LValue(변수) = RValue(상수, 변수)
				LValue와 RValue의 자료형은 반드시 동일해야한다. > 형변환
				대입 연산자는 모든 연산자들 중 우선순위가 가장 낮다.
				
			연산자 우선 순위
				산술 -> 비교 -> 논리 -> 대입 
			연산자 연산 방향
				대입, 증감 : 오른쪽 > 왼쪽
				나머지 : 왼쪽 > 오른쪽
			
		*/
		
		int sum = 10 + 20 * 3;
		System.out.println(sum);
		
		//복합 대입 연산자
		//요구사항 ] n에 1을 추가하기(누적)
		int n = 10;
		n = n + 1;
		System.out.println(n);
		n += 1;
		System.out.println(n);
		n -= 1;
		System.out.println(n);
		n *= 2;
		System.out.println(n);
		n /= 2;
		System.out.println(n);
		n %= 2;
		System.out.println(n);
		
		/*
			증감 연산자
				++(증가), --(감소)
				1항 연산자
				피연산자는 숫자형을 가진다.
				누적 연산을 한다. > 기존의 값에 1을 더하거나, 1을 뺀다
		*/
		n = 10;
		n = n + 1; //대입, 산술 연산자
		n += 1; //복합 대입 연산자
		++n; //증감 연산자
		System.out.println(n);
		//증감연산자의 위치를 바꿀수 있다. > 위치에따라 연산자 우선 순위가 달라진다.
		++n; //전치 > 연산자 우선 순위가 가장 높음
		n++; //후치 > 연산자 우선 순위가 가장 낮음
		System.out.println();
		
		n = 10;
		int result = 0;
		result = 10 + ++n; //n+1 > 10 + n > 대입
		System.out.println(result);
		n = 10;
		result = 0;
		result = 10 + n++; // 10 + n 계산 > result에 대입 > n+1 이기 때문에 결과는 20이고 n의 값은 11이다.
		System.out.println(result);
		//증감 연산자를 다른 연산자와 한문장에서 사용하지 말것!
		
		/*
			조건 연산자
				?:
				A? B : C
				3항 연산자
				A는 boolean
				B, C는 상수, 변수(데이터)
				A 조건이 참이면 B를 반환
				A 조건이 거짓이면 C를 반환
			
		*/
		boolean flag = true;
		String m1 = "참";
		String m2 = "거짓";
		String result2 = flag ? m1 : m2;
		System.out.println(result2);
		
//		Scanner scan = new Scanner(System.in);
//		System.out.println("나이 : ");
//		int age = scan.nextInt();
//		//19세 이상 60세 미만 > 통과 or 거절
//		result2 = age >= 19 && age < 60 ? "통과" : "거절";
//		System.out.printf("입력하신 나이 %d세는 %s입니다.", age, result2);
		System.out.println();
		
		//3항 연산자 > if문 사용
				
		//비트 연산자 
			//비트로 쪼개서 계산
		int a = 10;
		int b = 3;
		System.out.println(a & b); //2
		System.out.println(a | b); //11
		
	}

}
