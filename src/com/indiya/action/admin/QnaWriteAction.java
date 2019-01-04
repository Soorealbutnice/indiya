package com.indiya.action.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.indiya.action.Action;
import com.indiya.admin.service.QnaServiceImpl;
import com.indiya.member.model.MemberDto;
import com.kitri.admin.model.QnaDto;

public class QnaWriteAction implements Action {
	private static QnaWriteAction qnaWriteAction;
	static{
		qnaWriteAction = new QnaWriteAction();
	}
	private QnaWriteAction() {}
	
	public static QnaWriteAction getQnaWriteAction() {
		return qnaWriteAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("액션왔어야");
		String path = "/Mainpage/QNAfail.jsp?";//path값에 가고싶은 위치를 넘겨줄거라 빈칸으로 하는거임,->기본값을 fail로주고 밑에를 만족하면 ok로 가고 만족못하면 fail로 가면ㄷ니까
		HttpSession session = request.getSession(); 
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) { 
			QnaDto qnaDto = new QnaDto();	
			qnaDto.setMember_id(memberDto.getId());
			qnaDto.setTitle(request.getParameter("title"));
			qnaDto.setContents(request.getParameter("contents"));
			int no = QnaServiceImpl.getQnaService().writeArticle(qnaDto);
			System.out.println("액션 dto>>" + no);
			if(no != 0) {
				path = "/Mainpage/QNAok.jsp?no=" + no + "&";
			}
			System.out.println("path" + path);
		} else {
			path = "/Mainpage/faq.jsp?";//TODO 나중에 로그인 페이지로 이동시켜라.
		}
		return path;
	}

		
}
