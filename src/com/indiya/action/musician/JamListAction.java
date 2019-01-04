package com.indiya.action.musician;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.musician.model.JamDto;
import com.indiya.musician.service.JamServiceImpl;



public class JamListAction implements Action {

	private static JamListAction jamListAction;
	
	static {
		jamListAction = new JamListAction();
	}
	
	private JamListAction() {}


	public static JamListAction getJamListAction() {
		return jamListAction;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<JamDto> list = JamServiceImpl.getJamService().selectAllJam();
		request.setAttribute("jamList", list);
		return "/Bandpage/jam_list.jsp";
	}

}
