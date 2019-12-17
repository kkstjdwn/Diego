package com.diego.mid.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.diego.mid.dao.RevFilesDAO;
import com.diego.mid.dao.ReviewDAO;
import com.diego.mid.model.product.ProductVO;
import com.diego.mid.model.product.RevFilesVO;
import com.diego.mid.model.product.ReviewVO;
import com.diego.mid.util.Pager;

@Service
public class ReviewService {
	
	@Inject 
	private ReviewDAO reviewDAO;
	
	
	//리뷰 인서트
	public int reviewWrite(ReviewVO reviewVO)throws Exception{
		return reviewDAO.reviewWrite(reviewVO);
	}
	
	//상품+리뷰리스트
	
	 public List<ProductVO> reviewList(Pager pager)throws Exception{
	 pager.makeRow(); 
	 pager.makePage(reviewDAO.productCount(pager));
	 return reviewDAO.reviewList(pager); }
	 
	

	//리뷰리스트가져오기
	public List<ReviewVO>revAll(Pager pager)throws Exception{
		
		return reviewDAO.revAll(pager);
	}
	
	//포토리뷰이미지가져오기
	public List<RevFilesVO>photoReview(Pager pager)throws Exception{
		return reviewDAO.photoReview(pager);
	}
	
	
	//리뷰 리스트2페이징된답글리스트가져오기
//	public List<ReviewVO> reviewList(Pager pager)throws Exception{
//		
//		pager.makeRow();
//		pager.makePage(reviewDAO.reviewCount(pager));
//		return reviewDAO.reviewList(pager);
//	}
	
	
	
	//리뷰 카운트
//    public int reviewCount(Pager pager)throws Exception {
//    	
//    	return reviewDAO.reviewCount(pager);
//    }

    //리뷰 카운트
    public int productCount(Pager pager)throws Exception {
    	
    	return reviewDAO.productCount(pager);
    }
}
