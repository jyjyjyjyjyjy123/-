package com.test.jva.stream;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.stream.IntStream;
import java.util.stream.Stream;

import com.test.data.Data;
import com.test.data.Item;
import com.test.data.User;
import com.test.java.collection.Student;
import com.test.util.MyFile;


public class Ex74_Stream {
	public static void main(String[] args) {
		/*
			자바 스트림
			1. 입출력 스트림
				- 파일 입출력, 콘솔 입출력, 네트워크 입출력...
				
			2. 스트림
				- Java 8(JDK 1.8)
				- 람다식 + 함수형 인터페이스
				- 배열(컬렉션)의 탐색(조작) 지원
				- 파일 입출력 지원
				- 디렉토리 탐색 지원
				
			배열, 컬렉션 탐색 
			1. for문(루프변수)
			2. 향상된 for문
			3. Iterator
			4. 스트림
			
			함수형 인터페이스
			1. Consumer
				- (매개변수) -> {구현부}
			2. Supplier
				- () -> {return 값}
			3. Function
				- (매개변수) -> {return 값}
			4. Operator
				- (매개변수) -> {return 값}
				- 매개변수의 반환값의 자료형이 동일
			5. Predicate
				- (매개변수) -> {return 값}
				- 반환값이 boolean
				
				
			stream()
			
			.filter(Predicate)
			.map(Function)
			.sorted(Comapartor)
			.distinct()
			
			.count()/max()/min()/sum()/average()
			.allMatch()/anyMatch()/noneMatch()
			.forEach()
		 */
		
		String path = "test.java";
		//배포
		//개발자 자바 소스 > (전달) > 다른 개발자
		//1. 소스 자체 전잘 > MyFile.java
		//2. 컴파일한 실행 파일을 전달 > MyFile.class > 압축(1개 파일) > *.jar
		
		//import > 같은 프로젝트내에서만 가능
		MyFile mf = new MyFile();
		
//		m1();
//		m2();
//		m3();
//		m4();
//		m5();
//		m6();
//		m7();
//		m8();
//		m9();
		m10();
		
		
		
	}

	private static void m10() {
		//집계, 통계
		//- count(), max(), min(), sum(), avg()
		//- 최종 파이프
		//- 요소들을 가공해서 통계값
		
		System.out.println(Data.getIntList().stream().count());
		//Option<Integer>
		System.out.println(Data.getIntList().stream().max((a,b) -> a-b).get());
		System.out.println(Data.getIntList().stream().min((a,b) -> a-b).get());
		
		int sum = Data.getIntList().stream().mapToInt(n -> n).sum();
		System.out.println(sum);
		double avg = Data.getIntList().stream().mapToInt(n -> n).average().getAsDouble();
		System.out.println(avg);
		
		
	}

	private static void m9() {
		// 매칭
		//- allMatch(), anyMatch(), noneMatch()
		//- 최종파이프
		//- 스트림 요소들이 제시한 조건을 만족 유무 판단?
		// a. boolean allMatch(predicate) > 모든 요소가 조건을 100% 만족
		// b. boolean anyMatch(predicate) > 일부 요소가 조건을 만족
		// c. boolean noneMatch(predicate) > 모든 요소가 조건을 만족 X
		
		//요구사항] 배열 > 짝수만 있는지?
		int[] nums = {1,2,3,4,5};
		boolean result = false;
		for (int n : nums) {
			if (n%2 == 1) {
				result = true;
				break;
			}
		}
		if (Arrays.stream(nums).allMatch(n -> n%2==0)) {
			System.out.println("짝수 배열");
		}else {			
			System.out.println("홀수 발견!");
		}
		
		System.out.println(Arrays.stream(nums).allMatch(n -> n%2==0));
		System.out.println(Arrays.stream(nums).anyMatch(n -> n%2==0));
		System.out.println(Arrays.stream(nums).noneMatch(n -> n%2==0));
		
	}

	private static void m8() {
		//정렬
		//- sorted()
		//- 중간 파이프
		//- 배열/컬렉션의 sort()와 사용법이 동일 > Comparator 구현
		
		Data.getIntList(10).stream().sorted((a,b) -> b-a).forEach(n -> System.out.println(n));
		
	}

	private static void m7() {
		//매핑
		//- map(), mapXXX()
		//- 중간 파이프
		//- 변환 작업
		
		List<String> list = Data.getStringList(10);
		System.out.println(list);
		list.stream().filter(word -> word.length() <= 3).forEach(word -> System.out.println(word));
		System.out.println();
		list.stream().map(word -> word.length()).forEach(num -> System.out.println(num));;
		System.out.println();
		String[]names = {"홍길동","아무개","이순신","권율","강감찬","연개소문","홍길동","이순신","남궁장군","연개소문"};
		//이름 추출
		Arrays.stream(names).map(name -> name.substring(1)).forEach(name -> System.out.println(name));
		System.out.println();
		List<Student>slist = new ArrayList<Student>();
		slist.add(new Student("가가가", 90, 100, 90));
		slist.add(new Student("나나나", 90, 60, 70));
		slist.add(new Student("다다다", 50, 60, 50));
		slist.add(new Student("라라라", 70, 80, 90));
		slist.add(new Student("마마마", 40, 80, 90));
		
		slist.stream().map(s ->{
			if((s.getKor()+s.getEng()+s.getMath()) >= 200) {
				return "합격";
			} else {
				return "불합격";
			}
		}).forEach(result -> System.out.println(result));
		System.out.println();
		slist.stream().map(s -> {
			if((s.getKor()+s.getEng()+s.getMath()) >= 200) {
				Result r = new Result();
				r.setName(s.getName());
				r.setResult("합격");
			} else {
				Result r = new Result();
				r.setName(s.getName());
				r.setResult("불합격");
			}
		}).forEach(r -> {
			System.out.println("이름: "+r.getName);
			System.out.println("결과: "+r.getResult);
		});
	
	}

