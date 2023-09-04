package com.test.java;

public class Ex08_Escape {
	public static void main(String[] args) {
		
		//특수 문자 > Escape Sequence
			//컴파일러가 번역을 할 때, 소스상에 있는 문자를 그대로 출력하지 않고,
			//미리 약속된 표현으로 바꿔서 출력하는 요소
			
		//1. \n
			//new line, line feed
			//개행 문자
			//키보드의 Enter(새 다음줄)
		char c1 = '\n';
		String s1= "\n";
		//요구사항] "안녕하세요. 홍길동입니다." 출력해주세요.
		System.out.println("안녕하세요. 홍길동입니다."); //좋지않은 습관
		//수정사항] "안녕하세요."와 "홍길동입니다." 각각 다른 줄에 출력해주세요.		
		String msg = "안녕하세요.\n홍길동입니다.";
		System.out.println(msg);
		System.out.println();
		
		//2. \r
			//carriage return
			//캐럿의 위치를 현재 라인의 맨 앞으로 이동
			//키보드의 Home(현재라인의 젤 앞으로 이동)
			//이클립스에서는 정상 작동 안됨 
		msg = "안녕하세요.\r홍길동님";
		System.out.println(msg);
			//정상은 Insert(덮어쓰기)가 작동된채로 작동되어 "홍길동님요."로 출력됨

		//운영체제의 엔터
			//1. 윈도우 - \r\n
			//2. 맥os - \r
			//3. 리눅스 - \n
		
		//3. \t
			//tap
			//기본적으로 4칸 간격
			//서식 작업의 열 맞추기용
		msg = "하나\t둘\t셋";
		System.out.println(msg);
		
		//4. \b
			//backspace
			//이클립스 콘솔에서는 동작 안함
		msg = "홍길동\b입니다";
		System.out.println(msg);
			//정상작동시 "홍길입니다."
		
		//5. \", \', \\
			//(", ', \)는 이미 역할을 가지고 있는 문자이기 때문에
			//출력하기 위해 의미없게 만드는 이스케이프 문자
		//요구사항] 홍길동 : "안녕하세요"
		msg = "홍길동 : \"안녕하세요\"";
		System.out.println(msg);
		//요구사항] 수업 폴더의 경로를 출력하세요(C:\class\code\java)
		System.out.println("수업폴더 = C:\\class\\code\\java");
		
	}
}
