package com.test.java;

import java.util.Arrays;
import java.util.Calendar;
import java.util.Scanner;

public class Ex32_Array {
	public static void main(String[] args) {
		/*
			1. 자료형 + 변수
			2. 콘솔 > 입출력
			3. 제어문****** > 알고리즘
			4. 배열****** > 자료구조 중 하나
			배열, Arry
				- 자료 구조
				- 자료형 > 참조형
				- 집합 > 집합 자료형 > 데이터를 여러개 저장할 수 있는 자료형
				- 같은 자료형 , 같은 성격 > 집합
		*/
//		m1();
//		m2();
//		m3();
//		m4();
//		m5();
//		m6();
//		m7();
//		m8();
//		m9();
//		m10();
//		m11();
		m12();
//		m13();
//		p64();
//		p66();
//		p67();
//		p68();
		
	
		

	}
	
	private static void p68() {
		Scanner scan = new Scanner(System.in);
		int[] nums = {5,6,1,3,2,8,7,10,9,4};
		System.out.print("삭제 위치: ");
		int place = scan.nextInt();
		System.out.printf("원본: %s\n",Arrays.toString(nums));
		
		for (int i=place; i<nums.length-1; i++) {
			nums[i] = nums[i+1];
		}
		nums[nums.length-1] = 0;
		
		System.out.printf("결과: %s\n",Arrays.toString(nums));
		
	}

	private static void p67() {
		Scanner scan = new Scanner(System.in);
		int[] nums = {1,2,3,4,5,6,7,8,9,10};
		System.out.print("삽입 위치: ");
		int place = scan.nextInt();
		System.out.print("값: ");
		int inputNum = scan.nextInt();
		System.out.printf("원본: %s\n",Arrays.toString(nums));
		
		for (int i=nums.length-1; i>place; i--) {
				nums[i] = nums[i-1];
		}
		nums[place] = inputNum;
		
		System.out.printf("결과: %s\n",Arrays.toString(nums));		
	}

	private static void p66() {
		int[] randomNums = new int[6];
		for (int i=0; i<randomNums.length; i++) {
			randomNums[i] = (int)((Math.random()*45)+1);
			for (int j=0; j<i; j++) {
				if (randomNums[j]==randomNums[i]) {
					i--;
					continue;
				}
			}
		}
		Arrays.sort(randomNums);//오름차순
		System.out.println(Arrays.toString(randomNums));
	}

	private static void p64() {
		int[] nums = new int[20];
		int max = 0;
		int	min = 21;
		for (int i=0; i<nums.length; i++) {
			nums[i] = (int)((Math.random()*20)+1);
		}
		for (int j=0; j<nums.length; j++) {
			if (max < nums[j]) {
				max = nums[j];
			}
			if (min > nums[j]) {
				min = nums[j];
			}
		}
		System.out.printf("원본: %s\n", Arrays.toString(nums));
		System.out.printf("최댓값: %d\n",max);
		System.out.printf("최댓값: %d\n",min);
		
	}

	private static void m13() {
		int[] nums = {5,3,1,4,2};
		Arrays.sort(nums);
		System.out.println(Arrays.toString(nums));
		
	}

	private static void m12() {
		//정렬
		//	-요소간의 크기 비교 > 재배치
		//1. 오름차순
		//	a. 숫자: 작은 수 > 큰 수
		//	b. 문자열: 문자코드값 순으로
		//	c. 날짜시간: 과거 > 미래
		//2. 내림차순
		//	a. 숫자: 큰 수 > 작은 수
		//	b. 문자열: 문자코드값 역순으로
		//	c. 날짜시간: 미래 > 과거
		
		//정렬 구현
		//	1. 개발자 구현
		//	2. JDK or Library 사용
		
		//버블 정렬
		int[] nums = {5,3,1,4,2};
		for(int i=0;i<nums.length-1;i++) {
			for (int j = 0; j<nums.length-1-i; j++) {
				if (nums[j] > nums[j+1]) {
					int temp = nums[j];
					nums[j] = nums[j+1];
					nums[j+1] = temp;
					
				}
			}
		}
		System.out.println(Arrays.toString(nums));
		
	}

