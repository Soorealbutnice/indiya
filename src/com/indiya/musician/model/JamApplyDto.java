package com.indiya.musician.model;

public class JamApplyDto {
	private int no;
	private int jam_no;
	private String apply_id;
	private String position;
	private String contents;
	private String write_date;
	
	public JamApplyDto() {};

	
	public JamApplyDto(int no, int jam_no, String apply_id, String position, String contents, String write_date) {
		super();
		this.no = no;
		this.jam_no = jam_no;
		this.apply_id = apply_id;
		this.position = position;
		this.contents = contents;
		this.write_date = write_date;
	}


	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getJam_no() {
		return jam_no;
	}
	public void setJam_no(int jam_no) {
		this.jam_no = jam_no;
	}
	public String getApply_id() {
		return apply_id;
	}
	public void setApply_id(String apply_id) {
		this.apply_id = apply_id;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
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
		return "JamApplyDto [no=" + no + ", jam_no=" + jam_no + ", apply_id=" + apply_id + ", position=" + position
				+ ", contents=" + contents + ", write_date=" + write_date + "]";
	}
	
	
}
