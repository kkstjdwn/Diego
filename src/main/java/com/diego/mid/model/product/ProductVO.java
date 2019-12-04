package com.diego.mid.model.product;

import java.sql.Date;

public class ProductVO {

	private Integer pro_num;
	private Integer cat_ref;//카테코리ref ex: 셔츠면 101 맨투맨이면 102
	private String pro_name;//상품이름
	private String pro_price;//상품가격
	private Integer pro_count;//상품재고량
	private Integer pro_sale;//상품판매개수
	private Date pro_date;//상품올린날짜
	private String pro_contents;//상품 상세내용
	private String pro_warning;//상품 주의사항
	private String color;//상품 컬러
	private String pro_size;//상품사이즈
	
	
	public Integer getPro_num() {
		return pro_num;
	}
	public void setPro_num(Integer pro_num) {
		this.pro_num = pro_num;
	}
	
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_price() {
		return pro_price;
	}
	public void setPro_price(String pro_price) {
		this.pro_price = pro_price;
	}
	public Integer getPro_count() {
		return pro_count;
	}
	public void setPro_count(Integer pro_count) {
		this.pro_count = pro_count;
	}
	public Integer getPro_sale() {
		return pro_sale;
	}
	public void setPro_sale(Integer pro_sale) {
		this.pro_sale = pro_sale;
	}
	public Date getPro_date() {
		return pro_date;
	}
	public void setPro_date(Date pro_date) {
		this.pro_date = pro_date;
	}
	public String getPro_contents() {
		return pro_contents;
	}
	public void setPro_contents(String pro_contents) {
		this.pro_contents = pro_contents;
	}
	public String getPro_warning() {
		return pro_warning;
	}
	public void setPro_warning(String pro_warning) {
		this.pro_warning = pro_warning;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getPro_size() {
		return pro_size;
	}
	public void setPro_size(String pro_size) {
		this.pro_size = pro_size;
	}
	public Integer getCat_ref() {
		return cat_ref;
	}
	public void setCat_ref(Integer cat_ref) {
		this.cat_ref = cat_ref;
	}
	
	
	
	
	
	
}
