package com.indiya.musician.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.factory.MusicianActionFactory;
import com.indiya.util.PageMove;


@WebServlet("/jam")
public class JamController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String act = request.getParameter("act");
		String path = "";
		System.out.println("act === " + act);
		if("mvJamList".equals(act)) {
			path = MusicianActionFactory.getJamListAction().execute(request, response);
			PageMove.forward(request, response, path);
		}
		else if("mvJamRegister".equals(act)) {
			path = "/Bandpage/jam_write.jsp";
			PageMove.redirect(request, response, path);
		}
		else if("jamRegister".equals(act)) {
			path = MusicianActionFactory.getJamRegisterAction().execute(request, response);
			PageMove.redirect(request, response, path);
		}
		else if("mvJamView".equals(act)) {
			path = MusicianActionFactory.getJamViewAction().execute(request, response);
			PageMove.forward(request, response, path);
		}
		else if("mvJamApply".equals(act)) {
			path = "/Bandpage/jam_apply.jsp";
			request.setAttribute("jam_no", request.getParameter("no"));
			PageMove.forward(request, response, path);		
		}
		else if("jamApply".equals(act)) {
			path = MusicianActionFactory.getJamApplyAction().execute(request, response);
			PageMove.redirect(request, response, path);
		}	
		else if("jamUpdateState".equals(act)) {
			path = MusicianActionFactory.getJamUpdateStateAction().execute(request, response);
			PageMove.redirect(request, response, path);
		}			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}
}
