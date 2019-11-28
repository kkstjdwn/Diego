package com.diego.mid.model;

import java.sql.Date;

public class MemberVO {
	private String id;

    private String pw;

    private String name;

    private String address_pn;

    private String address_ba;

    private String address_da;

    private String phone;

    private String email;

    private String emailCheck;

    private Date ad_birth;

    private String ad_local;

    private String mem_rank;

    private String total_pay;

    private Date join_date;

    private String lev;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress_pn() {
		return address_pn;
	}

	public void setAddress_pn(String address_pn) {
		this.address_pn = address_pn;
	}

	public String getAddress_ba() {
		return address_ba;
	}

	public void setAddress_ba(String address_ba) {
		this.address_ba = address_ba;
	}

	public String getAddress_da() {
		return address_da;
	}

	public void setAddress_da(String address_da) {
		this.address_da = address_da;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmailCheck() {
		return emailCheck;
	}

	public void setEmailCheck(String emailCheck) {
		this.emailCheck = emailCheck;
	}

	public Date getAd_birth() {
		return ad_birth;
	}

	public void setAd_birth(Date ad_birth) {
		this.ad_birth = ad_birth;
	}

	public String getAd_local() {
		return ad_local;
	}

	public void setAd_local(String ad_local) {
		this.ad_local = ad_local;
	}

	public String getMem_rank() {
		return mem_rank;
	}

	public void setMem_rank(String mem_rank) {
		this.mem_rank = mem_rank;
	}

	public String getTotal_pay() {
		return total_pay;
	}

	public void setTotal_pay(String total_pay) {
		this.total_pay = total_pay;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}

	public String getLev() {
		return lev;
	}

	public void setLev(String lev) {
		this.lev = lev;
	}

}
