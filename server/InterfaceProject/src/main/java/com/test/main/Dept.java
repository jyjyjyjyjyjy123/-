package com.test.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/main/dept.do")
public class Dept extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ViewDAO dao = new ViewDAO();
		
		ArrayList<ViewDTO> list = dao.get();
		
		JSONArray arr = new JSONArray();
		
		for (ViewDTO dto : list) {
			JSONObject obj = new JSONObject();
			obj.put("id", dto.getDepartmentId());
			obj.put("name", dto.getDepartmentName());
			
			arr.add(obj);
		}
		
		resp.setContentType("application/json");
		
		PrintWriter writer = resp.getWriter();
		writer.write(arr.toString());
		writer.close();
	}

}