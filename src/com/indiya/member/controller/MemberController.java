package com.indiya.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.indiya.factory.MemberActionFactory;
import com.indiya.util.PageMove;
import com.indiya.util.ParameterCheck;

@WebServlet("/user")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String act = request.getParameter("act");
		String path = "/Mainpage/main.jsp";
		String saveok = ParameterCheck.nullToBlank(request.getParameter("saveok"));
		String root = request.getContextPath();
		
		if("MemberModify".equals(act)) {
			path = MemberActionFactory.getMemberModifyAction().execute(request, response);
			PageMove.redirect(request, response, path);
		} else if("login".equals(act)) {
			path = MemberActionFactory.getMemberLoginAction().execute(request, response);
			PageMove.redirect(request, response, path);
		} else if("idsearch".equals(act)) {
			path = MemberActionFactory.getMemberIdSearchAction().execute(request, response);
			PageMove.forward(request, response, path);
		} else if("idcheck".equals(act)) {
			path = MemberActionFactory.getMemberIdCheckAction().execute(request, response);
			PageMove.forward(request, response, path);
		} else if("register".equals(act)) {
			path= MemberActionFactory.getMemberRegisterAction().execute(request, response);
			PageMove.forward(request, response, path);
		} else if("mchange".equals(act)) {
			path = MemberActionFactory.getMusicianChangeAction().execute(request, response);
			PageMove.forward(request, response, path);
		} else if("logout".equals(act)) {
			HttpSession session = request.getSession();
			session.invalidate();
			path = root+"/Mainpage/loginpage.jsp";
			PageMove.redirect(request, response, path);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}

