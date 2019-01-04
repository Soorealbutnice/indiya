package com.indiya.review.model;

public class ReviewDto {

	private String member_id; 		//작성자 아이디
	private int reviewNo;			//시퀀스
	private String musicianName;	//가수 이름
	private String location;		//공연 장소
	private String url;				//영상 url
	private String contents;		//후기
	private String photoRoot;		//사진경로
	private String write_date;		//작성일
	private int score;				//별점
	private int count;				//별점 참여인원
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getMusicianName() {
		return musicianName;
	}
	public void setMusicianName(String musicianName) {
		this.musicianName = musicianName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getPhotoRoot() {
		return photoRoot;
	}
	public void setPhotoRoot(String photoRoot) {
		this.photoRoot = photoRoot;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	
	
	
}
