package com.indiya.common.dao;

import java.sql.*;
import java.util.Map;

import com.indiya.util.PageNavigation;
import com.indiya.util.db.DBClose;
import com.indiya.util.db.DBConnection;

public class CommonDaoImpl implements CommonDao {
	
	private static CommonDaoImpl commonDao;

	static {
		commonDao = new CommonDaoImpl();
	}
	
	private CommonDaoImpl() {}
	
	public static CommonDaoImpl getCommonDao() {
		return commonDao;
	}

	@Override
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

	public void updateHit(int no) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("update board \n");
			sql.append("set visited = visited +1 \n");
			sql.append("where no = ?");
			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
	}

	@Override
	public int getNewArticleCount() {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select count(no) \n");
			sql.append("from board \n");
			sql.append("where to_char(write_date, 'yymmdd') = to_char(sysdate, 'yymmdd')");
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return cnt;
	}

	@Override
	public int getTotalArticleCount(Map<String, String> map) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select count(no) \n");
			sql.append("from board \n");
			
			String key = map.get("key");
			String word = map.get("word");
			if(!key.isEmpty() && !word.isEmpty()) {
				if(key.equals("title")) {
					sql.append("		and subject like '%'||?||'%' \n");
				} else {//name, no, id
					sql.append("		and " + key + " = ? \n");
				}
			}
			pstmt = conn.prepareStatement(sql.toString());
			if(!key.isEmpty() && !word.isEmpty()) {
				pstmt.setString(1, word);
			}
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return cnt;
	}

}
