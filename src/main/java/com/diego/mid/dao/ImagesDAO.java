package com.diego.mid.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diego.mid.model.product.ImagesVO;

@Repository
public class ImagesDAO {

	@Inject SqlSession sqlSession;
	
	private final static String NAMESPACE= "imagesMapper.";

	
	
	
	//insert
	public int imagesInsert(ImagesVO imagesVO)throws Exception {
		
		return sqlSession.insert(NAMESPACE+"imagesInsert", imagesVO);
	}
	
}
