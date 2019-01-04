package com.indiya.action.community;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.community.model.CommunityDto;
import com.indiya.community.service.CommunityServiceImpl;

public class CommunityAdminListAction implements Action {

	private static CommunityAdminListAction communityAdminListAction;
	
	static {
		communityAdminListAction = new CommunityAdminListAction();
	}
	
	private CommunityAdminListAction() {}

	public static CommunityAdminListAction getCommunityAdminListAction() {
		return communityAdminListAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path="/Mainpage/main.jsp?";
		System.out.println("¾×¼Çpath>>" + path);
		List<CommunityDto> list = CommunityServiceImpl.getCommunityService().mainListArticle();
		List<CommunityDto> hotlist = CommunityServiceImpl.getCommunityService().mainHotListArticle();
		
		request.setAttribute("list", list);
		request.setAttribute("hotlist", hotlist);
		
		return path;
	}

}















