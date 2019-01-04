package com.indiya.action.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.member.model.MemberDto;
import com.indiya.member.service.MemberServiceImpl;

public class MemberIdCheckAction implements Action {

	private static MemberIdCheckAction memberIdCheckAction;
	
	static {
		memberIdCheckAction = new MemberIdCheckAction();
	}
	
	private MemberIdCheckAction() {};
	
	public static MemberIdCheckAction getMemberIdCheckAction() {
		return memberIdCheckAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/Mypage/idcheck.jsp";
//		String id = request.getParameter("id");
//		int cnt = MemberServiceImpl.getMemberService().idCheck(id);
//		MemberDto dto = new MemberDto();
		return path;
	}
	
}
