package com.test.ajax.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.ajax.repository.AjaxDAO;

@WebServlet("/ex06data.do")
public class Ex06Data extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//1. 데이터 가져오기(id)
		//2. DB 작업 > 중복 체크
		//3. 결과 반환
		
		//1.
		String id = req.getParameter("id");
		
		//2. Data Access Object
		AjaxDAO dao = new AjaxDAO();
		
		int result = dao.check(id);	//중복시 1 반환
		
		/*
			{
				"result": 0 or 1
			}
		*/
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		PrintWriter writer = resp.getWriter();
		
		writer.printf("{\"result\": %d}", result);
		
		writer.close();
		
	}

}
