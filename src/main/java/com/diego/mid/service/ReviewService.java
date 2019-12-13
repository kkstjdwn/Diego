package com.diego.mid.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.diego.mid.dao.ReviewDAO;
import com.diego.mid.model.product.ProductVO;
import com.diego.mid.model.product.ReviewVO;
import com.diego.mid.util.Pager;

@Service
public class ReviewService {
	
	@Inject 
	private ReviewDAO reviewDAO;
	
	//리뷰 인서트 지워도됨..혹시몰라서 냄겨놓음, 매퍼 ,dao,서비스,컨트롤러까지.. 이유는 product단에서 전부처리를해줌.
	public int reviewWrite(ReviewVO reviewVO)throws Exception{
		return reviewDAO.reviewWrite(reviewVO);
	}
	
	//리뷰 리스트1상품리스트가져오기
	public List<ProductVO> productList(Pager pager)throws Exception{
		pager.makeRow();
		pager.makePage(reviewDAO.reviewCount(pager));
		return reviewDAO.productList(pager);
	}
	//리뷰 리스트2페이징된답글리스트가져오기
	public List<ReviewVO> reviewList(Pager pager)throws Exception{
		
		pager.makeRow();
		pager.makePage(reviewDAO.reviewCount(pager));
		return reviewDAO.reviewList(pager);
	}
	//리뷰 리스트3전체답글리스트가져오기
	public List<ReviewVO>revAll(ReviewVO reviewVO)throws Exception{
		
		return reviewDAO.revAll(reviewVO);
	}
	
	
	
	//리뷰 카운트
    public int reviewCount(Pager pager)throws Exception {
    	
    	return reviewDAO.reviewCount(pager);
    }
	
}
