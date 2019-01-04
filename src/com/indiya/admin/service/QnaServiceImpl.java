package com.indiya.admin.service;

import java.util.List;
import java.util.Map;

import com.indiya.admin.common.dao.CommonDaoImpl;
import com.indiya.admin.dao.QnaDaoImpl;

import com.indiya.qna.model.QnaDto;

public class QnaServiceImpl implements QnaService {
	
	private static QnaService qnaService;
	static {
		qnaService = new QnaServiceImpl();
	}
	private QnaServiceImpl() {}
	
	public static QnaService getQnaService() {
		return qnaService;
	}

	
	

	@Override
	public int writeArticle(QnaDto qnadto) {
		System.out.println("서비스왔다");
		int no = CommonDaoImpl.getCommonDao().getNextSeq();
		qnadto.setNo(no);
		return QnaDaoImpl.getQnaDao().writeArticle(qnadto) == 0 ? 0 : no;	}

	@Override
	public List<QnaDto> getMember(int pg, String key, String word) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<QnaDto> getSinger(int pg, String key, String word) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int registerMember(QnaDto qnadto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteMember(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public QnaDto login(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public QnaDto viewArticle(int no) {
		return null;
	}

	@Override
	public QnaDto getArticle(int no) {
		// TODO Auto-generated method stub
		return null;
	}


}
