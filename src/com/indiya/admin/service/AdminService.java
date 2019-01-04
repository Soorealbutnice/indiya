package com.indiya.admin.service;

import java.util.List;
import java.util.Map;

import com.indiya.member.model.MemberDto;
import com.kitri.admin.model.QnaDto;





public interface AdminService {
	int idCheck(String id);
	List<MemberDto> getMember(int pg, String key, String word);
	List<MemberDto> getSinger(int pg, String key, String word);
	int registerMember(MemberDto memberDto);
	QnaDto viewArticle(int no);
	QnaDto getArticle(int no);
	void modifyMember(MemberDto memberDto);
	void deleteMember(String id);
	MemberDto login(Map<String, String> map);
	
	
}
