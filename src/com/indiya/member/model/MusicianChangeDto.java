package com.indiya.member.model;

public class MusicianChangeDto extends MemberDto {

	private String musician_id;
	private String musician_name;
	private String musician_info;
	private String genre;
	private String area;
	private String musician_like;
	private String listener_count;
	private String listener_grade;
	private String pic;
	private String write_date;
	
	
	public String getMusician_name() {
		return musician_name;
	}
	public String getGenre() {
		return genre;
	}
	public String getArea() {
		return area;
	}
	public void setMusician_name(String musician_name) {
		this.musician_name = musician_name;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getMusician_id() {
		return musician_id;
	}
	public String getMusician_info() {
		return musician_info;
	}
	public String getMusician_like() {
		return musician_like;
	}
	public String getListener_count() {
		return listener_count;
	}
	public String getListener_grade() {
		return listener_grade;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setMusician_id(String musician_id) {
		this.musician_id = musician_id;
	}
	public void setMusician_info(String musician_info) {
		this.musician_info = musician_info;
	}
	public void setMusician_like(String musician_like) {
		this.musician_like = musician_like;
	}
	public void setListener_count(String listener_count) {
		this.listener_count = listener_count;
	}
	public void setListener_grade(String listener_grade) {
		this.listener_grade = listener_grade;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	
}