	private static void m6() {
		//중복 제거
		//- distinct()
		//- 중간 파이프
		//- 앞의 스트림에서 중복 요소를 제거하고 > 유일한 요소만 남은 새로운 스트림 반환한다.
		
		List<Integer>list = Data.getIntList();
		System.out.println(list.size());
		System.out.println();
		//요구사항] 위의 배열에서 중복값 제거
		//Case 1.
		Set<Integer> set1 = new HashSet<Integer>();
		for (int n : list) {
			set1.add(n);
		}
		System.out.println(set1.size());
		System.out.println();
		//Case 2.
		Set<Integer> set2 = new HashSet<Integer>(list);//중복값 제거
		System.out.println(set2.size());
		System.out.println();
		//Case 3.
		list.stream().distinct().forEach(n -> System.out.println(n));
		System.out.println(list.stream().distinct().count());
		System.out.println();
		String[]names = {"홍길동","아무개","이순신","권율","강감찬","연개소문","홍길동","이순신","남궁장군","연개소문"};
		Arrays.stream(names).distinct().filter(name -> name.length()==3).forEach(name -> System.out.println(name));
		System.out.println();
		System.out.println();
		List<Cup>clist = new ArrayList<Cup>();
		clist.add(new Cup(Cup.BLACK, 200));
		clist.add(new Cup(Cup.BLUE, 180));
		clist.add(new Cup(Cup.RED, 160));
		clist.add(new Cup(Cup.WHITE, 180));
		clist.add(new Cup(Cup.YRLLOW, 80));
		clist.add(new Cup(Cup.BLACK, 120));
		clist.add(new Cup(Cup.BLUE, 100));
		clist.add(new Cup(Cup.RED, 140));
		clist.add(new Cup(Cup.WHITE, 180));
		clist.add(new Cup(Cup.YRLLOW, 80));
		//Set, distinct() > 중복 객체를 제거하려면?
		//1. hashCde() 재정의
		//2. equals() 재정의
		clist.stream().distinct().forEach(cup -> System.out.println(cup));
		
	}

	private static void m5() {
		//스트림
		//- 데이터 소스로부터 탐색/조작 가능한 도구
		//- list.stream().forEach()
		
		//파이프, pipe
		//- 스트림 객체 메소드
		//1. 중간 파이프
		//	- 반환값 O + 스트림 반환
		
		//2. 최종 파이프
		//	- 반환값 X + void
		//	- 반환값 O + 다른 자료형 반환
		
		//요소 처리
		//- forEach()
		//- 최종 파이프
		//- Consumer
		
		//필터링
		//- filter()
		//- 중간 파이프
		//- Predicate
		
		List<Integer> list = Data.getIntList(20);
		System.out.println(list);
		//요구사항] 짝수만 출력
		for (int n : list) {
			if(n%2==0) {
				System.out.printf("%4d",n);				
			}
		}
		System.out.println();
		list.stream().forEach(num->{
			if (num%2==0) {
				System.out.printf("%4d",num);
			}
		});
		System.out.println();
		list.stream().filter(num -> num%2==0).forEach(num -> {
			System.out.printf("%4d",num);
		});
		System.out.println();
		System.out.println();
		
		Data.getStringList().stream().filter(word -> word.length() >= 5).forEach(word -> System.out.println(word));
		System.out.println();
		Data.getUserList().stream().filter(user -> user.getWeight() >= 70 && user.getGender() == 1).forEach(user -> System.out.println(user));
		System.out.println();
		Data.getUserList().stream()
			.filter(user -> user.getWeight() >= 70)
			.filter(user -> user.getGender() == 1)
			.filter(user -> user.getHeight() >= 180)
			.forEach(user -> System.out.println(user));	
	}

