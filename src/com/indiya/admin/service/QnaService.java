package com.indiya.admin.service;

import java.util.List;
import java.util.Map;

import com.indiya.qna.model.QnaDto;

public interface QnaService {
	int writeArticle(QnaDto qnadto);

	List<QnaDto> getMember(int pg, String key, String word);
	List<QnaDto> getSinger(int pg, String key, String word);
	int registerMember(QnaDto qnadto);
	QnaDto viewArticle(int no);
	QnaDto getArticle(int no);
	void deleteMember(String id);
	QnaDto login(Map<String, String> map);
}
