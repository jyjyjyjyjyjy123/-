package com.test.java;

import java.util.Calendar;
import java.util.Date;

public class Ex26_DataTime {
	public static void main(String[] args) {
		
		/*
			자바 자료형
				1. 값형 
					-8가지
				2. 참조형
					-클래스
						-String
						-날짜시간
						
			자바 날짜/시간 자료형
				1. Data 클래스
				2. Calendar 클래스
				3. 추가 클래스 > JDK 1.8(2014)
				
			- 시각 > 시간의 흐름의 한 포인트 예)2023년 7월 20일 16시 10분 58초
			- 시간 > 시간의 거리, 양 예)8시간 수업
			
			시각, 시간 > 연산
			시각 + 시각 = X
			
			시각 - 시각 = O(시간)
			시간 + 시간 = O(시간)
			시간 - 시간 = O(시간)
			
			시각 + 시간 = O(시각)
			시각 - 시간 = O(시각)
			
			
		*/
//		m1();
//		System.out.println();
//		m2();
//		m3();
//		m4();
//		m5();
//		m6();
//		m7();
		m8();
		
	}

	private static void m8() {
		//현재 시간의 tick(ms)
		Calendar now = Calendar.getInstance();
		System.out.println(now.getTimeInMillis());
		//전용 메소드(현재 시간의 tick만 구할 수 있음)
		System.out.println(System.currentTimeMillis());
		
	}

	private static void m7() {
		//시간 + 시간 = 시간
		//시간 - 시간 = 시간
		
		//점심시간: 2시간 + 1시간
		//시간은 Calendar 안씀
		int hour = 2;
		int add = 1;
		System.out.println(hour + add + "시간");
		//2시간 30분 + 10분
		hour = 2;
		int min = 30;
		min += 10;
		System.out.printf("%d시%d분\n", hour, min);
		//2시간40분 + 30분
		min = 40;
		min += 30;
		hour = hour + min / 60;
		min = min % 60;
		System.out.printf("%d시%d분\n", hour, min);
		
		
	}

	private static void m6() {
		//시각 - 시각 = 시간
		//1970.01.01 00:00:00
		
		Calendar now = Calendar.getInstance(); //현재
		Calendar end = Calendar.getInstance(); //종강일
		end.set(2023, 11, 27);
		
		//tick
		//1000ms - 1초
		long nowTick = now.getTimeInMillis();
		System.out.println(nowTick); //기준시간으로 부터 현재 까지의 ms단위
		long endTick = end.getTimeInMillis();
		System.out.println(endTick); //기준시간으로 부터 종강일 까지의 ms단위
		long gap = endTick - nowTick;
		System.out.printf("수업 남은 시간: %d일\n", gap/1000/60/60/24);
		
		Calendar christmas = Calendar.getInstance();
		christmas.set(2023, 11, 25);
		long christmasTick = christmas.getTimeInMillis();
		System.out.printf("크리스마스 남은 시간: %d일\n", (christmasTick - nowTick)/1000/60/60/24);

		Calendar birthday = Calendar.getInstance();
		birthday.set(1999, 10, 24);
		long birthdayTick = birthday.getTimeInMillis();
		System.out.printf("살아온 년: %d년\n", (nowTick - birthdayTick)/1000/60/60/24/365);
		System.out.printf("살아온 월: %d월\n", (nowTick - birthdayTick)/1000/60/60/24/30);
		System.out.printf("살아온 일: %d일\n", (nowTick - birthdayTick)/1000/60/60/24);
		System.out.printf("살아온 시: %d시\n", (nowTick - birthdayTick)/1000/60/60);
		
		
	}

	private static void m5() {
		//현재 시각
		Calendar now = Calendar.getInstance();
		
		//읽기 + 출력
		System.out.println(now.get(Calendar.YEAR));
		System.out.printf("%tF, %tT, %tA\n", now, now, now);
		
		//특정 시각
		Calendar start = Calendar.getInstance();
		start.set(Calendar.HOUR_OF_DAY, 9);
		start.set(2023,6,14);
		System.out.printf("%tF, %tT, %tA\n", start, start, start);
		
		//시각 + 시각
		start.add(Calendar.DATE, 3);
		System.out.printf("%tF, %tT, %tA\n", start, start, start);
		
	}

