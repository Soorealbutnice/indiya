package com.indiya.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.indiya.action.Action;
import com.indiya.member.model.MemberDto;
import com.indiya.member.model.MusicianChangeDto;
import com.indiya.member.service.MemberServiceImpl;


public class MusicianChangeAction implements Action {

	private static MusicianChangeAction musicianChangeAction;
	
	static {
		musicianChangeAction = new MusicianChangeAction();
	}
	
	private MusicianChangeAction() {}
	
	public static MusicianChangeAction getMusicianChangeAction() {
		return musicianChangeAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(); 
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		String path = "/Mypage/bandpage.jsp";
		
		if(memberDto != null) {
			MusicianChangeDto dto = new MusicianChangeDto();
			dto.setId(memberDto.getId());
			dto.setMusician_name(request.getParameter("musician_name"));
			dto.setArea(request.getParameter("area"));
		//	dto.setFileName(request.getParameter("fileName"));
		//	dto.setFileRealName(request.getParameter("fileRealName"));
			dto.setGenre(request.getParameter("genre"));
			
		//	int seq = MemberServiceImpl.getMemberService();
		//	if(seq != 0) {
			//	path = "/reboard/writeok.jsp?seq=" + seq + "&";
		} else {
	//		alert("?†ïÎ≥¥Í? ?ùºÏπòÌïòÏß? ?ïä?äµ?ãà?ã§.");
			path = "/Mypage/MusicianChange.jsp";
		}
		return path;
	}
	
	
}
