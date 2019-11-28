package com.diego.mid.model.product;

import java.sql.Date;

public class QnaVO {

	private String id; //회원아이디
	private String admin_id;//관리자아이디
	private Integer pro_num;//상품번호
	private Integer qna_num;//qna번호
	private String title;//제목
	private String contents;//내용
	private String image;//섬머노트에서 이미지추가
	private String qna_pw;//qna글 비밀번호
	private Integer qna_seceret;//공개로할껀지,비공개로할껀지
	private Date qna_date;// 작성날짜
	private Integer step;
	private Integer ref;
	private Integer depth;
	private String writer;//작성자

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public Integer getPro_num() {
		return pro_num;
	}
	public void setPro_num(Integer pro_num) {
		this.pro_num = pro_num;
	}
	public Integer getQna_num() {
		return qna_num;
	}
	public void setQna_num(Integer qna_num) {
		this.qna_num = qna_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getQna_pw() {
		return qna_pw;
	}
	public void setQna_pw(String qna_pw) {
		this.qna_pw = qna_pw;
	}
	public Integer getQna_seceret() {
		return qna_seceret;
	}
	public void setQna_seceret(Integer qna_seceret) {
		this.qna_seceret = qna_seceret;
	}
	public Date getQna_date() {
		return qna_date;
	}
	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}
	public Integer getStep() {
		return step;
	}
	public void setStep(Integer step) {
		this.step = step;
	}
	public Integer getRef() {
		return ref;
	}
	public void setRef(Integer ref) {
		this.ref = ref;
	}
	public Integer getDepth() {
		return depth;
	}
	public void setDepth(Integer depth) {
		this.depth = depth;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	
}
