package com.indiya.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.Map;

import com.indiya.member.model.MemberDto;
import com.indiya.member.model.MypicDto;
import com.indiya.musician.model.MusicianDto;
import com.indiya.util.db.DBClose;
import com.indiya.util.db.DBConnection;

public class MemberDaoImpl implements MemberDao {

	private static MemberDao memberDao;
	
	static {
		memberDao = new MemberDaoImpl();
	}
	
	private MemberDaoImpl() {}
	
	public static MemberDao getMemberDao() {
		return memberDao;
	}
	
	@Override
	public int idCheck(String id) {
		int cnt = 1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn=DBConnection.makeConnection();
			String sql = "";
			sql += "select count(id) cnt \n";
			sql += "from member \n";
			sql += "where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt(1);
		} catch (SQLException e) {
			cnt=1;
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		
		return cnt;
	}


	@Override
	public int registerMember(MemberDto memberDto) {
		int cnt= 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "insert \n";
			sql += "	into member (name, id, pass, email1, email2, zipNo, roadAddrpart1, addrDetail, tel1, tel2, tel3,join_date, sex, find_pass, find_pass_check) \n";
			sql += "	values (?, ?, ?, ?, ?, ?, ?,?,?,?,?,sysdate,?,?,?) \n";
			pstmt = conn.prepareStatement(sql);
			int idx = 0;
			pstmt.setString(++idx, memberDto.getName());
			pstmt.setString(++idx, memberDto.getId());
			pstmt.setString(++idx, memberDto.getPass());
			pstmt.setString(++idx, memberDto.getEmail1());
			pstmt.setString(++idx, memberDto.getEmail2());
			pstmt.setString(++idx, memberDto.getZipNo());
			pstmt.setString(++idx, memberDto.getRoadaddrPart1());
			pstmt.setString(++idx, memberDto.getAddrdetail());
			pstmt.setString(++idx, memberDto.getTel1());
			pstmt.setString(++idx, memberDto.getTel2());
			pstmt.setString(++idx, memberDto.getTel3());
			pstmt.setString(++idx, memberDto.getSex());
			pstmt.setString(++idx, memberDto.getFind_pass());
			pstmt.setString(++idx, memberDto.getFind_pass_check());
			
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public MemberDto getMember(String id) {
		return null;
	}

	@Override
	public int modifyMember(MemberDto memberDto) {
		int cnt= 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "update member m \n";
			sql += "	set(m.id, m.name, m.pass, m.email1, m.email2, m.zipNo, m.roadAddrpart1, m.addrDetail, m.tel1, m,tel2, \r\n" + 
					"m.tel3, m.sex, m.find_pass, m.find_pass_check) \n";
			sql += "= (select b.id, b.name, b.pass, b.email1, b.emial2, \r\n" + 
					"b.zipNo, b.roadAddrpart1, b.addrDetail, b.tel1, b.tel2, b.tel3, b.sex, b.find_pass, b.find_pass_check \r\n" + 
					"from member b where m.id = b.id); \n";

			pstmt = conn.prepareStatement(sql);
			int idx = 0;
			pstmt.setString(++idx, memberDto.getName());
			pstmt.setString(++idx, memberDto.getId());
			pstmt.setString(++idx, memberDto.getPass());
			pstmt.setString(++idx, memberDto.getEmail1());
			pstmt.setString(++idx, memberDto.getEmail2());
			pstmt.setString(++idx, memberDto.getZipNo());
			pstmt.setString(++idx, memberDto.getRoadaddrPart1());
			pstmt.setString(++idx, memberDto.getAddrdetail());
			pstmt.setString(++idx, memberDto.getTel1());
			pstmt.setString(++idx, memberDto.getTel2());
			pstmt.setString(++idx, memberDto.getTel3());
			pstmt.setString(++idx, memberDto.getSex());
			pstmt.setString(++idx, memberDto.getFind_pass());
			pstmt.setString(++idx, memberDto.getFind_pass_check());
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public void deleteMember(String id) {
	}


	@Override
	public int uploadFile(MypicDto mypicDto) {
		Connection conn = null;
    	PreparedStatement pstmt = null;
    	int cnt =0;
    	MypicDto dto = null;
    	
    	try {
    		conn = DBConnection.makeConnection();
        	StringBuffer sql = new StringBuffer();
        	sql.append("insert into fileboard(num, filename) \n");
        	sql.append("	values(filenum_seq.nextval, ?) \n");
        	
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setString(++idx, dto.getFileName());
			cnt=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
          return cnt;
    }

	@Override
	public MypicDto selectOne(int num) {
		Connection conn = null;
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	MypicDto dto =null;
    	
    	try {
    		conn=DBConnection.makeConnection();
        	StringBuffer sql = new StringBuffer();
        	sql.append("select * \n");
        	sql.append("from Memberpicture \n");
        	sql.append("where num =? \n");
        	pstmt = conn.prepareStatement(sql.toString());
        	pstmt.setInt(1, num);
        	rs = pstmt.executeQuery();
        	
			while(rs.next()) {
			dto.setNum(rs.getInt("num"));
			dto.setFileName(rs.getString("filename"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return dto;
	}

	@Override
	public int changeMusician(MusicianDto musician) {
		int cnt= 0;
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	     
	    try {
	        conn = DBConnection.makeConnection();
	        conn.setAutoCommit(false);
	        String sql = "update member set musician_flag = 'Y' where id = ?";
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, musician.getMusician_id());
	        pstmt.executeUpdate();
	        pstmt.close();
	     
	        sql = "insert into musician(musician_id, musician_name, musician_info, genre, area, pic) \n";
	        sql += " values(?, ?, ?, ?, ?, ?)";
	        System.out.println(sql);
	        pstmt = conn.prepareStatement(sql);
	        int idx = 0;
	 
	        pstmt.setString(++idx, musician.getMusician_id());
	        pstmt.setString(++idx, musician.getMusician_name());
	        pstmt.setString(++idx, musician.getMusician_info());
	        pstmt.setString(++idx, musician.getGenre());
	        pstmt.setString(++idx, musician.getArea());
	        pstmt.setString(++idx, musician.getPic());
	        cnt = pstmt.executeUpdate();
	        conn.commit();
	    } catch (SQLException e) {
	        cnt = 0;
	        e.printStackTrace();
	        try {
	            conn.rollback();
	        } catch (SQLException e1) {
	            e1.printStackTrace();
	        }
	    }
	    return cnt;
	}

	@Override
	public MemberDto memberlogin(Map<String, String> map) {
		MemberDto memberDto =null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select * \n";
			sql += "from member \n";
			sql += "where id = ? and pass = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, map.get("userid"));
			pstmt.setString(2, map.get("userpass"));
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				memberDto = new MemberDto();
				memberDto.setId(rs.getString("id"));
				memberDto.setPass(rs.getString("pass"));
				memberDto.setName(rs.getString("name"));
				memberDto.setEmail1(rs.getString("email1"));
				memberDto.setEmail2(rs.getString("email2"));
				memberDto.setZipNo(rs.getString("zipno"));
				memberDto.setRoadaddrPart1(rs.getString("roadaddrpart1"));
				memberDto.setAddrdetail(rs.getString("addrdetail"));
				memberDto.setTel1(rs.getString("tel1"));
				memberDto.setTel2(rs.getString("tel2"));
				memberDto.setTel3(rs.getString("tel3"));
				memberDto.setSex(rs.getString("sex"));
				memberDto.setMusician_flag(rs.getString("musician_flag"));
				memberDto.setJoin_date(rs.getString("join_date"));
				memberDto.setFind_pass(rs.getString("find_pass"));
				memberDto.setFind_pass_check(rs.getString("find_pass_check"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return memberDto;
	}

	@Override
	public MusicianDto musicianlogin(Map<String, String> map) {
		MusicianDto musicianDto =null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select mu.*, m.* \n";
			sql += "from musician mu, member m \n";
			sql += "where m.id = mu.musician_id  \n";
			sql += "and m.id = ? and m.pass = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, map.get("userid"));
			pstmt.setString(2, map.get("userpass"));
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				musicianDto = new MusicianDto();
				
				musicianDto.setId(rs.getString("id"));
				musicianDto.setPass(rs.getString("pass"));
				musicianDto.setName(rs.getString("name"));
				musicianDto.setEmail1(rs.getString("email1"));
				musicianDto.setEmail2(rs.getString("email2"));
				musicianDto.setZipNo(rs.getString("zipno"));
				musicianDto.setRoadaddrPart1(rs.getString("roadaddrpart1"));
				musicianDto.setAddrdetail(rs.getString("addrdetail"));
				musicianDto.setTel1(rs.getString("tel1"));
				musicianDto.setTel2(rs.getString("tel2"));
				musicianDto.setTel3(rs.getString("tel3"));
				musicianDto.setSex(rs.getString("sex"));
				musicianDto.setMusician_flag(rs.getString("musician_flag"));
				musicianDto.setJoin_date(rs.getString("join_date"));
				musicianDto.setFind_pass(rs.getString("find_pass"));
				musicianDto.setFind_pass_check(rs.getString("find_pass_check"));
				musicianDto.setMusician_id(rs.getString("musician_id"));
				musicianDto.setMusician_name(rs.getString("musician_name"));
				musicianDto.setMusician_info(rs.getString("musician_info"));
				musicianDto.setMusician_like(rs.getInt("musician_like"));
				musicianDto.setListener_count(rs.getInt("listener_count"));
				musicianDto.setListener_grade(rs.getInt("listener_grade"));
				musicianDto.setGenre(rs.getString("genre"));
				musicianDto.setArea(rs.getString("area"));
				musicianDto.setPic(rs.getString("pic"));
				musicianDto.setWrite_date(rs.getString("write_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return musicianDto;
	}
}
