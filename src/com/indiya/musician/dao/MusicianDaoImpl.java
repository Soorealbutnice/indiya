package com.indiya.musician.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.indiya.musician.model.*;
import com.indiya.util.db.DBClose;
import com.indiya.util.db.DBConnection;

public class MusicianDaoImpl implements MusicianDao {
	private static MusicianDao musicianDao;

	static {
		musicianDao = new MusicianDaoImpl();
	}

	private MusicianDaoImpl() {}

	public static MusicianDao getMusicianService() {
		return musicianDao;
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
	public MusicianDto selectByNo(String muician_id) {
		MusicianDto musician = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select musician_id, musician_name, musician_info, musician_like, listener_count, listener_grade, area, pic, genre, write_date \n";
			sql += "from musician \n";
			sql += "where musician_id = ?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, muician_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				musician = new MusicianDto();
				musician.setMusician_id(rs.getString("musician_id"));
				musician.setMusician_name(rs.getString("musician_name"));
				musician.setMusician_info(rs.getString("musician_info"));
				musician.setMusician_like(rs.getInt("musician_like"));
				musician.setListener_count(rs.getInt("listener_count"));
				musician.setListener_grade(rs.getInt("listener_grade"));
				musician.setArea(rs.getString("area"));
				musician.setPic(rs.getString("pic"));
				musician.setGenre(rs.getString("genre"));
				musician.setWrite_date(rs.getString("write_date"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}		
		return musician;
	}

	@Override
	public List<MusicianMemberDto> selectAllMusicianMember(String musician_id) {
		List<MusicianMemberDto> list = new ArrayList<MusicianMemberDto>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select  mm.musician_id, mm.member_id, mm.position, mm.write_date, m.name \n";
			sql += "from musician_member mm, member m \n";
			sql += "where mm.musician_id = m.id and mm.musician_id = ?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, musician_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicianMemberDto musicianMember = new MusicianMemberDto(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5)
						);
				musicianMember.setMember_pic("musician_noimage.jpg");
				list.add(musicianMember);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}		
		return list;
	}

	@Override
	public int registerMemberAdd(MusicianMemberDto musicianMember, int jamApply_no) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			conn.setAutoCommit(false);
			String sql = "";
			sql += "insert into musician_member(musician_id, member_id, position)  \n";
			sql += "values(?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, musicianMember.getMusician_id());
			pstmt.setString(2, musicianMember.getMember_id());
			pstmt.setString(3, musicianMember.getPosition());
			pstmt.executeUpdate();
			pstmt.close();
			
