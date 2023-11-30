package com.test.apa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.test.persistence.MainDAO;

@Controller
public class MainController {
	
	@Autowired
	private MainDAO dao;
	
	@GetMapping(value = "/main.do")
	public String main() {

		return "main";
	}
}
