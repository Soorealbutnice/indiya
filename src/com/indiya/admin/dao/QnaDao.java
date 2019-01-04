package com.indiya.admin.dao;

import java.util.List;
import java.util.Map;

import com.indiya.qna.model.QnaDto;

public interface QnaDao {
	int writeArticle(QnaDto qnadto);

	List<QnaDto> getMember(int pg, String key, String word);
	List<QnaDto> getSinger(int pg, String key, String word);
	int registerMember(QnaDto qnadto);
	
	int modifyMember(QnaDto qnadto);
	void deleteMember(String id);
	QnaDto login(Map<String, String> map);
}
