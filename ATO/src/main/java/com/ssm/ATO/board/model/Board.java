package com.ssm.ATO.board.model;

import java.util.Date;

public class Board {
	private int id;
	private String title;
	private String content;
	private String writer;
	private Date regDate;
	private int viewCnt;
	
	public Board() {}
	public Board(String title, String content, String writer) {
		this.title = title;
		this.content = content;
		this.writer = writer;
	}
	public Board(int id, String title, String content, String writer, Date regDate, int viewCnt) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.regDate = regDate;
		this.viewCnt = viewCnt;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + id;
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + viewCnt;
		result = prime * result + ((writer == null) ? 0 : writer.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Board other = (Board) obj;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (id != other.id)
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (viewCnt != other.viewCnt)
			return false;
		if (writer == null) {
			if (other.writer != null)
				return false;
		} else if (!writer.equals(other.writer))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "board [id=" + id + ", title=" + title + ", content=" + content + ", writer=" + writer + ", viewCnt="
				+ viewCnt + "]";
	}
}
