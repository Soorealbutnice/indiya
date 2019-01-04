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
		System.out.println("�׼ǿԾ��");
		String path = "/Mainpage/QNAfail.jsp?";//path���� ������� ��ġ�� �Ѱ��ٰŶ� ��ĭ���� �ϴ°���,->�⺻���� fail���ְ� �ؿ��� �����ϸ� ok�� ���� �������ϸ� fail�� ���餧�ϱ�
		HttpSession session = request.getSession(); 
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) { 
			QnaDto qnaDto = new QnaDto();	
			qnaDto.setMember_id(memberDto.getId());
			qnaDto.setTitle(request.getParameter("title"));
			qnaDto.setContents(request.getParameter("contents"));
			int no = QnaServiceImpl.getQnaService().writeArticle(qnaDto);
			System.out.println("�׼� dto>>" + no);
			if(no != 0) {
				path = "/Mainpage/QNAok.jsp?no=" + no + "&";
			}
			System.out.println("path" + path);
		} else {
			path = "/Mainpage/faq.jsp?";//TODO ���߿� �α��� �������� �̵����Ѷ�.
		}
		return path;
	}

		
}
