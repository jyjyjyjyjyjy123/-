package com.test.thymeleaf.repository;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

@Repository
public class TestDAO {

	public HashMap<String, Integer> get() {
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("kor", 100);
		map.put("eng", 90);
		map.put("math", 80);
		
		return map;
	}

}
