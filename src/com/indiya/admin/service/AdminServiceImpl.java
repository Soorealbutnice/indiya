package com.indiya.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.indiya.admin.dao.AdminDao;
import com.indiya.admin.dao.AdminDaoImpl;
import com.indiya.member.model.MemberDto;
import com.indiya.util.IndiyaConstance;
import com.kitri.admin.model.QnaDto;

public class AdminServiceImpl implements AdminService {
	
	
	private static AdminService adminService;
	
	static {
		adminService = new AdminServiceImpl();
	}
	private AdminServiceImpl() {
	}
	
	public static AdminService getAdminService() {
		return adminService;
	}

	@Override
	public int idCheck(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MemberDto> getMember(int pg, String key, String word) {
		int end = pg * IndiyaConstance.BOARD_LIST_SIZE;
		int start = end - IndiyaConstance.BOARD_LIST_SIZE;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("start", start + "");
		map.put("end", end + "");
		map.put("key", key);
		map.put("word", word);
		
		return AdminDaoImpl.getAdminDao().getMember(map);
	}

	
	@Override
	public List<MemberDto> getSinger(int pg, String key, String word) {
		int end = pg * IndiyaConstance.BOARD_LIST_SIZE;
		int start = end - IndiyaConstance.BOARD_LIST_SIZE;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("start", start + "");
		map.put("end", end + "");
		map.put("key", key);
		map.put("word", word);
		
		return AdminDaoImpl.getAdminDao().getSinger(map);
		
	}
	@Override
	public int registerMember(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public void deleteMember(String id) {
		AdminDaoImpl.getAdminDao().deleteMember(id);
	}

	@Override
	public MemberDto login(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public QnaDto viewArticle(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public QnaDto getArticle(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modifyMember(MemberDto memberDto) {
		// TODO Auto-generated method stub
		
	}

}
