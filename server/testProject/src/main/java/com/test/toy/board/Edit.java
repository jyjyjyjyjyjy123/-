package com.test.toy.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.toy.board.model.BoardDTO;
import com.test.toy.board.repository.BoardDAO;

@WebServlet("/board/edit.do")
public class Edit extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//view.do > 수정하기 버튼 클릭 > edit.do
		//1. 데이터 가져오기
		//2. db 작업 > select
		//3. 결과 + jsp 호출하기
		
		if (Auth.check(req, resp)) {
			return;
		}
		
		
		//1.
		String seq = req.getParameter("seq");
		
		//2.
		BoardDAO dao = new BoardDAO();
		
		BoardDTO dto = dao.get(seq);
		

		//2.5
		String subject = dto.getSubject();
		subject = subject.replace("\"", "&quot");
		dto.setSubject(subject);
		
		//3.
		req.setAttribute("dto", dto);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/edit.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			//1. 데이터 가져오기
			//2. DB작업 > update
			//3. 피드백
			
			HttpSession session = req.getSession();
			
			//1.
			String subject = req.getParameter("subject"); 
			String content = req.getParameter("content");
			String seq = req.getParameter("seq");
			
			//2.
			BoardDAO dao = new BoardDAO();
			
			BoardDTO dto = new BoardDTO();
			dto.setSubject(subject);
			dto.setContent(content);
			dto.setSeq(seq);
			dto.setId(session.getAttribute("id").toString());
			
			
			//3.
			int result = dao.edit(dto);
			
			if (result == 1) {
				resp.sendRedirect("/toy/board/view.do?seq="+seq);
			} else {
				PrintWriter writer = resp.getWriter();
				writer.print("<script>alert('failed');history.back();</script>");
				writer.close();
			}
		
	}

}
