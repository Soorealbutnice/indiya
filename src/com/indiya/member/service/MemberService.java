package com.indiya.member.service;

import com.indiya.member.model.MemberDto;
import com.indiya.member.model.MypicDto;
import com.indiya.musician.model.MusicianDto;

public interface MemberService {

	int idCheck(String id);
	int registerMember(MemberDto memberDto);
	MemberDto getMember(String id);
	int modifyMember(MemberDto memberDto);
	void deleteMember(String id);
	int uploadFile(MypicDto mypicDto);
	MypicDto selectOne(int num);
	MusicianDto musicianlogin(String id, String pass);
	MemberDto memberLogin(String id, String pass);
}
