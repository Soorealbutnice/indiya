package com.indiya.community.dao;

import java.util.List;
import java.util.Map;

import com.indiya.community.model.CommentDto;
import com.indiya.community.model.CommunityDto;

public interface CommunityDao {

	int writeArticle(CommunityDto communitydto);
	List<CommunityDto> listArticle(Map<String, String> map);
	CommunityDto viewArticle(int no);
	CommunityDto getArticle(int no);
	void modifyArticle(CommunityDto CommunityDto);
	void deleteArticle(int no);
	int writeComment(CommentDto commentdto);
	List<CommentDto> commentList(int no);
	void deleteComment(int boardno, int no);
    List<CommunityDto> mainList();
    List<CommunityDto> mainHotList();

}