	private static void m11() {
		//배열 초기화 리스트
		int[] nums = new int[3];
		System.out.println(Arrays.toString(nums));
		//초기화
		nums[0] = 100;
		nums[1] = 200;
		nums[2] = 300;
		System.out.println(Arrays.toString(nums));
		int[] nums2 = new int[] {100,200,300};
		System.out.println(Arrays.toString(nums2));
		int[] nums3 = {100, 200, 300};
		System.out.println(Arrays.toString(nums3));
		String[] names = new String[3];
		names[0] = "홍길동";
		names[1] = "아무개";
		names[2] = "하하하";
		String[] names2 = {"홍길동", "아무개", "하하하"};
		System.out.println(Arrays.toString(names));
		System.out.println(Arrays.toString(names2));
		
	}

	private static void m10() {
//		int a;//null
//		System.out.println(a);//에러
		//배열 자동 초기화
		//	- 배열(참조형)은 생성 직 후에 자동으로 초기화가 된다.
		//초기화 규칙
		//	1. 정수배열 > 0
		//	2. 실수배열 > 0.0
		//	3. 문자배열 > \0
		//	4. 논리배열 > false
		//	5. 참조형 배열 > null
		int[] nums = new int[3];
		System.out.println(Arrays.toString(nums));
		double[] nums2 = new double[3];
		System.out.println(Arrays.toString(nums2));
		char[] nums3 = new char[3];
		System.out.println(Arrays.toString(nums3));//안보임
		boolean[] nums4 = new boolean[3];
		System.out.println(Arrays.toString(nums4));
		String[] nums5 = new String[3];
		System.out.println(Arrays.toString(nums5));
		
	}

	private static void m9() {
		//유틸리티 클래스
		//	-int > Integer
		//	-double > Double
		
		//Arrays 클래스
		//	- 배열 유틸리티 클래스
		
		int[] nums = new int[3];
		nums[0]=111;
		nums[1]=222;
		nums[2]=333;
		//배열의 상태가 궁금? > 출력
		printArray(nums);
		//덤프(dump): 객체의 상태를 하나의 문자열로 풀어내는 행동
		System.out.println(nums); //[I@7d6f77cc > 해시코드
		System.out.println(Arrays.toString(nums)); //덤프
		
		//깊은복사메소드
		int[] copy;
		copy = Arrays.copyOfRange(nums, 0, nums.length);
		nums[0]	= 1000;
		System.out.println(Arrays.toString(nums));
		System.out.println(Arrays.toString(copy));
	}
	public static void printArray(int[] nums) {
		for (int i=0;i<nums.length; i++) {
			System.out.println(nums[i]);
		}
	}
	private static void m8() {
		//배열 복사
		//1. 얕은 복사, Shallow Copy
		//	- 주소값 복사
		//	- Side Effect 발생
		
		//2. 깊은 복사. Deep Copy
		//	- 요소 복사
		//	- Side Effect 없음
		int[] nums = new int[3];
		nums[0] = 100;
		nums[1] = 200;
		nums[2] = 300;
		int[] copy = new int[nums.length];
		for (int i =0; i<nums.length; i++) {
			//배열 = 배열 > x
			//int = int > 값형 복사는 데이터가 복사됨
			copy[i] = nums[i];
		}
		nums[0] = 1000;
		System.out.println(nums[0]);
		System.out.println(copy[0]);
	}

	private static void m7() {
		//배열 복사
		//값형 복사는 서로 간섭하지 않는다 > Side Effect가 발생하지 않는다.
		//***개발자가 만드는 모든 지역 변수는 Stack에서 생성한다.
		//new키워드와 함께쓰는건 Heap에 생성
		int[] nums = new int[3];
		nums[0] = 100;
		nums[1] = 200;
		nums[2] = 300;
		//nums 변수는 Heap공간의 주소를 가지고 있음 > 참조
		//변하는값은 Heap공간에 저장
		int[] copy; //주소만 저장할 수 있는 변수만 만듬
		//***배열 변수끼리의 복사는 주소값 복사다.
		copy = nums; //nums변수에 저장된 주소값을 copy에 복사
		//***nums와 copy는 가은 주소값을 가지고 같은 배열을 가리킨다. > 하나의 값을 변경시 
		//다른 배열도 영향을 받는다. > Side Effect가 발생
		nums[0] = 1000; // 변하는값은 nums[0]에 저장된 주소의 heap의 공간에 저장 
		System.out.println(nums[0]);
		System.out.println(copy[0]);
	}

