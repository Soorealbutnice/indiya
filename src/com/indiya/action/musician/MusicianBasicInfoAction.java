package com.indiya.action.musician;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.musician.dao.MusicianDaoImpl;
import com.indiya.musician.model.MusicianDto;

public class MusicianBasicInfoAction implements Action {
	private static MusicianBasicInfoAction musicianBasicInfoAction;
	
	static {
		musicianBasicInfoAction = new MusicianBasicInfoAction();
	}
	
	private MusicianBasicInfoAction() {}
	
	public static MusicianBasicInfoAction getMusicianBasicInfoAction() {
		return musicianBasicInfoAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/frame/error.jsp";
		MusicianDto musician = MusicianDaoImpl.getMusicianService().selectByNo(request.getParameter("id"));
		
		if(musician != null) {
			request.setAttribute("musician", musician);
			path = "/Bandpage/musician_admin_basic.jsp";
		}

		return path;
	}

}
