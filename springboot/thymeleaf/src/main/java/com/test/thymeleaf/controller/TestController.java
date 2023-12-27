package com.test.thymeleaf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.test.thymeleaf.mapper.TestMapper;
import com.test.thymeleaf.repository.TestDAO;

@Controller
public class TestController {

	@Autowired
	private TestMapper mapper; // DB
	
	@Autowired
	private TestDAO dao; //HashMap
	 
	@GetMapping(value = "/m1.do")
	public String m1(Model model) {

		model.addAttribute("num", 100);
		model.addAttribute("txt", "홍길동");

		return "m1"; // src/main/resources > templates > m1.html
	}

	@GetMapping(value = "/m2.do")
	public String m2(Model model) {

		// 객체 반환 (map/obj)

		model.addAttribute("map", dao.get());
		model.addAttribute("dto", mapper.get());

		return "m2";
	}

	@GetMapping(value="/m3.do")
	public String m3(Model model) {
				
		//스프링 메시지, Spring Message
		//- 프로젝트내에서 자주 사용되는(반복적인) 문자열
		//- 다국어 지원
		
		//src/main/resources > "messages.properties"
		//src/main/resources > "messages_en.properties"
		//src/main/resources > "messages_ja.properties"
		
		return "m3";
	}
	
	@GetMapping(value="/m4.do")
	public String m4(Model model) {
				
		//연산
		model.addAttribute("a", 10);
		model.addAttribute("b", 3);
		
		return "m4";
	}
	
	@GetMapping(value="/m5.do")
	public String m5(Model model) {
				
		//HTML 속성 조작
		model.addAttribute("size", 50);
		model.addAttribute("name", "홍길동");
		model.addAttribute("color", "cornflowerblue");
		
		return "m5";
	}
	
	
	@GetMapping(value="/m6.do")
	public String m6(Model model) {
				
		//콘텐츠 조작
		//- PCDATA 조작, 하위 태그 조작
		//- innerText(textContent), innerHTML 기능
		
		String txt1 = "홍길동입니다.";
		String txt2 = "<b>홍길동</b>입니다.";
		String name = "아무개";
		
		model.addAttribute("txt1", txt1);
		model.addAttribute("txt2", txt2);
		model.addAttribute("name", name);
		
		return "m6";
	}

}