	private static void m4() {
		//스트림 얻어오는 방법
		//1. 배열로부터
		//2. 컬렉션으로부터		//1, 2번은 연습하면 좋음
		//----------------
		//3. 숫자범위로부터		//3, 4, 5
		//4. 파일로부터
		//5. 디렉토리부터
		
		//1. 배열로부터
		int[] nums1 = {10,20,30};
		Arrays.stream(nums1).forEach(num -> System.out.println(num));
		System.out.println();
		//2 컬렉션으로부터
		ArrayList<Integer> nums2 = new ArrayList<Integer>();
		nums2.add(100);
		nums2.add(200);
		nums2.add(300);
		nums2.stream().forEach(num -> System.out.println(num));
		System.out.println();
		//3. 숫자범위로부터
		//Stream<Integer> : 범용 스트림 > forEach > Consumer<Integer>
		//InStream		  : 전용 스트림 > forEach > IntConsumer
		IntStream.range(1, 10).forEach(num -> System.out.println(num));
		//4. 파일로부터
		//- 스트림 > 파일 읽기
		//java.io > 버전업 > java.nio
		//.: 현재 실행파일이 잇는폴더
		// - 자바 콘솔 프로젝트에서는 프로젝트 루트 폴더를 표현
		try {
			Path path = Paths.get(".\\data\\number.txt");
			Files.lines(path).forEach(line -> System.out.println(line));
		} catch (Exception e) {
			System.out.println("at Ex74_Stream.m4");
			e.printStackTrace();
		}
		//5. 디렉토리부터
		//- 목록보기 : dir.listFiles()
		try {
			Path dir = Paths.get(".\\data\\number.txt");
			Files.list(dir).forEach(p -> {
				System.out.println(p.getFileName());
				System.out.println(p.toFile().isFile());
			});			
		} catch (Exception e) {
			System.out.println("at Ex74_Stream.m4");
			e.printStackTrace();
		}
	}

	private static void m3() {
		//함수형 프로그래밍 == 의식의 흐름대로..
//		Data.getIntList().stream().forEach(num -> System.out.printf("%4d",num));
//		System.out.println();
		//스타일에따라 다름
//		Data
//			.getIntList()
//			.stream()
//			.forEach(num -> System.out.printf("%4d",num));
//		System.out.println();
		Data.getUserList().stream().forEach(user -> {
			System.out.println("[회원정보]");
			System.out.println("이름: "+user.getName());
			System.out.println("나이: "+user.getAge());
			System.out.println("성별: "+user.getGender());
			});
		System.out.println();
		Data.getItemList().stream().forEach(item -> {
			System.out.println(item.getName());
			System.out.println(item.getSize());
			System.out.println(item.getColor());
		});
		
	}

	private static void m2() {
		//배열(컬렉션) 탐색
		List<String>list = Data.getStringList(10);
		//1. for
		for (int i = 0; i < list.size(); i++) {
			System.out.print(list.get(i)+" ");
		}
		System.out.println();

		//2. 향상된 for
		for (String word : list) {
			System.out.print(word + " ");
		}
		System.out.println();
		System.out.println();
		//3. Iterator
		Iterator<String> iter = list.iterator();
		while (iter.hasNext()) {
			System.out.print(iter.next()+" ");
		}
		System.out.println();
		System.out.println();
		//4. Stream
		Stream<String>stream = list.stream();
		Consumer<String> c1 = str -> System.out.println(str);
		//forEach 메소드
		//1. stream으로부터 얻어낸 데이터 > 1개씩 가져온다.(향상된 for문처럼)
		//2. 가져온 데이터 > Consumer.accept() 메소드의 인자 전달 + 메소드 호출
		//3. 반복 x 요소만큼
		stream.forEach(c1);
		stream = list.stream();
		stream.forEach(c1);
		//메소드 체이닝 > 함수형 프로그래밍 방식
		list.stream().forEach(str -> System.out.println(str));
	}

	private static void m1() {
		int[] nums1 = Data.getIntArray();
		System.out.println(Arrays.toString(nums1));
		System.out.println(nums1.length);
		
		int[] nums2 = Data.getIntArray(5);
		System.out.println(Arrays.toString(nums2));
		//List<Integer>
		List<Integer> nums3 = Data.getIntList();
		System.out.println(nums3.size());
		List<Integer> nums4 = Data.getIntList(5);
		System.out.println(nums4);
		
		String[] txt = Data.getStringArray();
		System.out.println(Arrays.toString(txt));
		
		Item[] items = Data.getItemArray();
		System.out.println(Arrays.toString(items));
		
		User[] list = Data.getUserArray();
		System.out.println(Arrays.toString(list));
		
		
	
	}
}

class Cup {
	
	public final static int BLACK = 1;
	public final static int WHITE = 2;
	public final static int RED = 3;
	public final static int YRLLOW = 4;
	public final static int BLUE = 5;	
//	private String color2; //주관식 > 실수할 확률이 높음
	
	private int color;//객관식 > 빨강, 파랑 .. 선택하는 값 > 열거값
	private int size;
	
	public Cup(int color, int size) {
		this.color = color;
		this.size = size;
	}
	public int getColor() {
		return color;
	}
	public void setColor(int color) {
		this.color = color;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	@Override
	public String toString() {
		return "Cup [color=" + color + ", size=" + size + "]";
	}
	//개발자의 의도대로 객체를 비교하려면...
	@Override
	public int hashCode() {
		return (""+this.color + this.size).hashCode();
	}
	@Override
	public boolean equals(Object obj) {
		return this.hashCode() == obj.hashCode();
	}
}

class Result {
	private String name;
	private String result;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
}
















