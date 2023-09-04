package com.test.java.collection;

import java.util.Queue;
import java.util.Stack;

public class Ex61_Stack {
	public static void main(String[] args) {
		/*
			
			자료구조(컬렉션)
			- 물리적인 특징(내부 구조)
			- 추상적인 특징(사용법)
			
			ADT
			- Abstract Data Type
			- Stack, Queue
			
			List
			- ArrayList
			- Queue
			- Stack
			
			Stack
			- 후입선출
			- LIFO, Last Input First Output
			- 저장소에 나중에 들어간 요소가 가장 먼저 나온다.
			ex) 메모리 구조(Stack)
			ex) 되돌리기(Ctrl+Z), 다시하기(Ctrl+Y)
			Queue
			- 선입선출
			- FIFO, First Input First Output
			- 저장소에 먼저 들어간 요소가 가장 먼저 나온다.
			
		 */
		
		m1();
		m2();
		m3();
		
	}

	private static void m3() {
		Queue<String> queue = new Queue<String>() {
		};
		//1. 요소 추가하기
		//- boolean add(T value)
		//2. 요소 개수
		//3. 요소 읽기(꺼내기)
		//4.
		//5. 요소 확인
		
	}

	private static void m2() {
		Stack<String> stack = new Stack<String>();
		
		
	}

	private static void m1() {
		// TODO Auto-generated method stub
		
	}
}
