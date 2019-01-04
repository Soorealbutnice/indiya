package com.indiya.action.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.community.model.CommunityDto;
import com.indiya.community.service.CommunityServiceImpl;
import com.indiya.member.model.MemberDto;
import com.indiya.util.ParameterCheck;

public class CommunityGetArticleAction implements Action {
	
	private static CommunityGetArticleAction communityGetArticleAction;
	
	static {
		communityGetArticleAction = new CommunityGetArticleAction();
	}
	
	private CommunityGetArticleAction() {}

	public static CommunityGetArticleAction getCommunityGetArticleAction() {
		return communityGetArticleAction;
	}
	

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String path = "/Community/view.jsp?";
		int board_no = Integer.parseInt(request.getParameter("no"));
		CommunityDto communityDto = CommunityServiceImpl.getCommunityService().getArticle(board_no);
		request.setAttribute("article", communityDto);
		path = "/Community/modify.jsp?";
		return path;

	}

}
