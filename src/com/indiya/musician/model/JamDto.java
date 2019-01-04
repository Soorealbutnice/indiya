package com.indiya.musician.model;

import java.util.List;

public class JamDto {
	private int no;
	private int gubun;
	private String jam_id;
	private String subject;
	private String contents;
	private int visited;
	private int complete;
	private String write_date;
	
	private List<JamApplyDto> jamApplyList;
	
	
	public JamDto() {}
	
	public JamDto(int no, int gubun, String jam_id, String subject, String contents, int visited, int complete,
			String write_date) {
		super();
		this.no = no;
		this.gubun = gubun;
		this.jam_id = jam_id;
		this.subject = subject;
		this.contents = contents;
		this.visited = visited;
		this.complete = complete;
		this.write_date = write_date;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getGubun() {
		return gubun;
	}
	public void setGubun(int gubun) {
		this.gubun = gubun;
	}
	public String getJam_id() {
		return jam_id;
	}
	public void setJam_id(String jam_id) {
		this.jam_id = jam_id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	public int getComplete() {
		return complete;
	}
	public void setComplete(int complete) {
		this.complete = complete;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public List<JamApplyDto> getJamApplyList() {
		return jamApplyList;
	}

	public void setJamApplyList(List<JamApplyDto> jamApplyList) {
		this.jamApplyList = jamApplyList;
	}
	
	
	
}
