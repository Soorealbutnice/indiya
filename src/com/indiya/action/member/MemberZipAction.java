package com.indiya.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.member.model.MemberDto;

public class MemberZipAction implements Action {

	private static MemberZipAction memberZipAction;
	
	static {
		memberZipAction = new MemberZipAction();
	}
	
	private MemberZipAction() {}
	
	public static MemberZipAction getMemberZipAction() {
		return memberZipAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/Mypage/mypagemodify.jsp";
		MemberDto dto = new MemberDto();
		//dto.setZipcode(request.getParameter("zipcode"));
		return path;
	}
}
