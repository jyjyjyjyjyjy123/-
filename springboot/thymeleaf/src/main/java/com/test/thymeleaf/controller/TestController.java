package com.test.thymeleaf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

	@GetMapping(value = "/m1.do")
	public String m1(Model model) {
		
		model.addAttribute("num", 100);
				
		return "m1";
	}

}
