package com.indiya.action.musician;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.musician.model.JamApplyDto;
import com.indiya.musician.service.JamServiceImpl;


public class JamApplyAction implements Action {
	private static JamApplyAction jamApplyAction;
	
	static {
		jamApplyAction = new JamApplyAction();
	}
	
	private JamApplyAction() {}

	public static JamApplyAction getJamApplyAction() {
		return jamApplyAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/frame/error.jsp";
		JamApplyDto jamApply = new JamApplyDto();
		jamApply.setJam_no(Integer.parseInt(request.getParameter("jam_no")));
		jamApply.setApply_id(request.getParameter("apply_id"));
		jamApply.setPosition(request.getParameter("position"));
		jamApply.setContents(request.getParameter("contents"));
		if(JamServiceImpl.getJamService().jamApplyRegister(jamApply) > 0) path = "/jam?act=mvJamView&no=" + request.getParameter("jam_no");
		return path;
	}

}
