package com.test.java.collection;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

public class Ex70_TreeSet {
	public static void main(String[] args) {

		/*
		 * TreeSet - Tree 구조 > 이진 트리 구조(이진 탐색 트리, Binary Search Tree) - Set 사용법
		 * 
		 * Set - 순서가 없다 - 중복값을 가지지 않는다.
		 */
		HashSet<Integer> set1 = new HashSet<Integer>();
		TreeSet<Integer> set2 = new TreeSet<Integer>();
		set1.add(10);
		set1.add(30);
		set1.add(40);
		set1.add(20);
		set1.add(50);

		set2.add(10);
		set2.add(30);
		set2.add(40);
		set2.add(20);
		set2.add(50);

//		System.out.println(set1);
//		System.out.println(set2);

		// 탐색 > for / iterator
		for (int n : set2) {
			System.out.println(n);
		}

		Iterator<Integer> iter = set2.iterator();
		while (iter.hasNext()) {
			System.out.println(iter.next());
		}
		System.out.println();

		// TreeSet 고유 기능
		System.out.println(set2.first());// 가장 작은
		System.out.println(set2.last());// 가장 큰

		System.out.println(set2.headSet(30));// exclusive, 보다 작은 크기들
		System.out.println(set2.tailSet(30));// inclusive, 보다 큰 크기들(본인 포함)
		System.out.println(set2.subSet(20, 40));// 사이의 크기들 (최소 포함)
		System.out.println();

		HashSet<Integer> set3 = new HashSet<Integer>();
		set3.add(20);
		set3.add(50);
		set3.add(30);
		set3.add(10);
		set3.add(40);
		System.out.println(set3);
		ArrayList<Integer> list = new ArrayList<Integer>(set3);
		Collections.sort(list);
		System.out.println(list);

	}
}
