package com.diego.mid.model.product;

import java.sql.Date;

public class ProductVO {

	private Integer pro_num;
	private Integer cat_ref;//카테코리ref ex: 셔츠면 101 맨투맨이면 102
	private String pro_name;//상품이름
	private Integer pro_price;//상품가격
	private Integer pro_count;//상품재고량
	private Integer pro_sale;//상품판매개수
	private Date pro_date;//상품올린날짜
	private String pro_contents;//상품 상세내용
	private String pro_warning;//상품 주의사항
	private String opt1;//상품옵션1 추가하고싶을때마다 옵을 추가 최대 opt3까지
	private String opt1_val;
	private String opt2;
	private String opt2_val;
	private String opt3;
	private String opt3_val;
	
	
	public Integer getPro_num() {
		return pro_num;
	}
	public void setPro_num(Integer pro_num) {
		this.pro_num = pro_num;
	}
	public Integer getCat_ref() {
		return cat_ref;
	}
	public void setCat_ref(Integer cat_ref) {
		this.cat_ref = cat_ref;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public Integer getPro_price() {
		return pro_price;
	}
	public void setPro_price(Integer pro_price) {
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
	public String getOpt1() {
		return opt1;
	}
	public void setOpt1(String opt1) {
		this.opt1 = opt1;
	}
	public String getOpt1_val() {
		return opt1_val;
	}
	public void setOpt1_val(String opt1_val) {
		this.opt1_val = opt1_val;
	}
	public String getOpt2() {
		return opt2;
	}
	public void setOpt2(String opt2) {
		this.opt2 = opt2;
	}
	public String getOpt2_val() {
		return opt2_val;
	}
	public void setOpt2_val(String opt2_val) {
		this.opt2_val = opt2_val;
	}
	public String getOpt3() {
		return opt3;
	}
	public void setOpt3(String opt3) {
		this.opt3 = opt3;
	}
	public String getOpt3_val() {
		return opt3_val;
	}
	public void setOpt3_val(String opt3_val) {
		this.opt3_val = opt3_val;
	}
	
	
	
	
	
	
	
	
}
