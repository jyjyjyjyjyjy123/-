package com.test.java.calendar;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;

//item.txt > 조작 클래스(*******)
public class Data {
	public static ArrayList<Item>list;//전체일정
	
	//정적 생성자 > static 멤버 전용 초기화
	static {
		Data.list = new ArrayList<Item>();
	}

	public static void load() {
		//item.txt > ArrayList<Item>
		try {
			BufferedReader reader = new BufferedReader(new FileReader("data\\item.txt"));
			String line =null;
			while ((line = reader.readLine())!=null) {
				String[] temp = line.split(",");
				Item item = new Item(temp[0], temp[1], temp[2]);
				Data.list.add(item);
			}
			reader.close();
		} catch (Exception e) {
			System.out.println("at Data.load");
			e.printStackTrace();
		}
	}
	
}