	private static void m4() {
		//연산
		//시각 + 시간
		//시각 - 시간
		//오늘 만난 커플 > 100일
		//오늘(시각) + 100일 = 기념일(시각)
		Calendar now = Calendar.getInstance();
		System.out.printf("1일차 : %tF\n", now);
		now.add(Calendar.DATE, 100);
		System.out.printf("100일차 : %tF\n", now);
		
		Calendar birthday = Calendar.getInstance();
		birthday.set(1999, 9, 24);
		birthday.add(Calendar.YEAR, 1);
		System.out.printf("돌잔치 : %tF\n", birthday);
		
		now = Calendar.getInstance();
		now.add(Calendar.DATE, -12);
		System.out.printf("12일전 : %tF\n", now);
		
		//지금 > 3시간 25분뒤ㅔ 약 복용
		
		now = Calendar.getInstance();
		now.add(Calendar.HOUR, 3);
		now.add(Calendar.MINUTE, 25);
		System.out.printf("약 복용 시간: %tT\n", now);
	}

	private static void m3() {
		//특정 시각을 생성하기 > 원하는 시각 생성
		//크리스마스
		Calendar christmas = Calendar.getInstance();//현재시각(특정날짜를 바로 생성 불가능)
		System.out.printf("%tF %tT\n", christmas, christmas);
		//수정
		christmas.set(Calendar.MONTH, 11);
		christmas.set(Calendar.DATE, 25);
		christmas.set(Calendar.HOUR_OF_DAY, 19);
		christmas.set(Calendar.MINUTE, 0);
		christmas.set(Calendar.SECOND, 0);
		
		System.out.printf("%tF %tT\n", christmas, christmas);
		System.out.println();
		//내생일
		Calendar birthday = Calendar.getInstance();
		birthday.set(1999, 9, 24);
		System.out.printf("%tF\n", birthday);
		
		birthday.set(1999, 9, 24, 10, 30);
		System.out.printf("%tF %tT\n", birthday, birthday);
	}

	private static void m2() {
		//Calendar 클래스
		Calendar c1 = Calendar.getInstance();
		int year = 1;
		//System.out.println(c1);
		//집합 데이터 > 내가 원하는 항목만 추출
		//- int get(int)
		System.out.println(c1.get(year));
		
		//어떤 항목을 추출 > 필요한 숫자 > 미리 상수로 제공 > Calendar 상수
		System.out.println(Calendar.YEAR);
		System.out.println(c1.get(Calendar.YEAR)); //실제 사용 예
		
		System.out.println();
		System.out.println();
		
		System.out.println(c1.get(Calendar.YEAR));			//년
		System.out.println(c1.get(Calendar.MONTH));			//월
		System.out.println(c1.get(Calendar.DATE));			//일
		System.out.println(c1.get(Calendar.HOUR));			//시(12시)
		System.out.println(c1.get(Calendar.HOUR_OF_DAY));	//시(24시)
		System.out.println(c1.get(Calendar.MINUTE));		//분
		System.out.println(c1.get(Calendar.SECOND));		//초
		System.out.println(c1.get(Calendar.MILLISECOND));	//밀리초(ms)
		System.out.println(c1.get(Calendar.AM_PM));			//오전(0), 오후(1)
		System.out.println(c1.get(Calendar.DAY_OF_YEAR));	//이번년도부터 현재까지 일
		System.out.println(c1.get(Calendar.DAY_OF_MONTH));	//이번달부터 현재까지 일
		System.out.println(c1.get(Calendar.DAY_OF_WEEK));	//요일(1(일요일) - 7(토))
		System.out.println(c1.get(Calendar.WEEK_OF_YEAR));	//이번년부터 현재까지의 주
		System.out.println(c1.get(Calendar.WEEK_OF_MONTH));	//이번달부터 현재까지의 주
		System.out.println();
		//요구사항] "오늘은 2023 7월 20일입니다.
		System.out.printf("오늘은 %d년 %d월 %d일입니다.\n",
							c1.get(Calendar.YEAR),
							c1.get(Calendar.MONTH),
							c1.get(Calendar.DATE));
		System.out.println();
		
		//요구사항 "지금은 17시 05분 50초 입니다."
		System.out.printf("지금은 %d시 %02d분 %02d초 입니다..\n",
							c1.get(Calendar.HOUR_OF_DAY),
							c1.get(Calendar.MINUTE),
							c1.get(Calendar.SECOND));
		//요구사항 "지금은 오후 5시 05분 50초 입니다."
		System.out.printf("지금은 %s %d시 %02d분 %02d초 입니다..\n",
							c1.get(Calendar.AM_PM) == 1 ? "오후" : "오전",
							c1.get(Calendar.HOUR),
							c1.get(Calendar.MINUTE),
							c1.get(Calendar.SECOND));
		
		//printf() > 형식 문자 > 날짜시간
		System.out.printf("%tF\n", c1);
		System.out.printf("%tT\n", c1);
		System.out.printf("%tA\n", c1);//Locale > 지역 설정에 따라 다름 
	}

	private static void m1() {
		//Date 클래스
		Date date = new Date(); // 컴퓨터 시각을 가져온다
		
		System.out.println(date);

	}

}
