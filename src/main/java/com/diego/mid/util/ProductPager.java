package com.diego.mid.util;

public class ProductPager {

	private Integer curPage;// 현재 페이지 번호 
	private Integer perPage;// 블럭당 페이지 개수

	// DB
	private Integer startRow; // 시작 row번호 
	private Integer lastRow; // 마지막 row번호

	// view(jsp)
	private Integer startNum; // 시작번호
	private Integer lastNum; // 마지막 번호
	private Integer curBlock; // 현재 블럭 번호
	private Integer totalBlock; // 전체 블럭 개수

	// List의 kind와 search를  받아오도록 설정
	private String kind;	// 검색종류
	private String search;	// 검색어
	public Integer getCurPage() {
		return curPage;
	}
	public void setCurPage(Integer curPage) {
		this.curPage = curPage;
	}
	public Integer getPerPage() {
		return perPage;
	}
	public void setPerPage(Integer perPage) {
		this.perPage = perPage;
	}
	public Integer getStartRow() {
		return startRow;
	}
	public void setStartRow(Integer startRow) {
		this.startRow = startRow;
	}
	public Integer getLastRow() {
		return lastRow;
	}
	public void setLastRow(Integer lastRow) {
		this.lastRow = lastRow;
	}
	public Integer getStartNum() {
		return startNum;
	}
	public void setStartNum(Integer startNum) {
		this.startNum = startNum;
	}
	public Integer getLastNum() {
		return lastNum;
	}
	public void setLastNum(Integer lastNum) {
		this.lastNum = lastNum;
	}
	public Integer getCurBlock() {
		return curBlock;
	}
	public void setCurBlock(Integer curBlock) {
		this.curBlock = curBlock;
	}
	public Integer getTotalBlock() {
		return totalBlock;
	}
	public void setTotalBlock(Integer totalBlock) {
		this.totalBlock = totalBlock;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}

	
}
