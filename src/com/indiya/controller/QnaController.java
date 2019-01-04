package com.indiya.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.admin.QnaWriteAction;
import com.indiya.factory.AdminActionFactory;
import com.indiya.util.IndiyaConstance;
import com.indiya.util.PageMove;
import com.indiya.util.ParameterCheck;


@WebServlet("/qna")
public class QnaController extends HttpServlet {
   private static final long serialVersionUID = 1L;
   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String act = request.getParameter("act");
      int pg = ParameterCheck.naNToOne(request.getParameter("pg"));
      String key = ParameterCheck.nullToBlank(request.getParameter("key"));
      String word = ParameterCheck.nullToBlank(request.getParameter("word"));

      String queryString = "pg=" + pg + "&key=" + key + "&word=" + word;// �ѱ۷� �����°� ó��,&�� �Ķ���� ������
      System.out.println("act>>" + act + "\tquery>>" + queryString);// �߳Ѿ���� ó���ϴ°���

      String path = "/index.jsp";

      if ("mvwrite".equals(act)) {
         path = "/Mainpage/QNA.jsp?" + queryString;
         PageMove.redirect(request, response, path);
         System.out.println("mv>>" + path);
      } else if ("writearticle".equals(act)) {
         path = QnaWriteAction.getQnaWriteAction().execute(request, response);
         path += queryString;
         PageMove.redirect(request, response, path);
         System.out.println("���ۼ� ��Ʈ�ѷ��Ծ��");
         System.out.println("path>>" + path);
      } else if("viewarticle".equals(act)) {
         path = AdminActionFactory.getQnaViewAction().execute(request, response);
         path += queryString;
         PageMove.forward(request, response, path);
      } else if("".equals(act)) {
         
      } else if("".equals(act)) {
         
      }
   }


   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding(IndiyaConstance.ENCODING);
      doGet(request, response);   
      }

}