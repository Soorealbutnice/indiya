package com.indiya.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.indiya.action.Action;
import com.indiya.member.model.MemberDto;
import com.indiya.member.service.MemberServiceImpl;

public class MemberModifyAction implements Action {

	private static MemberModifyAction memberModifyAction;
	
	static {
		memberModifyAction = new MemberModifyAction();
	}
	
	private MemberModifyAction() {}

	public static MemberModifyAction getMemberModifyAction() {
		return memberModifyAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/Mainpage/login.jsp";
		return path;
	}
	
	
}
