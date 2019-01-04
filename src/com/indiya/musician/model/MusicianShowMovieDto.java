package com.indiya.musician.model;

public class MusicianShowMovieDto {
	private int no;
	private String musician_id;
	private String show_title;
	private String show_place;
	private String show_date;
	private String show_movie_file;
	private String show_movie_url;
	private String show_movie_info;
	private int visited;
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
	public String getShow_title() {
		return show_title;
	}
	public void setShow_title(String show_title) {
		this.show_title = show_title;
	}
	public String getShow_place() {
		return show_place;
	}
	public void setShow_place(String show_place) {
		this.show_place = show_place;
	}
	public String getShow_date() {
		return show_date;
	}
	public void setShow_date(String show_date) {
		this.show_date = show_date;
	}
	public String getShow_movie_file() {
		return show_movie_file;
	}
	public void setShow_movie_file(String show_movie_file) {
		this.show_movie_file = show_movie_file;
	}
	public String getShow_movie_url() {
		return show_movie_url;
	}
	public void setShow_movie_url(String show_movie_url) {
		this.show_movie_url = show_movie_url;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	public String getShow_movie_info() {
		return show_movie_info;
	}
	public void setShow_movie_info(String show_movie_info) {
		this.show_movie_info = show_movie_info;
	}
	@Override
	public String toString() {
		return "MusicianShowMovieDto [no=" + no + ", musician_id=" + musician_id + ", show_title=" + show_title
				+ ", show_place=" + show_place + ", show_date=" + show_date + ", show_movie_file=" + show_movie_file
				+ ", show_movie_url=" + show_movie_url + ", show_movie_info=" + show_movie_info + ", visited=" + visited
				+ ", write_date=" + write_date + "]";
	}

	
}
