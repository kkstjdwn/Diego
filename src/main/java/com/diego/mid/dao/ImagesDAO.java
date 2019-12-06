package com.diego.mid.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diego.mid.model.product.ImagesVO;

@Repository
public class ImagesDAO {

	@Inject SqlSession sqlSession;
	
	private final static String NAMESPACE= "imagesMapper.";

	
	//pro_num을가져온다.
	public int getProNum() throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"getProNum");
	}
	
	//insert
	public int imagesInsert(ImagesVO imagesVO)throws Exception {
		
		return sqlSession.insert(NAMESPACE+"imagesInsert", imagesVO);
	}
	
}
