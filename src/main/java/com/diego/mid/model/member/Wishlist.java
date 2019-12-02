package com.diego.mid.model.member;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public class Wishlist {
	
	private Integer wish_num;
	private MultipartFile fname;
	private String image;
	private String id;
	private Integer pro_num;
	private String pro_info;
	private Integer price;
	private Integer price_point;
	private String delivery;
	private String delivery_cost;
	private Integer sum_price;
	
	

	public MultipartFile getFname() {
		return fname;
	}
	public void setFname(MultipartFile fname) {
		this.fname = fname;
	}
	public Integer getWish_num() {
		return wish_num;
	}
	public void setWish_num(Integer wish_num) {
		this.wish_num = wish_num;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Integer getPro_num() {
		return pro_num;
	}
	public void setPro_num(Integer pro_num) {
		this.pro_num = pro_num;
	}
	public String getPro_info() {
		return pro_info;
	}
	public void setPro_info(String pro_info) {
		this.pro_info = pro_info;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getPrice_point() {
		return price_point;
	}
	public void setPrice_point(Integer price_point) {
		this.price_point = price_point;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	public String getDelivery_cost() {
		return delivery_cost;
	}
	public void setDelivery_cost(String delivery_cost) {
		this.delivery_cost = delivery_cost;
	}
	public Integer getSum_price() {
		return sum_price;
	}
	public void setSum_price(Integer sum_price) {
		this.sum_price = sum_price;
	}
	
	
	
}
