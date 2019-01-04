package com.indiya.musician.model;

public class MusicianMemberDto {
	private String musician_id;
	private String member_id;
	private String position;
	private String write_date;
	private String member_name;
	
	private String member_pic;
	
	public MusicianMemberDto() {}
	
	public MusicianMemberDto(String musician_id, String member_id, String position, String write_date, String member_name) {
		super();
		this.musician_id = musician_id;
		this.member_id = member_id;
		this.position = position;
		this.write_date = write_date;
		this.member_name = member_name;
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
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_pic() {
		return member_pic;
	}

	public void setMember_pic(String member_pic) {
		this.member_pic = member_pic;
	}
	
}
