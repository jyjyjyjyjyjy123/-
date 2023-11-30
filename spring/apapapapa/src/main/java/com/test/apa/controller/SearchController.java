package com.test.apa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.test.persistence.SearchDAO;

@Controller
public class SearchController {

	@Autowired
	private SearchDAO dao;
}
