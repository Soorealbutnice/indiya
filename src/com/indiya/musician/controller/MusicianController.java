package com.indiya.musician.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.factory.MusicianActionFactory;
import com.indiya.util.PageMove;

@WebServlet("/musician")
public class MusicianController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String act = request.getParameter("act");
		String path = "";
		System.out.println("act === " + act);
		if("mvMusicianBasic".equals(act)) {
			path = MusicianActionFactory.getMusicianBasicInfoAction().execute(request, response);
			PageMove.forward(request, response, path);			
		}
		else if("mvMusicianMember".equals(act)) {
			path = MusicianActionFactory.getMusicianMemberListAction().execute(request, response);
			PageMove.forward(request, response, path);				
		}	
		else if("memberApplySign".equals(act)) {
			path = MusicianActionFactory.getMusicianMemberApplyAction().execute(request, response);
			PageMove.redirect(request, response, path);
		}	
		else if("mvMusicianPicList".equals(act)) {
			path = MusicianActionFactory.getMusicianPicListAction().execute(request, response);
			PageMove.forward(request, response, path);
		}		
		else if("mvMusicianPicRegister".equals(act)) {
			path = "/Bandpage/musician_admin_pic_register.jsp";
			PageMove.redirect(request, response, path);
		}	
		else if("mvMusicianMovieList".equals(act)) {
			path = MusicianActionFactory.getMusicianMovieListAction().execute(request, response);
			PageMove.forward(request, response, path);
		}
		else if("mvMusicianMovieRegister".equals(act)) {
			path = "/Bandpage/musician_admin_movie_register.jsp";
			PageMove.redirect(request, response, path);
		}
		else if("musician".equals(act)) {
			path = MusicianActionFactory.getMusicianAction().execute(request, response);
			PageMove.forward(request, response, path);
		}
		else if("comment".equals(act)) {
			path = MusicianActionFactory.getMusicianCommentAddAction().execute(request, response);
			PageMove.forward(request, response, path);
		}		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
