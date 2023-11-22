package com.test.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.spring.domain.SpringDTO;

@Controller
public class Ex06Controller {

	//요청 메서드의 반환 자료형
	//자주 쓰는 것들
	//	- 1.(***)
	//	- 3.(redirect)
	//	- 5.
	
	
	
	//1. String
	//- JSP 파일명
	//- ViewResolver 호출
//	@GetMapping(value="/ex06.do")
//	public String test() {
//		
//		return "ex06";
//	}
	
	//2. void
	//- 자동으로 요청 주소와 동일한 이름의 JSP 페이지를 찾아서 호출한다.
//	@GetMapping(value="/ex06.do")
//	public void test() {
//		
//	}
	
	//3. String(키워드)
	//- redirect
	//- forward
//	@GetMapping(value="/ex06.do")
//	public String test() {
//		
//		//resp.sendRedirect("/ex05.do");
//		//return "redirect:/ex05.do";
//		
//		//pageContext.forward();
//		return "forward:/ex05.do";
//	}

	//4. String(키워드)
//	@GetMapping(value="/ex06.do")
//	public String test(RedirectAttributes rttr) {
//		
//		String seq = "5";
//		String type = "2";
//		
//		rttr.addAttribute("seq",seq);
//		rttr.addAttribute("type",type);
//		
//		//return "redirect:/ex05.do?seq="+seq+"&type="+type;
//		return "redirect:/ex05.do";
//	}
	
	//5. JSON 반환
	//- @ResponseBody
	@GetMapping(value="/ex06.do")
	public @ResponseBody List<SpringDTO> test() {
		
		SpringDTO dto = new SpringDTO();
		dto.setName("홍길동");
		dto.setAge("20");
		dto.setAddress("서울");		
		
		SpringDTO dto2 = new SpringDTO();
		dto2.setName("아무개");
		dto2.setAge("22");
		dto2.setAddress("경기도");
		
		List<SpringDTO> list = new ArrayList<SpringDTO>();
		list.add(dto);
		list.add(dto2);
		
		return list;
	}
}
