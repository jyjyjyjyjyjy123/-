package com.test.mybatis2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.test.mybatis2.domain.TestDTO;
import com.test.mybatis2.psersist.TestDAO;


@Controller
public class TestContrller {
	
	@Autowired
	private TestDAO dao;

	@GetMapping(value="/test.do")
	public String test(Model model) {
		
		List<TestDTO> list = dao.list();
		model.addAttribute("list",list);
		
		return "test";
	}
	
}
