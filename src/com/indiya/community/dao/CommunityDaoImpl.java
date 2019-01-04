package com.indiya.community.dao;

import java.sql.*;
import java.util.*;

import com.indiya.community.model.CommentDto;
import com.indiya.community.model.CommunityDto;
import com.indiya.util.db.DBClose;
import com.indiya.util.db.DBConnection;

public class CommunityDaoImpl implements CommunityDao {
	
	
	private static CommunityDao communityDao;
	
	static {
		communityDao = new CommunityDaoImpl();
	}
	
	private CommunityDaoImpl() {}
	
	public static CommunityDao getCommunityDao() {
		return communityDao;
	}


	@Override
	public int writeArticle(CommunityDto communitydto) {
		int no = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		System.out.println("dao 옴?");
		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into board (no, member_id, title, contents, visited, write_date) \n");
			sql.append("	   values (?, ?, ?, ?, 0, sysdate)");
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, communitydto.getNo());
			pstmt.setString(++idx, communitydto.getMember_id());
			pstmt.setString(++idx, communitydto.getTitle());
			pstmt.setString(++idx, communitydto.getContents());
			no = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		return no;
	}

	@Override
	public List<CommunityDto> listArticle(Map<String, String> map) {
		List<CommunityDto> list = new ArrayList<CommunityDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select b.* \n");
			sql.append("from ( \n");
			sql.append("	select rownum rn, a.* \n");
			sql.append("	from ( \n");
			sql.append("		select no, member_id, title, contents, visited, \n");
			sql.append(" 				case  \n");
			sql.append("					when to_char(write_date, 'yymmdd') = to_char(sysdate, 'yymmdd') \n");
			sql.append("					then to_char(write_date, 'hh24:mi:ss') \n");
			sql.append("					else to_char(write_date, 'yy.mm.dd') \n");
			sql.append("				end write_date \n");
			sql.append("		from board \n");
			String key = map.get("key");
			String word = map.get("word");
			if(!key.isEmpty() && !word.isEmpty()) {
				if(key.equals("title")) {
					sql.append("		where title like '%'||?||'%' \n");
				} else {// seq, id
					sql.append("		where " + key + " = ? \n");
				}
			}
			sql.append("		order by no desc \n");
			sql.append("		) a \n");
			sql.append("	where rownum <= ? \n");
			sql.append("	) b \n");
			sql.append("where b.rn > ? \n");
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			if(!key.isEmpty() && !word.isEmpty()) {
				pstmt.setString(++idx, word);
			}
			pstmt.setString(++idx, map.get("end"));
			pstmt.setString(++idx, map.get("start"));
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CommunityDto communityDto = new CommunityDto();
				communityDto.setNo(rs.getInt("no"));
				communityDto.setMember_id(rs.getString("member_id"));
				communityDto.setTitle(rs.getString("title"));
				communityDto.setContents(rs.getString("contents"));
				communityDto.setVisited(rs.getInt("visited"));
				communityDto.setWrite_date(rs.getString("write_date"));
				
				list.add(communityDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public CommunityDto viewArticle(int no) {
		CommunityDto communityDto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select no, member_id, title, contents, visited, \n");
			sql.append("case \n");
			sql.append("when to_char(write_date, 'yymmdd') = to_char(sysdate, 'yymmdd')  \n");
			sql.append("then to_char(write_date, 'hh24:mi:ss')  \n");
			sql.append("else to_char(write_date, 'yy.mm.dd')  \n");
			sql.append("end write_date  \n");
			sql.append("from board \n");
			sql.append("where no = ? \n");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				communityDto = new CommunityDto();
				communityDto.setNo(rs.getInt("no"));
				communityDto.setMember_id(rs.getString("member_id"));
				communityDto.setTitle(rs.getString("title"));
				communityDto.setContents(rs.getString("contents"));
				communityDto.setVisited(rs.getInt("visited"));
				communityDto.setWrite_date(rs.getString("write_date"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return communityDto;
	}

	@Override
	public CommunityDto getArticle(int no) {
		CommunityDto communityDto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select no, member_id, title, contents, visited \n");
			sql.append("from board \n");
			sql.append("where no = ? \n");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				communityDto = new CommunityDto();
				communityDto.setNo(rs.getInt("no"));
				communityDto.setMember_id(rs.getString("member_id"));
				communityDto.setTitle(rs.getString("title"));
				communityDto.setContents(rs.getString("contents"));
				communityDto.setVisited(rs.getInt("visited"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return communityDto;
	}

	@Override
	public void modifyArticle(CommunityDto communityDto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("update board  \n");
			sql.append("set title = ?, contents = ? \n");
			sql.append("where no = ?");
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setString(++idx, communityDto.getTitle());
			pstmt.setString(++idx, communityDto.getContents());
			pstmt.setInt(++idx, communityDto.getNo());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
	}

	@Override
	public void deleteArticle(int no){
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.makeConnection();
			conn.setAutoCommit(false);
			StringBuffer sql = new StringBuffer();
			sql.append("delete from board \n");
			sql.append("where no = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			pstmt.close();
			
			
			sql.setLength(0);
			sql.append("delete from board_comment \n");
			sql.append("where board_no = ?"	);
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			DBClose.close(conn, pstmt);
		}

	}

	@Override
	public int writeComment(CommentDto commentdto) {
		int no = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into board_comment (no, board_no, member_id, contents, write_date) \n");
			sql.append("	   values (?, ?, ?, ?, sysdate)");
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql.toString());
			System.out.println(commentdto.getBoard_no());
			System.out.println(commentdto.getNo());
			int idx = 0;
			pstmt.setInt(++idx, commentdto.getNo());
			pstmt.setInt(++idx, commentdto.getBoard_no());
			pstmt.setString(++idx, commentdto.getMember_id());
			pstmt.setString(++idx, commentdto.getContents());
			no = pstmt.executeUpdate();
			System.out.println("여기까지2");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		return no;
	}

	@Override
	public List<CommentDto> commentList(int no) {
		List<CommentDto> list = new ArrayList<CommentDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			
			sql.append("select no, board_no, member_id, contents, \n");
			sql.append("case \n");
			sql.append("	when to_char(write_date, 'yymmdd') = to_char(sysdate, 'yymmdd')  \n");
			sql.append("	then to_char(write_date, 'hh24:mi:ss')  \n");
			sql.append("	else to_char(write_date, 'yy.mm.dd')  \n");
			sql.append("	end write_date \n");
			sql.append("from board_comment \n");
			sql.append("where board_no = ? \n");
			sql.append("order by no \n");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				CommentDto commentDto = new CommentDto();
				commentDto.setNo(rs.getInt("no"));
				commentDto.setBoard_no(rs.getInt("board_no"));
				commentDto.setContents(rs.getString("contents"));
				commentDto.setMember_id(rs.getString("member_id"));
				commentDto.setWrite_date(rs.getString("write_date"));
	
				list.add(commentDto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public void deleteComment(int boardno, int no) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("delete from board_comment \n");
			sql.append("where board_no = ? \n");
			sql.append("and no = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, boardno);
			pstmt.setInt(2, no);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}

	}
	

	   @Override
	   public List<CommunityDto> mainList() {
	      System.out.println("왔냐1");
	      List<CommunityDto> list = new ArrayList<CommunityDto>();
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try {
	         conn = DBConnection.makeConnection();
	         StringBuffer sql = new StringBuffer();
	         sql.append("select rownum rn, a.* \n");
	         sql.append("from ( \n");
	         sql.append("   select title ,no \n");
	         sql.append("   from board \n");
	         sql.append("      where member_id = 'admin' \n");
	         sql.append("      order by write_date asc \n");
	         sql.append("      ) a \n");
	         sql.append("   where rownum < 6 \n");
	         
	         pstmt = conn.prepareStatement(sql.toString());
	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	            CommunityDto communityDto = new CommunityDto();
	            communityDto.setNo(rs.getInt("no"));
	            communityDto.setTitle(rs.getString("title"));
	         
	            list.add(communityDto);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         DBClose.close(conn, pstmt, rs);
	      }
	      return list;
	   }

	   @Override
	   public List<CommunityDto> mainHotList() {
	      List<CommunityDto> hotlist = new ArrayList<CommunityDto>();
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try {
	         conn = DBConnection.makeConnection();
	         StringBuffer sql = new StringBuffer();
	         sql.append("select rownum rn, a.* \n");
	         sql.append("  from(select no, title, visited \n");
	         sql.append("    from board  \n");
	         sql.append("   order by visited desc) a \n");
	         sql.append("   where rownum < 6 \n");
	         sql.append("      order by rownum asc \n");

	         pstmt = conn.prepareStatement(sql.toString());
	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	            CommunityDto communityDto = new CommunityDto();
	            communityDto.setNo(rs.getInt("no"));
	            communityDto.setTitle(rs.getString("title"));
	            communityDto.setVisited(rs.getInt("visited"));
	            hotlist.add(communityDto);

	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         DBClose.close(conn, pstmt, rs);
	      }
	      return hotlist;

	   }


}
