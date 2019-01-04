package com.indiya.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.indiya.action.Action;
import com.indiya.member.model.MemberDto;
import com.indiya.member.service.MemberServiceImpl;
import com.indiya.musician.model.MusicianDto;
import com.indiya.util.ParameterCheck;

public class MemberLoginAction  implements Action {

	private static MemberLoginAction memberLoginAction;
	
	static {
		memberLoginAction = new MemberLoginAction();
	}
	
	private MemberLoginAction() {}
	
	public static MemberLoginAction getMemberLoginAction() {
		return memberLoginAction;
	}
	
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");

		String path = "Mainpage/main.jsp";
		MemberDto memberDto = MemberServiceImpl.getMemberService().memberLogin(id, pass);

		if(memberDto.getMusician_flag().equals("N")) {
			HttpSession session = request.getSession();
			session.setAttribute("userInfo", memberDto);
			session.setAttribute("musician_flag", memberDto.getMusician_flag());
			path = "Mainpage/main.jsp"; 
		} else if(memberDto.getMusician_flag().equals("Y")) {
			MusicianDto musicianDto = MemberServiceImpl.getMemberService().musicianlogin(id, pass);
			HttpSession session = request.getSession();
			session.setAttribute("userInfo", musicianDto);
			session.setAttribute("musician_flag", musicianDto.getMusician_flag());
			path = "Mainpage/main.jsp"; 
		} else {
			path = "Mainpage/join.jsp";
		}
		
		return path;
	}

}
