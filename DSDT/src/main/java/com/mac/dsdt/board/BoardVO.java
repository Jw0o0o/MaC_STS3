package com.mac.dsdt.board;

import java.sql.Date;

public class BoardVO {
	private int id;
	private String title;
	private String content;
	private String author;
	private Date created_at;
	
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	@Override
    public String toString() {
        return "BoardVO [id=" + id + ", title=" + title + ", content=" + content + ", author=" + author + ", createdAt=" + created_at + "]";
    }

}
