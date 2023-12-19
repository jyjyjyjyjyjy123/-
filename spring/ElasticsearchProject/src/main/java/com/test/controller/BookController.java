package com.test.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.test.domain.BookDTO;
import com.test.persistence.BookDAO;
import com.test.persistence.BookRepository;

@Controller
public class BookController {
	
	@Autowired
	private BookDAO dao;
	
	@Autowired
	private BookRepository repo;
	

	@GetMapping(value = "/list.do")
	public String list(Model model, String word) {

		if (word == null || word.equals("")) {
			//검색 안함 > 일반 목록보기 > 오라클 조회
			List<BookDTO> list = dao.list();
			model.addAttribute("list",list);
		} else {
			//검색 > 검색하기 > 엘라스틱서치 조회
			List<Map<String, Object>> list = repo.search(word);
			model.addAttribute("list",list);
			model.addAttribute("word",word);
		}
		
		
		
		return "list";
	}
	@GetMapping(value = "/add.do")
	public String add(Model model) {

		return "add";
	}
	@PostMapping(value = "/addok.do")
	public String addok(Model model, BookDTO dto) {
		
		dao.add(dto);
		String seq = dao.getSeq();
		dto.setSeq(seq);
		
		repo.add(dto);

		return "redirect:list.do";
	}
	@GetMapping(value = "/view.do")
	public String view(Model model, String seq) {

		BookDTO dto = dao.get(seq);
		
		model.addAttribute("dto",dto);
		
		return "view";
	}
}
