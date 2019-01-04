package com.indiya.musician.model;

import com.indiya.member.model.MemberDto;

public class MusicianDto extends MemberDto {
	private String musician_id;
	private String musician_name;
	private String musician_info;
	private int musician_like;
	private int listener_count;
	private int listener_grade;
	private String genre;
	private String area;
	private String pic;
	private String write_date;
	
	public String getMusician_id() {
		return musician_id;
	}
	public void setMusician_id(String musician_id) {
		this.musician_id = musician_id;
	}
	public String getMusician_name() {
		return musician_name;
	}
	public void setMusician_name(String musician_name) {
		this.musician_name = musician_name;
	}
	public String getMusician_info() {
		return musician_info;
	}
	public void setMusician_info(String musician_info) {
		this.musician_info = musician_info;
	}
	public int getMusician_like() {
		return musician_like;
	}
	public void setMusician_like(int musician_like) {
		this.musician_like = musician_like;
	}
	public int getListener_count() {
		return listener_count;
	}
	public void setListener_count(int listener_count) {
		this.listener_count = listener_count;
	}
	public int getListener_grade() {
		return listener_grade;
	}
	public void setListener_grade(int listener_grade) {
		this.listener_grade = listener_grade;
	}
	public String getArea() {
		return area;
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
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	@Override
	public String toString() {
		return "MusicianDto [musician_id=" + musician_id + ", musician_name=" + musician_name + ", musician_info="
				+ musician_info + ", musician_like=" + musician_like + ", listener_count=" + listener_count
				+ ", listener_grade=" + listener_grade + ", genre=" + genre + ", area=" + area + ", pic=" + pic
				+ ", write_date=" + write_date + "]";
	}

}
