package com.indiya.action.musician;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.musician.service.JamServiceImpl;

public class JamUpdateStateAction implements Action{
	private static JamUpdateStateAction jamUpdateStateAction;
	
	static {
		jamUpdateStateAction = new JamUpdateStateAction();
	}
	
	private JamUpdateStateAction() {}

	public static JamUpdateStateAction getJamUpdateStateAction() {
		return jamUpdateStateAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/frame/error.jsp";
		if(JamServiceImpl.getJamService().jamUpdateByStatus(Integer.parseInt(request.getParameter("no"))) > 0) {
			if("admin".equals(request.getParameter("chk"))) 
				path = "/musician?act=mvMusicianMember&id=" + request.getParameter("id");
			else
				path = "/jam?act=mvJamList";
		}
		return path;
	}
	
	
}
