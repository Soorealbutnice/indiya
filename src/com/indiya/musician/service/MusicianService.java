package com.indiya.musician.service;

import java.util.List;

import com.indiya.musician.model.*;

public interface MusicianService {
	int changeMusician(MusicianDto musician);
	MusicianDto selectByNo(String muician_id);
	List<MusicianMemberDto> selectAllMusicianMember(String musician_id);
	int registerMemberAdd(MusicianMemberDto musicianMember, int jamApply_no);
	int MusicianShowPicRegister(MusicianShowPicDto musicianShowPic);
	int MusicianShowMovieRegister(MusicianShowMovieDto musicianShowMovie);
	List<MusicianShowPicDto> selectByMusicianShowPic(String musician_id);
	List<MusicianShowMovieDto> selectByMusicianShowMovie(String musician_id);
	int MusicianCommentAdd(MusicianCommentDto musicianComment);
	List<MusicianCommentDto> selectByMusicianComment(String musician_id);
}
