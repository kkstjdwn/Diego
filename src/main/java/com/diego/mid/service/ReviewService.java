package com.diego.mid.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.diego.mid.dao.ReviewDAO;
import com.diego.mid.model.product.ReviewVO;

@Service
public class ReviewService {
	
	@Inject 
	private ReviewDAO reviewDAO;
	
	//리뷰 인서트
	public int reviewWrite(ReviewVO reviewVO)throws Exception{
		return reviewDAO.reviewWrite(reviewVO);
	}

}
