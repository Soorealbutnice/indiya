package com.indiya.action.musician;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.musician.model.JamDto;
import com.indiya.musician.service.JamServiceImpl;


public class JamRegisterAction implements Action {
	private static JamRegisterAction jamRegisterAction;
	
	static {
		jamRegisterAction = new JamRegisterAction();
	}
	
	private JamRegisterAction() {}
	
	public static JamRegisterAction getJamRegisterAction() {
		return jamRegisterAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		String path = "/frame/error.jsp";
		JamDto jam = new JamDto();
		jam.setJam_id(request.getParameter("id"));
		jam.setSubject(request.getParameter("subject"));
		jam.setContents(request.getParameter("contents"));
		if(JamServiceImpl.getJamService().jamRegister(jam) > 0) path = "/jam?act=mvJamList";
			
		return path;
	}

}
