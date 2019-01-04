package com.indiya.musician.model;

public class MusicianCommentDto {

	private int no;
	private String musician_id;
	private String member_id;
	private int grade ;
	private String contents;
	private String write_date;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getMusician_id() {
		return musician_id;
	}
	public void setMusician_id(String musician_id) {
		this.musician_id = musician_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	
	@Override
	public String toString() {
		return "MusicianCommentDto [no=" + no + ", musician_id=" + musician_id + ", member_id=" + member_id + ", grade="
				+ grade + ", contents=" + contents + ", write_date=" + write_date + "]";
	}
	
	
}
