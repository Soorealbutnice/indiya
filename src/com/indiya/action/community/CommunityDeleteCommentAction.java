package com.indiya.action.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.community.service.CommunityServiceImpl;
import com.indiya.util.ParameterCheck;

public class CommunityDeleteCommentAction implements Action {

private static CommunityDeleteCommentAction communityDeleteCommentAction;
	
	static {
		communityDeleteCommentAction = new CommunityDeleteCommentAction();
	}
	
	private CommunityDeleteCommentAction() {}

	public static CommunityDeleteCommentAction getCommunityDeleteCommentAction() {
		return communityDeleteCommentAction;
	}
	
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("여긴가");
		int boardno = ParameterCheck.naNToZero(request.getParameter("boardno"));
		int no = ParameterCheck.naNToZero(request.getParameter("no"));
		
		System.out.println("보드넘버"+boardno);
		System.out.println("넘버뭐야"+no);
		System.out.println("삭제하러 가기 전");
		CommunityServiceImpl.getCommunityService().deleteComment(boardno, no);
		System.out.println("삭제하고 옴");
		String path = "/community?act=viewarticle&no="+boardno;
		System.out.println("여긴 오지...????");
		return path;
		
	}

}
