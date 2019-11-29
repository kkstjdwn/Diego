package com.diego.mid.model.member;

public class Coupon {
	private Integer coup_num;
	private String id;
	private String name;
	private String discount;
	private String deadline;
	private double sales_value;
	
	
	public Integer getCoup_num() {
		return coup_num;
	}
	public void setCoup_num(Integer coup_num) {
		this.coup_num = coup_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	public double getSales_value() {
		return sales_value;
	}
	public void setSales_value(double sales_value) {
		this.sales_value = sales_value;
	}
	
	

}
