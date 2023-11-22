package com.test.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/main/emp.do")
public class emp extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		
		ViewDAO dao = new ViewDAO();
		
		ArrayList<ViewDTO> list = dao.getDept(id);
		
		JSONArray arr = new JSONArray();
		
		for (ViewDTO dto : list) {
			JSONObject obj = new JSONObject();
			obj.put("id", dto.getEmployeeId());
			obj.put("name", dto.getFirstName()+" "+dto.getLastName());
			obj.put("job", dto.getJobId());
			obj.put("date", dto.getHireDate());
			
			arr.add(obj);
		}
		
		resp.setContentType("application/json");
		
		PrintWriter writer = resp.getWriter();
		writer.write(arr.toString());
		writer.close();
	}

}
