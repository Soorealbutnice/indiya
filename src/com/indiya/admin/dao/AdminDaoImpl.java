/**
 * 
 */
package com.indiya.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.indiya.member.model.MemberDto;
import com.indiya.util.db.DBClose;
import com.indiya.util.db.DBConnection;

public class AdminDaoImpl implements AdminDao {

	private static AdminDao adminDao;
	static {
		adminDao =new AdminDaoImpl();
	}
	private AdminDaoImpl() {}
	
	public static AdminDao getAdminDao() {
		return adminDao;
	}

	@Override
	public int idCheck(String id) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int registerMember(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyMember(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteMember(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.makeConnection();
			conn.setAutoCommit(false);
			StringBuffer sql = new StringBuffer();
			
			sql.append("delete from backer \n");
			sql.append("where id = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			
			sql.setLength(0);
			sql.append("delete from board_comment \n");
			sql.append("where board_no = ?"	);
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			
			sql.setLength(0);
			sql.append("delete from board \n");
			sql.append("where id = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			
			sql.setLength(0);
			sql.append("delete from review \n");
			sql.append("where member_id = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			
			sql.setLength(0);
			sql.append("delete from qna \n");
			sql.append("where qna_id = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			
			sql.setLength(0);
			sql.append("delete from musician_show_movie \n");
			sql.append("where musician_id = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			
			sql.setLength(0);
			sql.append("delete from musician_show \n");
			sql.append("where musician_id = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			
			sql.setLength(0);
			sql.append("delete from musician_music \n");
			sql.append("where musician_id = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			
			sql.setLength(0);
			sql.append("delete from musician \n");
			sql.append("where _musician_id = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			
			sql.setLength(0);
			sql.append("delete from member \n");
			sql.append("where id = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		
	}

	@Override
	public MemberDto login(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberDto> getMember(Map<String, String> map) {
		
		List<MemberDto> list = new ArrayList<MemberDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			
			String word = map.get("word");
			StringBuffer sql = new StringBuffer();
			
			sql.append("select * \n");
			sql.append("from MEMBER \n");
			if(!word.isEmpty()) {
			sql.append("where MUSICIAN_FLAG = ? \n");
			}
			sql.append("order by JOIN_DATE\n");
			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, word);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemberDto memberDto = new MemberDto();
				memberDto.setId(rs.getString("id"));
				memberDto.setName(rs.getString("name"));
				memberDto.setAddrdetail(rs.getString("addrdetail"));
				memberDto.setTel1(rs.getString("tel1"));
				memberDto.setTel2(rs.getString("tel2"));
				memberDto.setTel3(rs.getString("tel3"));
				memberDto.setRoadaddrPart1(rs.getString("roadaddrpart1"));
				memberDto.setZipNo(rs.getString("zipno"));
				memberDto.setPass(rs.getString("pass"));
				memberDto.setSex(rs.getString("sex"));
				memberDto.setMusician_flag(rs.getString("musician_flag"));
				memberDto.setJoin_date(rs.getString("join_date"));
				
				list.add(memberDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public int getTotalMemberCount(String word) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		try {
			conn = DBConnection.makeConnection();
			sql.append("select count(id) \n");
			sql.append("from member \n");
			if(!word.isEmpty()) {
					sql.append("where id like '%'||?||'%' \n");
				} 
			pstmt = conn.prepareStatement(sql.toString());
			if(!word.isEmpty()) {
				pstmt.setString(1, word);
			}
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt(1);
			System.out.println(cnt);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return cnt;
	}

	@Override
	public List<MemberDto> getSinger(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}
}
