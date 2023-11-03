package com.test.toy.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.toy.board.model.BoardDTO;
import com.test.toy.board.repository.BoardDAO;

@WebServlet("/board/view.do")
public class View extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		//1. 
		String seq = req.getParameter("seq");
		
		String search = req.getParameter("search");
		String column = req.getParameter("column");
		String word = req.getParameter("word");
		
		//2.
		BoardDAO dao = new BoardDAO();
		
		
		//2.4
		if (session.getAttribute("read") != null && session.getAttribute("read").toString().equals("n")) {
			dao.updateReadcount(seq);
			session.setAttribute("read", "y");
		}
		BoardDTO dto = dao.get(seq);
		
		System.out.println(dto.toString());
		
		//2.5 데이터 조작
		String content = dto.getContent();
		
		//태그 비활성화
		//<div> > &lt;div&gt;
		content = content.replace("<", "&lt");
		content = content.replace(">", "&gt");
		
		//개행 문자 처리
		content = content.replace("\r\n", "<br>");
		
		dto.setContent(content);
		
		String subject = dto.getSubject();
		
		subject = subject.replace("<", "&lt");
		subject = subject.replace(">", "&gt");
		
		dto.setSubject(subject);
		
		
		//내용으로 검색시 검색어를 강조!!
		if (search.equals("y") && column.equals("content")) {
			//<span style="background-color:gold; color:tomato;">샤워</span> 중 사망했으며,
			dto.setContent(dto.getContent().replace(word, "<span style=\"background-color:gold; color:tomato;\">" + word + "</span>"));
		}
		
		//3. 
		req.setAttribute("dto", dto);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/view.jsp");
		dispatcher.forward(req, resp);
	}
	

}
