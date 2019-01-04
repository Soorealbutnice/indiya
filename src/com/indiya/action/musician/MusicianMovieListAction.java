package com.indiya.action.musician;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.musician.model.MusicianShowMovieDto;
import com.indiya.musician.service.MusicianServiceImpl;

public class MusicianMovieListAction implements Action {
	private static MusicianMovieListAction musicianMovieListAction;
	
	static {
		musicianMovieListAction = new MusicianMovieListAction();
	}
	
	private MusicianMovieListAction() {}
	
	
	public static MusicianMovieListAction getMusicianMovieListAction() {
		return musicianMovieListAction;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/Bandpage/musician_admin_movie_list.jsp";
		List<MusicianShowMovieDto> movieList = MusicianServiceImpl.getMusicianService().selectByMusicianShowMovie(request.getParameter("id"));
		System.out.println("size=" + movieList.size());
		request.setAttribute("movieList", movieList);
		return path;
	}

}