	private static void m6() {
		//배열의 길이는 런타임 때 정할 수도 있다.
		Scanner scan = new Scanner(System.in);
		System.out.println("학생 수: ");
		int count = scan.nextInt();
		int[] kors = new int[count];
		System.out.println(kors.length);
	}

	private static void m5() {
		//*** 메모리의 공간은 한번 할당되면, 절대로 공간을 더 늘리거나 줄일 수 없다.
		int n = 100; //4byte
		//*** 배열은 처음부터 사용하는 최대 길이를 미리 예측 > 나중에 수정 불가능
		int[] nums = new int[3]; //4byte x 3 = 12byte
		nums[0] = 100;
		nums[1] = 200;
		nums[2] = 300;
		//갑자기 > 방이 하나 더 필요함
		
	}

	private static void m4() {
		//각 자료형
		//정수 배열(byte, short, int, long)
		long[] list1 = new long[5];
		list1[0] = 100;
		System.out.println(list1[0]);
		//실수 배열(float, double)
		double[] list2 = new double[5];
		list2[0] = 3.14;
		System.out.println(list2[0]);
		//문자 배열(char)
		char[] list3 = new char[5];
		list3[0] = 'A';
		System.out.println(list3[0]);
		//논리 배열(boolean)
		boolean[] list4 = new boolean[5];
		list4[0] = true;
		System.out.println(list4[0]);
		//참조형
		String[] list5 = new String[5];
		list5[0] = "홍길동";
		System.out.println(list5[0]);
		//
		Calendar c1;
		Calendar[] list6 = new Calendar[5]; //캘린더를 5개 만든게 아닌 캘린더 저장 변수를 5개 만든것
		list6[0] = Calendar.getInstance(); //해줘야 캘린더기능 가능
		System.out.printf("%tF\n",list6[0]);
				
	}
	
	private static void m3() {
		int[] nums = new int[3];
		//길이: 3
		//인덱스: 0 ~ 길이-1
		//방 1개(데이터) : 요소(Element)
//		nums[0] = 100;
//		nums[1] = 200;
//		nums[2] = 300;
//		nums[3] = 400;
		//배열의 방을 원하는 순서대로 접근 > 탐색 > for 문
		for (int i = 0; i<nums.length; i++) {
			nums[i] = 100*(i+1);
		}
		//출력
		for (int i = 0; i<nums.length; i++) {
			System.out.printf("nums[%d] = %d ", i, nums[i]);
		}
	}


	private static void m2() {
		//요구사항] 학생 3명 > 국어 점수 > 총점, 평균
		//추가사항] 학생 수 증가 > 300명
		
		//배열 선언하기(생성)
		//- 자료형[] 배열명 = new 자료형[길이];
		int[] kors = new int[3];
		kors[0] = 100;
		kors[1] = 70;
		kors[2] = 80;
		int total = 0;
		for (int i=0; i < kors.length; i++) {
			total += kors[i];
		}
		double avg = (double)total/kors.length;
		System.out.printf("총점: %d점, 평균: %.1f점\n",total, avg);
		
	}

	private static void m1() {
		//요구사항] 학생 3명 > 국어 점수 > 총점, 평균
		//추가사항] 학생 수 증가 > 300명
		int kor1 = 100;
		int kor2 = 90;
		int kor3 = 80;
		//+297
		int total = kor1 + kor2 + kor3;//..kor 299 + kor300;
		double avg = total/3.0;//total/300.0
		System.out.printf("총점: %d점, 평균: %.1f점\n",total, avg);
		
	}
}
