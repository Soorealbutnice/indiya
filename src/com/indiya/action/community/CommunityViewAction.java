package com.indiya.action.community;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.community.model.CommentDto;
import com.indiya.community.model.CommunityDto;
import com.indiya.community.service.CommunityServiceImpl;
import com.indiya.member.model.MemberDto;
import com.indiya.util.ParameterCheck;

public class CommunityViewAction implements Action {

	private static CommunityViewAction communityViewAction;
	
	static {
		communityViewAction = new CommunityViewAction();
	}
	
	private CommunityViewAction() {}

	public static CommunityViewAction getcommunityViewAction() {
		return communityViewAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String path = "/Community/list.jsp?";

		int no = ParameterCheck.naNToZero(request.getParameter("no")+"");
		
		CommunityDto communityDto = CommunityServiceImpl.getCommunityService().viewArticle(no);
		List<CommentDto> list = CommunityServiceImpl.getCommunityService().commentList(no);
		
		request.setAttribute("comment", list );
		request.setAttribute("article", communityDto);
		
		path = "/Community/view.jsp?";
			
		return path;
	}
}
