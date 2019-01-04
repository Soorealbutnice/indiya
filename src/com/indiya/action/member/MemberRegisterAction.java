package com.indiya.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.indiya.action.Action;
import com.indiya.member.model.MemberDto;
import com.indiya.member.service.MemberServiceImpl;

public class MemberRegisterAction implements Action {

	private static MemberRegisterAction memberRegisterAction;
	
	static {
		memberRegisterAction = new MemberRegisterAction();
	}
	
	private MemberRegisterAction() {}
	
	public static MemberRegisterAction getMemberRegisterAction() {
		return memberRegisterAction;
	}

	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/Mainpage/main.jsp";
		MemberDto dto = new MemberDto();

		dto.setId(request.getParameter("id"));
		dto.setName(request.getParameter("name"));
		dto.setPass(request.getParameter("pass"));
		dto.setEmail1(request.getParameter("email1"));
		dto.setEmail2(request.getParameter("email2"));
		dto.setAddrdetail(request.getParameter("addrDetail"));
		dto.setJoin_date(request.getParameter("join_date"));
		dto.setFind_pass(request.getParameter("find_pass"));
		dto.setFind_pass_check(request.getParameter("find_pass_check"));
		dto.setRoadaddrPart1(request.getParameter("roadAddrPart1"));
		dto.setSex(request.getParameter("sex"));
		dto.setZipNo(request.getParameter("zipNo"));
		dto.setTel1(request.getParameter("tel1"));
		dto.setTel2(request.getParameter("tel2"));
		dto.setTel3(request.getParameter("tel3"));
			
			int seq = MemberServiceImpl.getMemberService().registerMember(dto);
			if(seq != 0) {
				path = "/Mainpage/main.jsp?seq=" + seq + "&";
			} else {
				path = "/Mainpage/main.jsp";
			}
		return path;
	}

}
