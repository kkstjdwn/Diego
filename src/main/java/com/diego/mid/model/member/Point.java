package com.diego.mid.model.member;

import java.sql.Date;

public class Point {
	private String point;
	private Date point_date;
	private Integer point_value;
	private String contents;
	public String getPoint() {
		return point;
	}
	public void setPoint(String point) {
		this.point = point;
	}
	public Date getPoint_date() {
		return point_date;
	}
	public void setPoint_date(Date point_date) {
		this.point_date = point_date;
	}
	public Integer getPoint_value() {
		return point_value;
	}
	public void setPoint_value(Integer point_value) {
		this.point_value = point_value;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}

}
