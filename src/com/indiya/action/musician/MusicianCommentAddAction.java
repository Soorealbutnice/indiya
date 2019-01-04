package com.indiya.action.musician;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.musician.model.MusicianCommentDto;
import com.indiya.musician.service.MusicianServiceImpl;

public class MusicianCommentAddAction implements Action {
	private static MusicianCommentAddAction musicianCommentAddAction;
	
	static {
		musicianCommentAddAction = new MusicianCommentAddAction();
	}
	
	private MusicianCommentAddAction() {}
	
	
	public static MusicianCommentAddAction getMusicianCommentAddAction() {
		return musicianCommentAddAction;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		String path = "/frame/error.jsp";
		String musician_id = request.getParameter("musician_id");
		String member_id = request.getParameter("member_id");
		if(musician_id != null && member_id != null) {
			MusicianCommentDto musicianComment = new MusicianCommentDto();
			musicianComment.setMusician_id(musician_id);
			musicianComment.setMember_id(member_id);
			musicianComment.setGrade(Integer.parseInt(request.getParameter("star")));
			musicianComment.setContents(request.getParameter("contents"));
			if(MusicianServiceImpl.getMusicianService().MusicianCommentAdd(musicianComment) > 0) {
				path = "/musician?act=musician&id=" + musician_id;
			}
		}

		return path;
	}

}
