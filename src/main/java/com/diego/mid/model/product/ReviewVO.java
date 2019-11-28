package com.diego.mid.model.product;

import java.sql.Date;

public class ReviewVO {
	
	private String id;
	private Integer pro_num;//상품번호
	private Integer rev_num;//리뷰번호
	private Integer star;//별개수
	private String star_contents;// 별점 옆의 좋아요,싫어요 글생기는것
	private String contents;// 리뷰내용
	private String name;//작성자이름
	private Integer help;// 도움이되셨습니까? 네(1)아니오(-1)
	private String image;// 포토리뷰처럼 섬머노트이용해서 사진도 올릴수있게..
	private Date rev_date;//작성날짜
	
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
	public Integer getRev_num() {
		return rev_num;
	}
	public void setRev_num(Integer rev_num) {
		this.rev_num = rev_num;
	}
	public Integer getStar() {
		return star;
	}
	public void setStar(Integer star) {
		this.star = star;
	}
	public String getStar_contents() {
		return star_contents;
	}
	public void setStar_contents(String star_contents) {
		this.star_contents = star_contents;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getHelp() {
		return help;
	}
	public void setHelp(Integer help) {
		this.help = help;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Date getRev_date() {
		return rev_date;
	}
	public void setRev_date(Date rev_date) {
		this.rev_date = rev_date;
	}
	
	
}
