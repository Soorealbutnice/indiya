package com.indiya.action.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.community.model.CommunityDto;
import com.indiya.community.service.CommunityServiceImpl;

public class CommunityModifyAction implements Action {

	private static CommunityModifyAction communityModifyAction;
	
	static {
		communityModifyAction = new CommunityModifyAction();
	}
	
	private CommunityModifyAction() {}

	public static CommunityModifyAction getCommunityModifyAction() {
		return communityModifyAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			CommunityDto CommunityDto = new CommunityDto();	
			int board_no = Integer.parseInt(request.getParameter("no"));
			CommunityDto.setTitle(request.getParameter("title"));
			CommunityDto.setContents(request.getParameter("summernote"));
			CommunityDto.setNo(board_no);
			CommunityServiceImpl.getCommunityService().modifyArticle(CommunityDto);
			String path = "/Community/modifyok.jsp?";
			return path;
	}

}
