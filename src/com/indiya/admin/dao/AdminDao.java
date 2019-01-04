package com.indiya.admin.dao;

import java.util.List;
import java.util.Map;

import com.indiya.member.model.MemberDto;

public interface AdminDao {
	int idCheck(String id);
	List<MemberDto> getMember(Map<String, String> map);
	List<MemberDto> getSinger(Map<String, String> map);
	int registerMember(MemberDto memberDto);
	
	int modifyMember(MemberDto memberDto);
	void deleteMember(String id);
	MemberDto login(Map<String, String> map);
	
	int getTotalMemberCount(String word);
}
