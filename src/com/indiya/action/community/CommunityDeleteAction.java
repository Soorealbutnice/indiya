package com.indiya.action.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.community.model.CommunityDto;
import com.indiya.community.service.CommunityServiceImpl;
import com.indiya.member.model.MemberDto;

public class CommunityDeleteAction implements Action {

	private static CommunityDeleteAction communityDeleteAction;
	
	static {
		communityDeleteAction = new CommunityDeleteAction();
	}
	
	private CommunityDeleteAction() {}

	public static CommunityDeleteAction getCommunityDeleteAction() {
		return communityDeleteAction;
	}
	
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int board_no = Integer.parseInt(request.getParameter("no"));
		CommunityServiceImpl.getCommunityService().deleteArticle(board_no);
		String path = "/Community/deleteok.jsp?";
		return path;
		
	}

}
