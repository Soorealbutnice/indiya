package com.indiya.member.dao;

import java.util.Map;

import com.indiya.member.model.MemberDto;
import com.indiya.member.model.MusicianChangeDto;
import com.indiya.member.model.MypicDto;
import com.indiya.musician.model.MusicianDto;


public interface MemberDao {

	int idCheck(String id);
	int registerMember(MemberDto memberDto);
	MemberDto getMember(String id);
	int modifyMember(MemberDto memberDto);
	void deleteMember(String id);
	int uploadFile(MypicDto mypicDtoS);
	MypicDto selectOne(int num);
	int changeMusician(MusicianDto musician);
	MemberDto memberlogin(Map<String, String> map);
	MusicianDto musicianlogin(Map<String, String> map);
	
}
