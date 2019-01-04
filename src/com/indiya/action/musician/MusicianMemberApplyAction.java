package com.indiya.action.musician;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.musician.model.MusicianMemberDto;
import com.indiya.musician.service.MusicianServiceImpl;


public class MusicianMemberApplyAction implements Action {

	private static MusicianMemberApplyAction musicianMemberApplyAction;
	
	static {
		musicianMemberApplyAction = new MusicianMemberApplyAction();
	}
	
	private MusicianMemberApplyAction() {}
	
	
	public static MusicianMemberApplyAction getMusicianMemberApplyAction() {
		return musicianMemberApplyAction;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/frame/error.jsp";
		if("OK".equals(request.getParameter("sign"))) {
			MusicianMemberDto musicianMember = new MusicianMemberDto();
			musicianMember.setMusician_id(request.getParameter("jamId"));
			musicianMember.setMember_id(request.getParameter("jamApplyId"));
			musicianMember.setPosition(request.getParameter("position"));
			if(MusicianServiceImpl.getMusicianService().registerMemberAdd(musicianMember, Integer.parseInt(request.getParameter("no"))) > 0)
				path = "/musician?act=mvMusicianMember&id=" + request.getParameter("jamId");

		}		
		return path;
	}

}
