package com.diego.mid.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diego.mid.model.product.ProductVO;
import com.diego.mid.model.product.RevFilesVO;
import com.diego.mid.model.product.ReviewVO;
import com.diego.mid.util.Pager;

@Repository
public class ReviewDAO {
	
	@Inject SqlSession sqlSession;
	
	private final static String NAMESPACE="reviewMapper.";
	
	//리뷰작성
	public int reviewWrite(ReviewVO reviewVO)throws Exception {
		
		return sqlSession.insert(NAMESPACE+"reviewWrite",reviewVO );
	}
	
	
	//상품+리뷰리스트
	
	 public List<ProductVO> reviewList(Pager pager)throws Exception{ return
	 sqlSession.selectList(NAMESPACE+"reviewList",pager); }
	 
	
	/*
	 * public List<ReviewVO> reviewList(Pager pager)throws Exception{ return
	 * sqlSession.selectList(NAMESPACE+"reviewList1",pager); }
	 */
	
	//리뷰리스트
	public List<ReviewVO> revAll(Pager pager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"revAll", pager);
	}
	
	//포토리뷰이미지
	public List<RevFilesVO>photoReview(Pager pager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"photoReview", pager);
	}
	
	
	
	//리뷰리스트2 페이징된답글리스트불러오기
	/*
	 * public List<ReviewVO> reviewList(Pager pager)throws Exception{
	 * 
	 * return sqlSession.selectList(NAMESPACE+"reviewList", pager); }
	 */
	

	//리뷰카운트 
	public int reviewCount(Pager pager)throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"reviewCount", pager);
	}
	
	//프로덕트카운트
	public int productCount(Pager pager)throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"productCount", pager);
	}
	
}
