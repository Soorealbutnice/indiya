package com.indiya.review.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.indiya.community.model.CommunityDto;
import com.indiya.review.model.ReviewDto;
import com.indiya.util.ParameterCheck;
import com.indiya.util.db.DBClose;
import com.indiya.util.db.DBConnection;

public class ReviewDaoImpl implements ReviewDao {

private static ReviewDao reviewDao;
	
	static {
		reviewDao = new ReviewDaoImpl();
	}
	
	private ReviewDaoImpl() {}
	
	public static ReviewDao getReviewDao() {
		return reviewDao;
	}


	@Override
	public List<ReviewDto> mainList() {
		List<ReviewDto> list = new ArrayList<ReviewDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select member_id, reviewno, musicianname, location, url, contents, photoroot, to_char(write_date, 'yyMMdd') write_date, score, count \n");
			sql.append("from review \n");
			
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReviewDto reviewDto = new ReviewDto();
				reviewDto.setContents(rs.getString("contents"));
				reviewDto.setCount(rs.getInt("count"));
				reviewDto.setLocation(rs.getString("location"));
				reviewDto.setMember_id(rs.getString("member_id"));
				reviewDto.setMusicianName(rs.getString("musicianname"));
				reviewDto.setPhotoRoot(rs.getString("photoroot"));
				reviewDto.setReviewNo(rs.getInt("reviewno"));
				reviewDto.setScore(rs.getInt("score"));
				reviewDto.setUrl(rs.getString("url"));
				reviewDto.setWrite_date(rs.getString("write_date"));
				
				list.add(reviewDto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public ReviewDto getReview(int reviewNo) {
		
		ReviewDto review = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select * \n");
			sql.append("from review \n");
			sql.append("where reviewno = ? \n");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, reviewNo);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				review.setContents(rs.getString("contents"));
				review.setCount(rs.getInt("count"));
				review.setLocation(rs.getString("location"));
				review.setMember_id(rs.getString("member_id"));
				review.setMusicianName(rs.getString("musicianname"));
				review.setPhotoRoot(rs.getString("photoroot"));
				review.setReviewNo(rs.getInt("reviewno"));
				review.setScore(rs.getInt("score"));
				review.setUrl(rs.getString("url"));
				review.setWrite_date(rs.getString("write_date"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return review;
	}
	@Override
	   public int writeReview(ReviewDto reviewDto) {
		System.out.println("여긴 어떨까"+reviewDto.getMusicianName());
	      int cnt = 0;
	      Connection conn = null;
	      PreparedStatement pstmt = null;

	      	
	         try {
	            conn = DBConnection.makeConnection();
	            String sql = "";
	            sql += "insert into review(member_id, reviewNo, musicianName, location, url, contents, photoRoot, write_date, score, count) \n";
	            sql += "values(?,?,?,?,?,?,?,sysdate,0,0) \n";
	         
	            pstmt = conn.prepareStatement(sql);
	            int idx = 0;
	            System.out.println("뮤지션네입 오긴 햇지??" + reviewDto.getMusicianName());
	            pstmt.setString(++idx, reviewDto.getMember_id());
	            pstmt.setInt(++idx, reviewDto.getReviewNo());
	            pstmt.setString(++idx, ParameterCheck.nullToBlank(reviewDto.getMusicianName()));
	            pstmt.setString(++idx, reviewDto.getLocation());
	            pstmt.setString(++idx, reviewDto.getUrl());
	            pstmt.setString(++idx, reviewDto.getContents());
	            pstmt.setString(++idx, reviewDto.getPhotoRoot());

	            cnt = pstmt.executeUpdate();

	         } catch (SQLException e) {
	            e.printStackTrace();
	         } finally {
	            DBClose.close(conn, pstmt);
	         }
	         return cnt;
	      }
}
