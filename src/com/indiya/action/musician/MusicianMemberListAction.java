package com.indiya.action.musician;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.musician.model.JamDto;
import com.indiya.musician.model.MusicianMemberDto;
import com.indiya.musician.service.JamServiceImpl;
import com.indiya.musician.service.MusicianServiceImpl;



public class MusicianMemberListAction implements Action {

	private static MusicianMemberListAction musicianMemberListAction;
	
	static {
		musicianMemberListAction = new MusicianMemberListAction();
	}
	
	private MusicianMemberListAction() {}
	
	
	public static MusicianMemberListAction getMusicianMemberListAction() {
		return musicianMemberListAction;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		String path = "";
		
		List<MusicianMemberDto> musicianMember =  MusicianServiceImpl.getMusicianService().selectAllMusicianMember(request.getParameter("id"));
		List<JamDto> jam = JamServiceImpl.getJamService().selectAllJamById(request.getParameter("id"));

		request.setAttribute("musicianMemberList", musicianMember);
		request.setAttribute("jamList", jam);
		path = "/Bandpage/musician_admin_member.jsp";

		return path;
	}

}
