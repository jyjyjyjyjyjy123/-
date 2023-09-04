package com.test.java;

public class Ex33_Array {
	public static void main(String[] args) {
		
		//다차원 배열
		//2차원
		//3차원
		//4차원 이상
//		m1();
//		m2();
//		m3();
//		m4();
		m5();
		
	}

	private static void m5() {
		//문제 설명
		//5X5 2차원배열
		int[][]	nums= new int[5][5];
		int n = 1;
		for(int  i=0;i<nums.length; i++) {
			for (int j=0; j<nums[0].length; j++) {
				nums[i][j] = n;
				n++;
			}
		}
		//출력 > 수정없이 그대로 사용
		for(int  i=0;i<nums.length; i++) {
			for (int j=0; j<nums[0].length; j++) {
				System.out.printf("%5d", nums[i][j]);
			}
			System.out.println();
		}
		
	}

	private static void m4() {
		String[] meber = {"일일일", "이이이","삼삼삼","사사사","오오오","육육육","칠칠칠","팔팔팔","구구구","십십십"};
		
		//1. 배열 > 원하는 데이터 존재하는지 검색
		String name = "홍길동";
		if (contains(meber,name)) {
			System.out.printf("%s 발견\n",name);
		} else {
			System.out.printf("%s 없음\n",name);
		}
		//2. 배열 > 원하는 데이터 존재하는지 검색 > 몇번째 방에 있는지? > 방번호
		int index = indexOf(meber,name);
		System.out.println(index);
	}

	private static int indexOf(String[] meber, String name) {
		for (int i=0; i<meber.length; i++) {
			if (meber[i].equals(name)) {
				return i;
			}
		}
		return -1;
	}

	private static boolean contains(String[] meber, String name) {
		for (int i=0; i<meber.length; i++) {
			if (meber[i].equals(name)) {
				return true;
			}
		}
		return false;
	}

	private static void m3() {
		int[] nums1 = {1,2,3};
		for (int i=0;i<nums1.length;i++) {
			System.out.println(nums1[i]);
		}
		System.out.println();
		int[][] nums2 = {{1,2,3},{4,5,6}};
		for (int i=0;i<nums2.length;i++) {
			for (int j=0;j<nums2[0].length;j++) {
				System.out.println(nums2[i][j]);
			}
		}
	}

	private static void m2() {
		//다차원 초기화 리스트
		int[] nums1 = {1,2,3};
		int[][] nums2 = {{1,2,3},{4,5,6}};
		int[][][] nums3 = {{{1,2,3},{4,5,6}},{{7,8,9},{10,11,12}}};
		int[][][] nums4 = 
		{	
			{	
				{1,2,3},
				{4,5,6}
		  	},
			{
		  		{7,8,9},
		  		{10,11,12}
			}
		};
		
	}

	private static void m1() {
		//1차원 배열
		int[] nums1 = new int[3];
		nums1[0] = 100;
		nums1[1] = 200;
		nums1[2] = 300;		
		for (int i=0; i<nums1.length; i++) {
			System.out.printf("nums1[%d] = %d\n", i ,nums1[i]);
		}
		System.out.println();
		//2차원 배열
		int[][] nums2 = new int[2][3];
		nums2[0][0] = 100;
		nums2[0][1] = 200;
		nums2[0][2] = 300;
		nums2[1][0] = 400;
		nums2[1][1] = 500;
		nums2[1][2] = 600;
		for (int i=0; i<2; i++) {
			for (int j=0; j<3; j++) {
				System.out.printf("nums2[%d][%d] = %d\n", i, j,nums2[i][j]);
			}
		}
		System.out.println();
		//3차원 배열
		int[][][] nums3 = new int[2][2][3];
		nums3[0][0][0] = 100;
		nums3[0][0][1] = 200;
		nums3[0][0][2] = 300;
		nums3[0][1][0] = 400;
		nums3[0][1][1] = 500;
		nums3[0][1][2] = 600;
		nums3[1][0][0] = 700;
		nums3[1][0][1] = 800;
		nums3[1][0][2] = 900;
		nums3[1][1][0] = 1000;
		nums3[1][1][1] = 1100;
		nums3[1][1][2] = 1200;
		for (int i=0; i<2; i++) {
			for (int j=0; j<2; j++) {
				for (int k=0; k<3; k++) {
					System.out.printf("nums3[%d][%d][%d] = %d\n", i, j, k,nums3[i][j][k]);
				}
			}
		}
	}
}
