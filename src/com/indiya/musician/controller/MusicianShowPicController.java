package com.indiya.musician.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


import com.indiya.musician.model.MusicianShowPicDto;
import com.indiya.musician.service.MusicianServiceImpl;
import com.indiya.util.PageMove;

@WebServlet("/musicianShowPic")
public class MusicianShowPicController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private  final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private  final int MAX_FILE_SIZE      = 1024 * 1024 * 10; // 10MB
    private  final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
    private  final String UPLOAD_DIRECTORY = "D:\\javadata\\workspace\\fileupload";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(MEMORY_THRESHOLD);
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setFileSizeMax(MAX_FILE_SIZE);
		upload.setSizeMax(MAX_REQUEST_SIZE);
		
		String path = "/frame/error.jsp";
		MusicianShowPicDto musicianPic = null;
		
		try {
			List<FileItem> formItems = upload.parseRequest(request);
            if (formItems != null && formItems.size() > 0) {
            	musicianPic = new MusicianShowPicDto();
                for (FileItem item : formItems) {
                	
                    if (!item.isFormField()) {
                    	String fileName = java.util.UUID.randomUUID() + "." + item.getName().split("\\.")[1];
                        String filePath = UPLOAD_DIRECTORY + File.separator + fileName;
                        File storeFile = new File(filePath);
                        item.write(storeFile);
                        musicianPic.setShow_pic(fileName);
                    }
                    else {
                        switch (item.getFieldName()) {
						case "id" :
							musicianPic.setMusician_id(item.getString("UTF-8"));   
							break;
						case "show_date" :
							musicianPic.setShow_date((item.getString("UTF-8")));
							break;
						case "show_place" :
							musicianPic.setShow_place(((item.getString("UTF-8"))));
							break;								
						case "show_info" :
							musicianPic.setShow_info(((item.getString("UTF-8"))));
							break;							
						}
                    }
                }
            }
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		if(MusicianServiceImpl.getMusicianService().MusicianShowPicRegister(musicianPic) > 0) 
			path = "/musician?act=mvMusicianPicList&id=" + musicianPic.getMusician_id();
	
		PageMove.forward(request, response, path);	
	}

}
