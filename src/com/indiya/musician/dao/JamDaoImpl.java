package com.indiya.musician.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.indiya.musician.model.JamApplyDto;
import com.indiya.musician.model.JamDto;
import com.indiya.util.db.DBClose;
import com.indiya.util.db.DBConnection;



public class JamDaoImpl implements JamDao {

	private static JamDao jamDao;

	static {
		jamDao = new JamDaoImpl();
	}

	private JamDaoImpl() {}
	
	public static JamDao getJamDao() {
		return jamDao;
	}


	@Override
	public int jamRegister(JamDto jam) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			
			String sql = "";
			sql += "insert into jam(no, member_id, subject, contents)  \n";
			sql += "values(jam_seq.nextval, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, jam.getJam_id());
			pstmt.setString(2, jam.getSubject());
			pstmt.setString(3, jam.getContents());
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}		
		return cnt;
	}

	@Override
	public List<JamDto> selectAllJam() {
		List<JamDto> list = new ArrayList<JamDto>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select no, gubun, member_id, subject, contents, visited, complete, write_date \n";
			sql += "from jam \n";
			sql += "where gubun = 1 and complete = 0 ";
			sql += "order by no desc";

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				JamDto jam = new JamDto(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getInt(6),
						rs.getInt(7),
						rs.getString(8)
						);
				list.add(jam);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}		
		return list;
	}

	@Override
	public JamDto selectByNo(int no) {
		JamDto jam = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select no, gubun, member_id, subject, contents, visited, complete, write_date \n";
			sql += "from jam \n";
			sql += "where no = ?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				jam = new JamDto(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getInt(6),
						rs.getInt(7),
						rs.getString(8)
				);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}		

		return jam;
	}

	@Override
	public int jamApplyRegister(JamApplyDto jamApply) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			
			String sql = "";
			sql += "insert into jam_apply(no, jam_no, member_id, position, contents)  \n";
			sql += "values(jamapply_seq.nextval, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, jamApply.getJam_no());
			pstmt.setString(2, jamApply.getApply_id());
			pstmt.setString(3, jamApply.getPosition());
			pstmt.setString(4, jamApply.getContents());
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}		
		return cnt;
	}

	
	
	@Override
	public List<JamDto> selectAllJamById(String jamId) {
		List<JamDto> list = new ArrayList<JamDto>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select no, gubun, member_id, subject, contents, visited, complete, write_date \n";
			sql += "from jam \n";
			sql += "where gubun = 1 and complete = 0 and member_id = ?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, jamId);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				JamDto jam = new JamDto(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getInt(6),
						rs.getInt(7),
						rs.getString(8)
						);
				
				list.add(jam);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// jap_apply list add
			int len = list.size();
			if(len > 0) {
				
				for(int i = 0; i < len; i++) {
					List<JamApplyDto> jamApplyList = new ArrayList<JamApplyDto>();
					try {
	
						String sql = "";
						sql += "select no, jam_no, member_id, position, contents, write_date \n";
						sql += "from jam_apply \n";
						sql += "where apply_stats = 0 and jam_no = ? ";
						if(pstmt != null) pstmt.close();
						pstmt = conn.prepareStatement(sql);
						pstmt.setInt(1, list.get(i).getNo());
						if(rs != null) rs.close();
						rs = pstmt.executeQuery();
						while(rs.next()) {
							JamApplyDto jamApply = new JamApplyDto(
										rs.getInt(1),
										rs.getInt(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5),
										rs.getString(6)
									);
							
							jamApplyList.add(jamApply);
						}
	
					} catch (SQLException e) {
						e.printStackTrace();
					}
					System.out.println("jamApplyList:" + jamApplyList.size());
					list.get(i).setJamApplyList(jamApplyList);
				}
			}
			
			DBClose.close(conn, pstmt, rs);
		}	
	
		return list;
	}

	@Override
	public int jamUpdateByStatus(int no) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			
			String sql = "";
			sql += "update jam set complete = 1 where no = ? \n";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}		
		return cnt;		
	}

}
