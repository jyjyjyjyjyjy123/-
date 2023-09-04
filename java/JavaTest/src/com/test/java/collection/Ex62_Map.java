package com.test.java.collection;

import java.util.HashMap;
import java.util.Set;

public class Ex62_Map {
	public static void main(String[] args) {
		/*
		 * 
		 * ArrayList
		 * - 요소 접근 > 첨자(index) 사용
		 * - 순서가 있는 데이터 집합(방번호 == 요소의 순서)
		 * ex) 강의실 6개 > 1강의실, 2강의실, 3강의실.....
		 * - 스칼라 배열(Scalar Array)
		 * - 요소 일관 접근 > 루프(for)
		 * - 요소끼리 구분이 힘들다 > 방번호 > 의미가 없다.
		 * - 첨자(index)는 유일하다.
		 * - 값(value)은 중복이 가능하다. > 방번호가 유일해서...
		 * 
		 * HashMap
		 * - 요소 접근 > 키(Key) 사용
		 * - 순서가 없는 데이터 집합(방번호x)
		 * ex) 강의실 6개> 햇님반, 달님반, 별님반...
		 * - 키(Key) -> 값(value)
		 * - 맵(Map), 딕셔너리(Dictionary) = 사전 구조
		 * - 연관 배열  
		 * - 요소 일관 접근 불가능
		 * - 요소끼리 구분이 용이하다 > 식별자(key) > 방의 의미 > 가독성
		 * - 키(key)는 유일하다.
		 * - 값(value)은 중복이 가능하다. > 키가 유일해서..
		 */
		
		HashMap<String,Integer> map = new HashMap<String, Integer>();
		//1. 요소 추가
		//- V put(K key, V value)
		map.put("국어", 100); //int 국어 = 100
		map.put("영어", 90); //int 영어 = 90
		map.put("수학", 80); //int 수학 = 80
		//2. 요소 개수
		//- int size()
		System.out.println(map.size());
		//3. 요소 읽기(꺼내기)
		//- V get(K key)
		System.out.println(map.get("국어"));
		//4. 일괄 탐색 > 불가능 > 존재하긴함
		//5. 요소 수정
		//- V put(K key, V value)
		map.put("국어", 95);//추가(x), 수정(o) > 이유
		System.out.println(map.get("국어"	));
		//6. 요소 검색
		//- boolean containsKey(K key)
		//- boolean containsValue(V value)
		//- indexOf > 없음
		System.out.println(map.containsKey("국어"));
		System.out.println(map.containsKey("국사"));
		System.out.println(map.containsValue(95));
		//7. 요소 삭제
		//- V remove(K key)
		map.remove("국어");
		System.out.println(map.get("국어"));
		//8. 초기화
		//- V clear
		map.clear();
		System.out.println(map.size());
		
		
		map.put("국어", 100);
		map.put("영어", 90);
		map.put("수학", 80);
		//반복문으로 이용 방법
		Set<String> set = map.keySet();
		System.out.println(set);
		for (String key : set) {
			System.out.println(key + ": " + map.get(key));
		}
		
		//교실
		HashMap<String,String> list = new HashMap<String, String>();
		list.put("반장", "홍길동");
		list.put("부반장", "아무개");
		list.put("미화부장", "하하하");
		
	}
}
