package com.indiya.community.service;

import java.util.List;

import com.indiya.community.model.CommentDto;
import com.indiya.community.model.CommunityDto;


public interface CommunityService {

	int writeArticle(CommunityDto communitydto);
	List<CommunityDto> listArticle(int pg, String key, String word);
	CommunityDto viewArticle(int no);
	CommunityDto getArticle(int no);
	void modifyArticle(CommunityDto CommunityDto);
	void deleteArticle(int no);
	int writeComment(CommentDto commentdto);
	List<CommentDto> commentList(int no);
	void deleteComment(int boardno, int no);
	List<CommunityDto> mainListArticle();
	List<CommunityDto> mainHotListArticle();

}
