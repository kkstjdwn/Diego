package com.diego.mid.model;

public class Coupon {
	private String coupon;
	public String getCoupon() {
		return coupon;
	}
	public void setCoupon(String coupon) {
		this.coupon = coupon;
	}
	public Integer getCoup_num() {
		return coup_num;
	}
	public void setCoup_num(Integer coup_num) {
		this.coup_num = coup_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public double getSales_value() {
		return sales_value;
	}
	public void setSales_value(double sales_value) {
		this.sales_value = sales_value;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	private Integer coup_num;
	private String name;
	private String discount;
	private double sales_value;
	private String deadline;

}
