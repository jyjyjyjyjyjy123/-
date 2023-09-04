package com.test.java.collection;

import java.util.ArrayList;

public class Ex60_List {
	public static void main(String[] args) {
		
		/*
			컬렉션, Collection
			- JCF, Java Collection Framewokr
			- (향상된) 배열
			- 기존의 순수 배열
				- 사용법 개량
				- 용도에 따른 입출력 방식/효율성 개량
			- 클래스 + 내부 순수 배열을 가지고 있다.
			- 길이 가변 > 방의 개수를 마음대로 늘리고 줄이는게 가능
			- 자료구조
			
			컬렉션 종류
			1. List 계열
				- ArrayList(*********)
				- LinkedList
				- Queue
				- Stack
				- Vector(legacy)
			2. Set 계열
				- HashSet(***)
				- TreeSet
			3. Map 계열
				- HasMap(******)
				- TreeMap
				- Properties(legacy)
				- HashTable(legacy)
				
				
				
			Collection(I)
			- list(I)
			- set(I)
			
			Map(I)
			
			
			
			ArrayList 클래스
			- ArrayList(C) -> List(I) -> Collection(I)
			- 순수 배열과 구조가 가장 유사함
			- 첨자(index)를 사용해서 요소(element)에 접근
			
			
			
			
			
			
		 */
		
//		m1();
//		m2();
//		m3();
//		m4();
//		m5();
		m6();
		
		
	}

	private static void m6() {
		//컬렉션 초기 요량 > 내부 배열의 초기 길이
		ArrayList<Integer> list = new ArrayList<Integer>(10);
		for (int i = 0; i < 10; i++) {
			list.add(i);
		}
		System.out.println(list);
		list.add(10);// 이젠 더이상 추가 계획 없음(확신)
		
		list.trimToSize();//데이터가 들어 있는 만큼의 길이 재조정
		
	}

	private static void m5() {
		//ArrayList(컬렉션) 특징
		//1. 내부에 배열을 가지고 있다.
		//2. ARRayList 클래스의 대부분의 기능이 내부 배열을 조작하는 기능으로 구성
		//3. ???길이가 가변 > 데이터를 계속 넣으면.. 계속 공간이 늘어난다?
//		ArrayList<Integer> list = new ArrayList<Integer>();
//		for (int i = 0; i < 1000000; i++) {
//			list.add(i);
//		}
//		System.out.println(list.size());
		
		ArrayList<Integer> list = new ArrayList<Integer>();
		list.add(10);
		System.out.println(list.size());
		list.add(20);
		list.add(30);
		list.add(40);
		System.out.println(list.size());
		list.add(50);
		System.out.println(list.size());
		
		
		
	}

	private static void m4() {
		//성적표
		//학생(이름,국어,영어,수학,총점,평균)
		//선택
		//- 길이로 판단
		//- 배열(고정) vs ArrayList(불확실)
		ArrayList<Student> list = new ArrayList<Student>();
		for (int i = 0; i < 10; i++) {
			int kor = (int)(Math.random()*41)+60; //60~100점
			int eng = (int)(Math.random()*41)+60; //60~100점
			int math = (int)(Math.random()*41)+60; //60~100점
			Student s = new Student("학생"+i, kor, eng, math);
			list.add(s);//배열에 학생 추가
			
		}
		System.out.println("[이름]\t[수학]\t[영어]\t[수학]\t[총점]\t[평균]");

		for(Student s : list) {
			int total = s.getKor() + s.getEng() + s.getMath();
			double avg = total /3.0;
			System.out.printf("%S\t%5d\t%5d\t%5d\t%5d\t%5.1f\n",s.getName(),s.getKor(),s.getEng(),s.getMath(),total, avg);
		}
	}

