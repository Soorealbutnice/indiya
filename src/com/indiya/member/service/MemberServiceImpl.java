package com.indiya.member.service;

import java.util.HashMap;
import java.util.Map;

import com.indiya.member.dao.MemberDao;
import com.indiya.member.dao.MemberDaoImpl;
import com.indiya.member.model.MemberDto;
import com.indiya.member.model.MusicianChangeDto;
import com.indiya.member.model.MypicDto;
import com.indiya.musician.model.MusicianDto;


public class MemberServiceImpl implements MemberService{

private static MemberService memberService;

static {
	memberService = new MemberServiceImpl();
}

private MemberServiceImpl() {}

public static MemberService getMemberService() {
	return memberService;
}

@Override
public int idCheck(String id) {
	return MemberDaoImpl.getMemberDao().idCheck(id);
}



@Override
public int registerMember(MemberDto memberDto) {
	return MemberDaoImpl.getMemberDao().registerMember(memberDto);
}

@Override
public MemberDto getMember(String id) {
	return MemberDaoImpl.getMemberDao().getMember(id);
}

@Override
public int modifyMember(MemberDto memberDto) {
	return MemberDaoImpl.getMemberDao().modifyMember(memberDto);
}

@Override
public void deleteMember(String id) {
}



@Override
public int uploadFile(MypicDto mypicDto) {
	return 0;
}

@Override
public MypicDto selectOne(int num) {
	return null;
}

@Override
public MemberDto memberLogin(String id, String pass) {
	Map<String, String> map = new HashMap<String, String>();
	map.put("userid", id);
	map.put("userpass", pass);
	return MemberDaoImpl.getMemberDao().memberlogin(map);
}

@Override
public MusicianDto musicianlogin(String id, String pass) {
	Map<String, String> map = new HashMap<String, String>();
	map.put("userid", id);
	map.put("userpass", pass);
	return MemberDaoImpl.getMemberDao().musicianlogin(map);
}

}
