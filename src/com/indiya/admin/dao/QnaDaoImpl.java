package com.indiya.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.indiya.util.db.DBConnection;
import com.kitri.admin.model.QnaDto;


public class QnaDaoImpl implements QnaDao {
	private static QnaDao qnaDao;
	static {
		qnaDao = new QnaDaoImpl();
	}
	private QnaDaoImpl() {}
	
	public static QnaDao getQnaDao() {
		return qnaDao;
	}

	@Override
	public int writeArticle(QnaDto qnadto) {
		System.out.println("dao ¿Ô´ç");
		int no = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into qna (no, member_id, title, contents, write_date) \n");
			sql.append("	   values (?, ?, ?, 0, sysdate)");
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, qnadto.getNo());
			pstmt.setString(++idx, qnadto.getMember_id());
			pstmt.setString(++idx, qnadto.getTitle());
			pstmt.setString(++idx, qnadto.getContents());
			no = pstmt.executeUpdate();
			System.out.println(no);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		return no;
	}

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
	public int modifyMember(QnaDto qnadto) {
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

	public int getNextSeq() {
		int no = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select board_seq.nextval no \n");
			sql.append("from dual");
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			rs.next();
			no = rs.getInt("no");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return no;
	}

	@Override
	public com.indiya.admin.dao.QnaDto login(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public QnaDto login(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
