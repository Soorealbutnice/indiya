package com.indiya.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/picup")
public class PictureUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String rootDirectory;
	//saveDirectory�� �ƴ� rootDirectory�� ����: ��¥���� ������ �����Ǿ� �������� upload�� �����ϱ� ����
	private int maxPostSize;
	private String encoding;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		// ServletContext�� jsp���� application�� ���尴ü.
		ServletContext context = config.getServletContext();
		rootDirectory = context.getRealPath("/upload");
		maxPostSize = 5*1024*1024;
		encoding = "UTF-8";
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DateFormat df = new SimpleDateFormat("yymmdd");
		String today = df.format(new Date());
		String saveDirectory = rootDirectory + File.separator + today; //File.separator �ü�� �˾Ƽ� ����
		File dir = new File(saveDirectory);
		if(!dir.exists()) {
			dir.mkdirs();
		}
		MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, new DefaultFileRenamePolicy());
		System.out.println("����..." + multi.getParameter("subject"));
		System.out.println("����..." + multi.getParameter("content"));
		System.out.println("���������̸�..." + multi.getOriginalFileName("picture"));
		System.out.println("���������̸�..." + multi.getFilesystemName("picture"));
		System.out.println("bcode..." + multi.getParameter("bcode"));
	}
}
