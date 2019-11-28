package com.diego.mid.model.member;

import java.sql.Date;

public class Orders {
	private String orders;
	private Date order_date;
	private String image;
	private Integer order_num;
	private String product_info;
	private Integer product_count;
	private String price;
	private String order_result;
	private String order_status;
	public String getOrders() {
		return orders;
	}
	public void setOrders(String orders) {
		this.orders = orders;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Integer getOrder_num() {
		return order_num;
	}
	public void setOrder_num(Integer order_num) {
		this.order_num = order_num;
	}
	public String getProduct_info() {
		return product_info;
	}
	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}
	public Integer getProduct_count() {
		return product_count;
	}
	public void setProduct_count(Integer product_count) {
		this.product_count = product_count;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getOrder_result() {
		return order_result;
	}
	public void setOrder_result(String order_result) {
		this.order_result = order_result;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}

}
