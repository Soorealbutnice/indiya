package com.indiya.action.musician;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.musician.model.*;
import com.indiya.musician.service.MusicianServiceImpl;

public class MusicianAction implements Action {

	private static MusicianAction musicianAction;
	
	static {
		musicianAction = new MusicianAction();
	}
	
	private MusicianAction() {}
	
	
	public static MusicianAction getMusicianAction() {
		return musicianAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/frame/error.jsp";
		String id = request.getParameter("id");
		if(id != null) {
			MusicianDto musician = MusicianServiceImpl.getMusicianService().selectByNo(id);
			if(musician != null) {
				request.setAttribute("musician", musician);
				List<MusicianMemberDto> members = MusicianServiceImpl.getMusicianService().selectAllMusicianMember(id);
				
				request.setAttribute("members", members);
				List<MusicianShowPicDto> photos = MusicianServiceImpl.getMusicianService().selectByMusicianShowPic(id);
				
				if(photos.size() > 4) photos = photos.subList(0, 4);
				request.setAttribute("photos", photos);
				List<MusicianShowMovieDto> movies = MusicianServiceImpl.getMusicianService().selectByMusicianShowMovie(id);
				
				if(movies.size() > 0) movies = movies.subList(0, 1);
				request.setAttribute("movies", movies);
				
				List<MusicianCommentDto> comments = MusicianServiceImpl.getMusicianService().selectByMusicianComment(id);
				request.setAttribute("comments", comments);
				float sum = 0;
				for (MusicianCommentDto comment : comments)	sum += comment.getGrade();
				request.setAttribute("avg", String.format("%.2g%n", (sum/comments.size())));
			}
			path = "/Bandpage/musician.jsp";
		}
		return path;
	}

}
