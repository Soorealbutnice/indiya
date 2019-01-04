package com.indiya.action.community;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.community.model.CommunityDto;
import com.indiya.community.service.CommunityServiceImpl;
import com.indiya.common.service.CommonServiceImpl;
import com.indiya.util.PageNavigation;
import com.indiya.util.ParameterCheck;

public class CommunityListAction implements Action {

	private static CommunityListAction communityListAction;
	
	static {
		communityListAction = new CommunityListAction();
	}
	
	private CommunityListAction() {}

	public static CommunityListAction getCommunityListAction() {
		return communityListAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int pg = ParameterCheck.naNToOne(request.getParameter("pg"));
		String key = ParameterCheck.nullToBlank(request.getParameter("key"));
		String word = ParameterCheck.nullToBlank(request.getParameter("word"));
		String path="/Community/list.jsp?";
		List<CommunityDto> list = CommunityServiceImpl.getCommunityService().listArticle(pg, key, word);
		PageNavigation navigator = CommonServiceImpl.getCommonService().getPageNavigation(pg, key, word);
		navigator.setRoot(request.getContextPath());
		navigator.makeNavigator();
		request.setAttribute("list", list);
		request.setAttribute("navigator", navigator);
		return path;
	}

}















