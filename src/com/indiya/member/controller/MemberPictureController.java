package com.indiya.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.util.Encoder;
import com.indiya.util.PageMove;
import com.indiya.util.ParameterCheck;


@WebServlet("/MemberPictureController")
public class MemberPictureController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String act = request.getParameter("act");
		int bcode = ParameterCheck.naNToZero(request.getParameter("bcode"));
		int pg = ParameterCheck.naNToOne(request.getParameter("pg"));
		String key = ParameterCheck.nullToBlank(request.getParameter("key"));
		String word = ParameterCheck.nullToBlank(request.getParameter("word"));
		String queryString = "bcode=" + bcode + "&pg=" + pg + "&key=" + key + "&word=" + Encoder.urlUtf(word);
		
		String path = "/index.jsp";
		if(bcode == 0) {
			System.out.println("전체목록으로 가라");
			PageMove.redirect(request, response, path);
		} else {
			if("mypagepic".equals(act)) {
				path = "/album/write.jsp" + queryString;
				PageMove.redirect(request, response, path);
			} else if("".equals(act)) {
				
			} else if("".equals(act)) {
				
			} else if("".equals(act)) {
				
			} else if("".equals(act)) {
				
			}
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
