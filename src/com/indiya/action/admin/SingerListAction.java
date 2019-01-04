package com.indiya.action.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;

import com.indiya.admin.service.AdminServiceImpl;
import com.indiya.member.model.MemberDto;
import com.indiya.util.ParameterCheck;


public class SingerListAction implements Action{
	
		private static SingerListAction singerListAction;
		static {
			singerListAction =new SingerListAction();
		}
		private SingerListAction() {}
		
		
		public static SingerListAction getSingerListAction() {
			return singerListAction;
		}


		@Override
		public String execute(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			int pg = ParameterCheck.naNToOne(request.getParameter("pg"));
			String key = ParameterCheck.nullToBlank(request.getParameter("key"));
			String word = ParameterCheck.nullToBlank(request.getParameter("word"));
			System.out.println("가수 액션왔다");
			List<MemberDto> list1 = AdminServiceImpl.getAdminService().getSinger(pg,key,word);
//			PageNavigation navigator = CommonServiceImpl.getCommonService().getPageNavigation(pg, key, word);
//			navigator.setRoot(request.getContextPath());
//			navigator.makeNavigator();
			
			request.setAttribute("singerlist", list1);
			System.out.println("singerlist : "+list1.size());
//			request.setAttribute("navigator", navigator);
			
			return "/Adminpage/member.jsp?";
		}
	}


