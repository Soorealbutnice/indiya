package com.indiya.musician.model;

public class MusicianShowPicDto {
	private int no;
	private String musician_id;
	private String show_date;
	private String show_place;
	private String show_pic;
	private String show_info;
	private String write_date;
	
	public MusicianShowPicDto() {}
	
	
	public MusicianShowPicDto(int no, String musician_id, String show_date, String show_place, String show_pic,
			String show_info, String write_date) {
		super();
		this.no = no;
		this.musician_id = musician_id;
		this.show_date = show_date;
		this.show_place = show_place;
		this.show_pic = show_pic;
		this.show_info = show_info;
		this.write_date = write_date;
	}


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
	public String getShow_date() {
		return show_date;
	}
	public void setShow_date(String show_date) {
		this.show_date = show_date;
	}
	public String getShow_place() {
		return show_place;
	}
	public void setShow_place(String show_place) {
		this.show_place = show_place;
	}
	public String getShow_pic() {
		return show_pic;
	}
	public void setShow_pic(String show_pic) {
		this.show_pic = show_pic;
	}
	public String getShow_info() {
		return show_info;
	}
	public void setShow_info(String show_info) {
		this.show_info = show_info;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	@Override
	public String toString() {
		return "MusicianShowPicDto [no=" + no + ", musician_id=" + musician_id + ", show_date=" + show_date
				+ ", show_place=" + show_place + ", show_pic=" + show_pic + ", show_info=" + show_info + ", write_date="
				+ write_date + "]";
	}
	
	
}
