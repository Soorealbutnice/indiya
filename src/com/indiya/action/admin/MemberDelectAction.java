package com.indiya.action.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.admin.service.AdminServiceImpl;
import com.indiya.util.ParameterCheck;

public class MemberDelectAction implements Action{
	private static MemberDelectAction memberDelectAction;
	static {
		memberDelectAction =new MemberDelectAction();
	}
	private MemberDelectAction() {}
	
	
	public static MemberDelectAction getMemberDelectAction() {
		return memberDelectAction;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		int pg = ParameterCheck.naNToOne(request.getParameter("pg"));
		String id = ParameterCheck.nullToBlank(request.getParameter("word"));
		AdminServiceImpl.getAdminService().deleteMember(id);
		
		return "${root}/admin?act=getmemberlist?&pg="+pg;
	}
}
