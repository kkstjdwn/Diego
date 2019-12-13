package com.diego.mid.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diego.mid.model.product.ReviewVO;

@Repository
public class ReviewDAO {
	
	@Inject SqlSession sqlSession;
	
	private final static String NAMESPACE="reviewMapper.";
	
	//리뷰작성
	public int reviewWrite(ReviewVO reviewVO)throws Exception {
		
		return sqlSession.insert(NAMESPACE+"reviewWrite",reviewVO );
	}
	
	
	

}
