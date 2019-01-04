package com.indiya.action.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.community.model.CommunityDto;
import com.indiya.community.service.CommunityServiceImpl;
import com.indiya.member.model.MemberDto;
import com.indiya.util.ParameterCheck;

public class CommunityWriteAction implements Action {
	
	private static CommunityWriteAction CommunityWriteAction;
	
	static {
		CommunityWriteAction = new CommunityWriteAction();
	}
	
	private CommunityWriteAction() {}

	public static CommunityWriteAction getCommunityWriteAction() {
		return CommunityWriteAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/Community/writefail.jsp?";
		HttpSession session = request.getSession(); 
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) { 
			CommunityDto CommunityDto = new CommunityDto();	
			CommunityDto.setMember_id(memberDto.getId());
			CommunityDto.setTitle(request.getParameter("title"));
			CommunityDto.setContents(request.getParameter("contents"));
			
			int no = CommunityServiceImpl.getCommunityService().writeArticle(CommunityDto);
			if(no != 0) {
				path = "/Community/writeok.jsp?no=" + no + "&";
			}
		} else {
			path = "/Community/list.jsp?";//TODO 나중에 로그인 페이지로 이동시켜라.
		}
		return path;
	}

}










