package com.indiya.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.indiya.action.Action;
import com.indiya.member.model.MemberDto;
import com.indiya.member.service.MemberServiceImpl;

public class MemberIdSearchAction implements Action{

	private static MemberIdSearchAction memberIdSearchAction;
	
	static {
		memberIdSearchAction = new MemberIdSearchAction();
	}
	
	private MemberIdSearchAction() {}
	
	public static MemberIdSearchAction getMemberIdSearchAction() {
		return memberIdSearchAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/plain;charset=UTF-8");
		System.out.println("?ï°?Öò 1Ï∞? Í¥?Î¨?");
		String path = "/Mypage/join.jsp";
		HttpSession session = request.getSession(); 
		MemberDto dto = (MemberDto) session.getAttribute("userInfo");
		String id = request.getParameter("id");
		int cnt = MemberServiceImpl.getMemberService().idCheck(id);
		
		if(cnt == 0) {
			dto.setId(request.getParameter("id"));
			System.out.println("?ó¨Í∏∞ÍπåÏß? ?ò®Í±∞ÎÉê");
		}
		return path;
	}
	
}
