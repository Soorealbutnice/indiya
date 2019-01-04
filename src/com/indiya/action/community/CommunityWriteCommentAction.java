package com.indiya.action.community;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.community.model.CommentDto;
import com.indiya.community.service.CommunityServiceImpl;
import com.indiya.member.model.MemberDto;

public class CommunityWriteCommentAction implements Action {

private static CommunityWriteCommentAction CommunityWriteCommentAction;
	
	static {
		CommunityWriteCommentAction = new CommunityWriteCommentAction();
	}
	
	private CommunityWriteCommentAction() {}

	public static CommunityWriteCommentAction getCommunityWriteCommentAction() {
		return CommunityWriteCommentAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/Community/view.jsp?";
		HttpSession session = request.getSession(); 
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		CommentDto commentdto = new CommentDto();
		commentdto.setBoard_no(Integer.parseInt(request.getParameter("no")));
		commentdto.setContents(request.getParameter("commentContent"));
		commentdto.setMember_id(memberDto.getId());
		
		
		int no = CommunityServiceImpl.getCommunityService().writeComment(commentdto);
		List<CommentDto> commentDto = new ArrayList<CommentDto>();
		commentDto = CommunityServiceImpl.getCommunityService().commentList(no);
		request.setAttribute("comment", commentDto);
		
		if(no != 0) {
			path="/community?act=viewarticle&";
		} else {
			path = "/Community/view.jsp?";//TODO 나중에 로그인 페이지로 이동시켜라.
		}
		return path;
	}
}
