package com.indiya.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.admin.action.MemberListAction;
import com.indiya.admin.action.SingerListAction;
import com.indiya.factory.AdminActionFactory;
import com.indiya.util.IndiyaConstance;
import com.indiya.util.PageMove;
import com.indiya.util.ParameterCheck;

@WebServlet("/admin")
public class AdminController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      String act = request.getParameter("act");
      int pg = ParameterCheck.naNToOne(request.getParameter("pg"));
      String key = ParameterCheck.nullToBlank(request.getParameter("key"));
      String word = ParameterCheck.nullToBlank(request.getParameter("word"));

      String queryString = "pg=" + pg + "&key=" + key + "&word=" + word;// 한글로 깨지는거 처리,&는 파라미터 구분자
      System.out.println("act>>" + act + "\tquery>>" + queryString);// 잘넘어가는지 처리하는거임

      String path = "/index.jsp";
      if ("getmemberlist".equals(act)) {
    	 path =AdminActionFactory.getMemberListAction().execute(request, response);
         path += queryString;
         PageMove.forward(request, response, path);
      } else if ("deletemember".equals(act)) {
    	  path = AdminActionFactory.getMemberDeleteAction().execute(request, response);
    	  path += queryString;
    	  PageMove.redirect(request, response, path);
      } else if ("modifymember".equals(act)) {

      }
   }

   protected void Post(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding(IndiyaConstance.ENCODING);
      doGet(request, response);
   }

}