package com.test.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

//컨트롤러 구현
//1. Controller 인터페이스 구현
//2. @Controller 어노테이션 사용

//public class Ex03Controller implements Controller{
//
//	@Override
//	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		
//		return null;
//	}
//
//}

@Controller
@RequestMapping(value="/ex03.do")
public class Ex03Controller {
	//요청 메서드 (doGet/doPost/handleRequest) > 맘대로~
	//== 핸들러
	@RequestMapping
	public String test() {
		
		//업무 코드
		
		//JSP 호출하기 > ModelAndView
		
		//1. ModelAndView 생성
		//2. ViewResolver 동작
		
		return "ex03";
	}
	public int sum(int a, int b) {
		
		return a + b;
	}
}
