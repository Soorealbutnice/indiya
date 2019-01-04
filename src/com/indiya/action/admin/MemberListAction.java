package com.indiya.action.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.admin.service.AdminService;
import com.indiya.admin.service.AdminServiceImpl;
import com.indiya.common.service.CommonServiceImpl;
import com.indiya.member.model.MemberDto;
import com.indiya.util.PageNavigation;
import com.indiya.util.ParameterCheck;


public class MemberListAction implements Action{
		private static MemberListAction memberListAction;
		static {
			memberListAction =new MemberListAction();
		}
		private MemberListAction() {}
		
		
		public static MemberListAction getMemberListAction() {
			return memberListAction;
		}


		@Override
		public String execute(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			int pg = ParameterCheck.naNToOne(request.getParameter("pg"));
			String key = ParameterCheck.nullToBlank(request.getParameter("key"));
			String word = ParameterCheck.nullToBlank(request.getParameter("word"));
			
			List<MemberDto> list = AdminServiceImpl.getAdminService().getMember(pg,key,word);
			PageNavigation navigator = CommonServiceImpl.getCommonService().getPageNavigation(pg, key, word);
			navigator.setRoot(request.getContextPath());
			navigator.makeNavigator();
			
			request.setAttribute("memberlist", list);
			request.setAttribute("navigator", navigator);
			
			return "/Adminpage/member.jsp?";
		}
	}


