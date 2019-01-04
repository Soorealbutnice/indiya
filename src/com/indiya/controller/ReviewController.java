package com.indiya.controller;

import java.io.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.indiya.factory.ReviewActionFactory;
import com.indiya.member.model.MemberDto;
import com.indiya.musician.model.MusicianDto;
import com.indiya.review.model.ReviewDto;
import com.indiya.review.service.ReviewServiceImpl;
import com.indiya.util.*;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/review")
public class ReviewController extends HttpServlet {

	private static final long serialVersionUID = 1L;
       
   private String rootDirectory;
   private int maxPostSize;
   private String encoding;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		//ServletContext : 
		ServletContext context = config.getServletContext();
		rootDirectory = context.getRealPath("/picup");
		maxPostSize = 5 * 1024 * 1024; //5mb
		encoding = "UTF-8";
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pg = ParameterCheck.naNToOne(request.getParameter("pg"));
		String key = ParameterCheck.nullToBlank(request.getParameter("key"));
		String word = ParameterCheck.nullToBlank(request.getParameter("word"));
		String root = request.getContextPath();
		int reviewNo = ParameterCheck.naNToZero(request.getParameter("reviewNo"));
		String act = request.getParameter("act");
		
		String path = "";
		String queryString = "&reviewNo="+reviewNo+"&photoroot="+rootDirectory;
		
		if("reviewlist".equals(act)) {
			path = ReviewActionFactory.getReviewMainListAction().execute(request, response);
			path += queryString;
			PageMove.forward(request, response, path);
		} else if("getlist".equals(act)) {
			path = ReviewActionFactory.getReviewGetListAction().execute(request, response);
			path += queryString;
			PageMove.forward(request, response, path);
		} else if ("".equals(act)) {

			
		}
		
	}
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String act = request.getParameter("act");
		int pg = ParameterCheck.naNToOne(request.getParameter("pg"));
		String key = ParameterCheck.nullToBlank(request.getParameter("key"));
		String word = ParameterCheck.nullToBlank(request.getParameter("word"));
		String root = request.getContextPath();
		
		String queryString = "pg=" + pg + "&key=" + key + "&word=";
		
		if("writeReview".equals(act)) {
			System.out.println("여기로 오는가 모르갔네");
			DateFormat df = new SimpleDateFormat("yyMMdd");
			String today = df.format(new Date());
			String saveDirectory = rootDirectory + File.separator + today;
			File dir = new File(saveDirectory);
			if(!dir.exists()) {
				dir.mkdirs();
			}
			
			MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, new DefaultFileRenamePolicy());
	
			int cnt = 0;
			
			ReviewDto reviewDto = new ReviewDto();
			HttpSession session = request.getSession();//indexjsp에서 세션에 관리자의 정보를 담은걸 가져오는거임
			String id = null;
			
			if(session.getAttribute("musician_flag").equals("N")){
				MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
				id = memberDto.getId();
			} else {
				MusicianDto musicianDto = (MusicianDto) session.getAttribute("userInfo");
				id = musicianDto.getId();
			}
			
			String bandname = multi.getParameter("bandname");
			String location = multi.getParameter("location");
			String youtube = multi.getParameter("youtube");
			String photoRoot = multi.getOriginalFileName("photo");
			String contents = multi.getParameter("contents");
	
			reviewDto.setMember_id(id);
			reviewDto.setMusicianName(bandname);
			reviewDto.setLocation(location);
			reviewDto.setUrl(youtube);
			reviewDto.setPhotoRoot(photoRoot);
			reviewDto.setContents(contents);
	
	        cnt = ReviewServiceImpl.getReviewService().writeReview(reviewDto);
	        
	        String path = root+"/Review/ReviewViewMain.jsp";
	        
	        if (cnt!=0) {
	        	path = root+"/Review/ReviewWriteOk.jsp?";
	        	path += queryString;
	        	PageMove.redirect(request, response, path);
	        } else {
	        	path = root+"/Review/ReviewWriteFail.jsp?";
	        	PageMove.redirect(request, response, path);
	        }
		
		} else {
			request.setCharacterEncoding(IndiyaConstance.ENCODING);
			doGet(request, response);
		}
	}
}


