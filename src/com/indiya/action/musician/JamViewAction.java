package com.indiya.action.musician;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.musician.model.JamDto;
import com.indiya.musician.service.JamServiceImpl;


public class JamViewAction implements Action {
	private static JamViewAction jamViewAction;
	
	static {
		jamViewAction = new JamViewAction();
	}
	
	private JamViewAction() {}

	
	public static JamViewAction getJamViewAction() {
		return jamViewAction;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/frame/error.jsp";
		JamDto jam = JamServiceImpl.getJamService().selectByNo(Integer.parseInt(request.getParameter("no")));
		if(jam != null) {
			request.setAttribute("jam", jam);	
			path = "/Bandpage/jam_view.jsp";
		}
			
		return path;
	}

}
