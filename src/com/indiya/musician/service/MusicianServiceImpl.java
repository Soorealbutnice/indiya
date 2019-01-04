package com.indiya.musician.service;

import java.util.List;

import com.indiya.musician.dao.MusicianDaoImpl;
import com.indiya.musician.model.*;

public class MusicianServiceImpl implements MusicianService{

	private static MusicianService musicianService;

	static {
		musicianService = new MusicianServiceImpl();
	}

	private MusicianServiceImpl() {}

	public static MusicianService getMusicianService() {
		return musicianService;
	}

	@Override
	public int changeMusician(MusicianDto musician) {
		return MusicianDaoImpl.getMusicianService().changeMusician(musician);
	}

	@Override
	public MusicianDto selectByNo(String muician_id) {
		MusicianDto musician = MusicianDaoImpl.getMusicianService().selectByNo(muician_id);
		musician.setMusician_info(musician.getMusician_info().replaceAll("\n", "<br/>"));
		return musician;
	}

	@Override
	public List<MusicianMemberDto> selectAllMusicianMember(String musician_id) {
		return MusicianDaoImpl.getMusicianService().selectAllMusicianMember(musician_id);
	}

	@Override
	public int registerMemberAdd(MusicianMemberDto musicianMember, int jamApply_no) {
		return MusicianDaoImpl.getMusicianService().registerMemberAdd(musicianMember, jamApply_no);
	}

	@Override
	public int MusicianShowPicRegister(MusicianShowPicDto musicianShowPic) {
		return MusicianDaoImpl.getMusicianService().MusicianShowPicRegister(musicianShowPic);
	}

	@Override
	public int MusicianShowMovieRegister(MusicianShowMovieDto musicianShowMovie) {
		return MusicianDaoImpl.getMusicianService().MusicianShowMovieRegister(musicianShowMovie);
	}

	@Override
	public List<MusicianShowPicDto> selectByMusicianShowPic(String musician_id) {
		List<MusicianShowPicDto> list = MusicianDaoImpl.getMusicianService().selectByMusicianShowPic(musician_id);
		for (MusicianShowPicDto pic : list) {
			if(pic.getShow_info().length() > 20)
				pic.setShow_info(pic.getShow_info().substring(1, 20) + " ...");
			else
				pic.setShow_info(pic.getShow_info());
			
			pic.setWrite_date(pic.getWrite_date().substring(0, 10));
		}	
		return list;
	}

	@Override
	public List<MusicianShowMovieDto> selectByMusicianShowMovie(String musician_id) {
		List<MusicianShowMovieDto> list = MusicianDaoImpl.getMusicianService().selectByMusicianShowMovie(musician_id);
		for (MusicianShowMovieDto movie : list) {
			if(movie.getShow_title().length() > 20)
				movie.setShow_title(movie.getShow_title().substring(1, 20) + " ...");
			else
				movie.setShow_title(movie.getShow_title());
			
			movie.setWrite_date(movie.getWrite_date().substring(0, 10));
		}		
		return list;
	}

	@Override
	public int MusicianCommentAdd(MusicianCommentDto musicianComment) {
		return MusicianDaoImpl.getMusicianService().MusicianCommentAdd(musicianComment);
	}

	@Override
	public List<MusicianCommentDto> selectByMusicianComment(String musician_id) {
		List<MusicianCommentDto> list = MusicianDaoImpl.getMusicianService().selectByMusicianComment(musician_id);
		for (MusicianCommentDto musicianComment : list) {
			musicianComment.setContents(musicianComment.getContents().replaceAll("\n", "<br/>"));
		}
		return list;
	}
	
	
}