			sql = "update jam_apply set apply_stats = 1 where no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, jamApply_no);
			cnt = pstmt.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} finally {
			DBClose.close(conn, pstmt);
		}		
		return cnt;
	}

	@Override
	public int MusicianShowPicRegister(MusicianShowPicDto musicianShowPic) {
		int cnt= 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
		
			sql = "insert into musician_show_pic(no, musician_id, show_date, show_place, show_pic, show_info) \n";
			sql += " values(musician_show_pic_seq.nextval, ?, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			int idx = 0;

			pstmt.setString(++idx, musicianShowPic.getMusician_id());
			pstmt.setString(++idx, musicianShowPic.getShow_date());
			pstmt.setString(++idx, musicianShowPic.getShow_place());
			pstmt.setString(++idx, musicianShowPic.getShow_pic());
			pstmt.setString(++idx, musicianShowPic.getShow_info());
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int MusicianShowMovieRegister(MusicianShowMovieDto musicianShowMovie) {
		int cnt= 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBConnection.makeConnection();
			String sql = "";

			sql = "insert into musician_show_movie(no, musician_id, show_title, show_place, show_date, \n";
			sql += "show_movie_file, show_movie_url, show_movie_info) \n";
			sql += "values(musician_show_movie_seq.nextval, ?, ?, ?, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			int idx = 0;

			pstmt.setString(++idx, musicianShowMovie.getMusician_id());
			pstmt.setString(++idx, musicianShowMovie.getShow_title());
			pstmt.setString(++idx, musicianShowMovie.getShow_place());
			pstmt.setString(++idx, musicianShowMovie.getShow_date());
			pstmt.setString(++idx, musicianShowMovie.getShow_movie_file());
			pstmt.setString(++idx, musicianShowMovie.getShow_movie_url());
			pstmt.setString(++idx, musicianShowMovie.getShow_movie_info());
			
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<MusicianShowPicDto> selectByMusicianShowPic(String musician_id) {
		List<MusicianShowPicDto> list = new ArrayList<MusicianShowPicDto>();
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select  no, musician_id, show_date, show_place, show_pic, show_info, write_date  \n";
			sql += "from musician_show_pic \n";
			sql += "where musician_id = ? \n";
			sql += "order by no desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, musician_id);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				MusicianShowPicDto musicianShowPic = new MusicianShowPicDto();
				musicianShowPic.setNo(rs.getInt(1));	
				musicianShowPic.setMusician_id(rs.getString(2));
				musicianShowPic.setShow_date(rs.getString(3));
				musicianShowPic.setShow_place(rs.getString(4));
				musicianShowPic.setShow_pic(rs.getString(5));
				musicianShowPic.setShow_info(rs.getString(6));
				musicianShowPic.setWrite_date(rs.getString(7));
				list.add(musicianShowPic);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}		
		return list;
	}

	@Override
	public List<MusicianShowMovieDto> selectByMusicianShowMovie(String musician_id) {
		List<MusicianShowMovieDto> list = new ArrayList<MusicianShowMovieDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select  no, musician_id, show_title, show_place, show_date, show_movie_file, show_movie_url, show_movie_info, visited, write_date  \n";
			sql += "from musician_show_movie \n";
			sql += "where musician_id = ? \n";
			sql += "order by no desc";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, musician_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicianShowMovieDto musicianShowMovie = new MusicianShowMovieDto();
				musicianShowMovie.setNo(rs.getInt(1));
				musicianShowMovie.setMusician_id(rs.getString(2));
				musicianShowMovie.setShow_title(rs.getString(3));
				musicianShowMovie.setShow_place(rs.getString(4));
				musicianShowMovie.setShow_date(rs.getString(5));
				musicianShowMovie.setShow_movie_file(rs.getString(6));
				musicianShowMovie.setShow_movie_url(rs.getString(7));
				musicianShowMovie.setShow_movie_info(rs.getString(8));
				musicianShowMovie.setVisited(rs.getInt(9));
				musicianShowMovie.setWrite_date(rs.getString(10));
				list.add(musicianShowMovie);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}		
		return list;
	}

	@Override
	public int MusicianCommentAdd(MusicianCommentDto musicianComment) {
		int cnt= 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql = "insert into musician_comment(no, musician_id, member_id, grade, contents) \n";
			sql += "values(musician_comment_seq.nextval, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);

			int idx = 0;
			pstmt.setString(++idx, musicianComment.getMusician_id());
			pstmt.setString(++idx, musicianComment.getMember_id());
			pstmt.setInt(++idx, musicianComment.getGrade());
			pstmt.setString(++idx, musicianComment.getContents());

			
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<MusicianCommentDto> selectByMusicianComment(String musician_id) {
		List<MusicianCommentDto> list = new ArrayList<MusicianCommentDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select no, musician_id, member_id, grade, contents, write_date  \n";
			sql += "from musician_comment \n";
			sql += "where musician_id = ? \n";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, musician_id);
			rs = pstmt.executeQuery();
			int idx = 0;
			while(rs.next()) {
				MusicianCommentDto musicianComment = new MusicianCommentDto();
				idx = 0;
				musicianComment.setNo(rs.getInt(++idx));
				musicianComment.setMusician_id(rs.getString(++idx));
				musicianComment.setMember_id(rs.getString(++idx));
				musicianComment.setGrade(rs.getInt(++idx));
				musicianComment.setContents(rs.getString(++idx));
				musicianComment.setWrite_date(rs.getString(++idx));
				list.add(musicianComment);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}		
		return list;
	}


}