	private static void m3() {
		//차원
		int[] ns1 = new int[3];
		int[][] ns2 = new int[3][3];
		int[][][] ns3 = new int[3][3][3];
		ArrayList<Integer> ms1 = new ArrayList<Integer>();
		ArrayList<ArrayList<Integer>> ms2 = new ArrayList<ArrayList<Integer>>();
		ArrayList<ArrayList<ArrayList<Integer>>> ms3 = new ArrayList<ArrayList<ArrayList<Integer>>>();
		
		
	}

	private static void m2() {
		//ArrayList 용법
		ArrayList<String> list = new ArrayList<String>();
		//CRUD
		//	- Create(쓰기)
		//	- Read(읽기)
		//	- Update(수정)
		//	- Delete(삭제)
		//1. 요소 추가하기
		//- boolean add(T value)
		//- 배열의 맨 마지막에 추가하기 > Append
		list.add("바나나");
		list.add("딸기");
		list.add("사과");
		list.add("귤");
		list.add("파인애플");
		//2. 요소의 개수
		//- int size()
		System.out.println(list.size());
		//3. 요소 접근(읽기)
		//- T get(int index)
		System.out.println(list.get(0));
		System.out.println(list.get(4));
		System.out.println(list.get(list.size()-1));
		//4. 요소 수정
		//- list[0] = 10; 대입 or 수정
		//- String set(int index, T newValue)
		list.set(2, "포도");
		String temp = list.get(2);
		System.out.println(list.get(2));
		System.out.println(temp);
		System.out.println();
		//5. 요소 삭제하기
		//- 순수 배열의 요소(방) 삭제? > 불가능
		//- 컬렉션은 요소 삭제? > 가능
		//- T remove(int index) > 방번호를 찾아서 가제
		//- boolean remove(T value) > 값을 찾아서 삭제
		//- ***시프트가 발생한다 > 삭제된 방 이후의 모든 요소는 모두 방번호 -1 감소
		System.out.println(list.get(1));
		System.out.println(list.get(2));
		System.out.println(list.get(3));
		//list.remove(2);
		list.remove("포도"); //** 포도가 2개 이상의 경우 첫번째 포도를 삭제
		System.out.println(list.get(1));
		System.out.println(list.get(2));
		System.out.println(list.get(3));
		System.out.println();
		//6. 탐색
		//- 루프
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
		//향상된 for문(foreach문)
		//for (변수 : 배열/컬렉션)
		for (String item : list) {
			System.out.println(item);
		}
		//7. 덤프
		//- Arrays.toString(배열)
		System.out.println(list.toString());
		System.out.println(list);
		//8. 요소 추가
		//- 배열의 원하는 위치에 요소를 추가 > Insert
		//- void add(index index, T Value)
		//*** 시프트가 발생한다 > 삽입된 방 이후의 모든 요소의 방번호+1
		list.add(2,"망고"	);
		System.out.println(list);
		//9. 기타 등등
		System.out.println(list.indexOf("사과"));
		System.out.println(list.indexOf("귤"));
		System.out.println(list.lastIndexOf("귤"));
		System.out.println(list.contains("귤"));
		System.out.println();
		//10. 
		System.out.println(list.isEmpty());
		list.clear();//모든 요소 삭제 > 초기화
		System.out.println(list.isEmpty());
		System.out.println(list.size());
		//11.
		
		
	}

	private static void m1() {
		//순수 배열
		//- 타입 명시(int)
		//- 길이 명시(3)
		int[] num1 = new int[3];
		num1[0] = 10;
		num1[1] = 20;
		//요소접근 > index 활용
		System.out.println(num1[0]);
		System.out.println(num1[1]);
		System.out.println(num1.length);
		
		//컬렉션
		//- 타입 명시(Integer) > 제네릭
		//- 길이 명시(??) > 가변
		ArrayList<Integer> num2 = new ArrayList<Integer>();
		//요소 추가 > 첨자? > add() == append > 차례대로 마지막 방에 넣어라
		num2.add(10);//0번째 방
		num2.add(20);//1
		System.out.println(num2.get(0));
		System.out.println(num2.get(1));
		System.out.println(num2.size());//길이
	}
}























