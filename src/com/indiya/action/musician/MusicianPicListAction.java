package com.indiya.action.musician;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.musician.model.MusicianShowPicDto;
import com.indiya.musician.service.MusicianServiceImpl;

public class MusicianPicListAction implements Action {

	private static MusicianPicListAction musicianPicListAction;
	
	static {
		musicianPicListAction = new MusicianPicListAction();
	}
	
	private MusicianPicListAction() {}

	
	public static MusicianPicListAction getMusicianPicListAction() {
		return musicianPicListAction;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/Bandpage/musician_admin_piclist.jsp";
		List<MusicianShowPicDto> picList = MusicianServiceImpl.getMusicianService().selectByMusicianShowPic(request.getParameter("id"));
		request.setAttribute("picList", picList);
		return path;
	}

}
