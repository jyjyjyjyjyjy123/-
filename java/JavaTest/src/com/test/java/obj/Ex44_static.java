package com.test.java.obj;

public class Ex44_static {
	//1. 클래스 로딩, Class Loading
	//- 프로그램을 실행하기 전에 클래스의 정의를 미리 읽는 작업
	//- 클래스의 정의를 메모리에 얹는 작업
	//- 클래스 로딩 과정에서 모든 static 키워드 인식 > 메모리 실체화(구현)
	
	//2. main() 실행
	public static void main(String[] args) {
		/*
			static 키워드
			- 클래스 or 클래스 멤버에 붙이는 키워드
		*/
		
		//상황] 학생3명 > 300명
		//"역삼 중학교" > 개명 > "대치 중학교"
		Student.setSchool("역삼 중학교");//정적 변수 > 공용 데이터***
		
		Student s1 = new Student();
		s1.setName("홍길동");
		s1.setAge(15);
		//s1.setSchool("역삼중학교");//static 멤버를 객체 참조 변수를 통해서 접근하려고 시도 > 불가능 
		Student s2 = new Student();
		s2.setName("아무개");
		s2.setAge(15);
		//s2.setSchool("역삼중학교");
		Student s3 = new Student();
		s3.setName("이순신");
		s3.setAge(16);
		//s3.setSchool("역삼중학교");
		
		System.out.println(s1.info());
		System.out.println(s2.info());
		System.out.println(s3.info());
		
		
		
//		
//		Util util = new Util();
//		
//		int result = util.add(10, 20);
//		System.out.println(result);
//		
//		result = util.add(30, 40);
//		System.out.println(result);
//		
//		Util util2 = new Util();
//		
//		result = util2.add(10, 20);
//		System.out.println(result);
		
		int result = Util.add(10,20);
		System.out.println(result);
		result = Util.add(30,40);
		System.out.println(result);
		
		
		
		
	}
}

class Student {
	//객체 변수
	private String name;
	private int age;
	//private String school;//**
	//정적 변수, 클래스 변수, 공용 변수 > 사람이 달라도 같은 값을 가져야 한다면
	private static String school;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
//	public String getSchool() {
//		return school;
//	}
//	public void setSchool(String school) {
//		this.school = school;
//	}
	public static String getSchool() {
		return school;
	}
	public static void setSchool(String school) {
		Student.school = school;
	}
	public String info() {
		return String.format("%s(%d) %s", this.name, this.age, Student.school);
	}
	
	public void aaa() {
		//객체 메소드
		//- 개인과 관련된 작업 > 가능
		//- 집합과 관련된 작업 > 가능
		System.out.println(this.name); //객체 변수
		System.out.println(Student.school); //정적 변수
		this.setAge(15); //객체 메소드
		Student.setSchool("역삼 중학교"); //정적 메소드
	}
	
	public static void bbb() {
		//정적 메소드
		//- 개인과 관련된 작업 > 불가능
		//- 집합과 관련된 작업 > 가능
		System.out.println(Student.school); //정적 변수
		//System.out.println(name); //스태틱에서는 객체 변수는 접근할수 없다
		Student.setSchool("역삼 중학교"); //정적 메소드
		//this.setAge(15); //객체 메소드
	}
}

class Util{
	public static int add(int a, int b) {
		return a + b;
	}
}




class Phone{
	//객체 멤버 변수
	private String color;
	private String number;
	public int size;
	//정적 멤버 변수
	private static int weight;
	public static int battery;
	
	public Phone() {
		
	}
	
	public Phone(String color, String number) {
		
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public static int getWeight() {
		return weight;
	}

	public static void setWeight(int weight) {
		Phone.weight = weight;
	}

	public static int getBattery() {
		return battery;
	}

	public static void setBattery(int battery) {
		Phone.battery = battery;
	}

}