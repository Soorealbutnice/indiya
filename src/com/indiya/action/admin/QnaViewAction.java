package com.indiya.action.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.admin.service.QnaServiceImpl;
import com.indiya.util.ParameterCheck;
import com.kitri.admin.model.QnaDto;

public class QnaViewAction implements Action {

private static QnaViewAction qnaViewAction;
	
	static {
		qnaViewAction = new QnaViewAction();
	}
	
	private QnaViewAction() {}

	public static QnaViewAction getQnaViewAction() {
		return qnaViewAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String path = "/qna/list.jsp?";

		int no = ParameterCheck.naNToZero(request.getParameter("no")+"");
		
		QnaDto qnaDto = QnaServiceImpl.getQnaService().viewArticle(no);
		//List<QnaDto> list = QnaServiceImpl.getQnaService().commentList(no);
		
		//request.setAttribute("comment", list );
		request.setAttribute("article", qnaDto);
		
		path = "/qna/view.jsp?";
			
		return path;
	}
	
}
