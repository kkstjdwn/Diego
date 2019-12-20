package com.diego.mid.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diego.mid.model.product.RevFilesVO;

@Repository
public class RevFilesDAO {

	
	@Inject
	private SqlSession sqlSession;
	
	private static final String NAMESPACE="revFilesMapper.";
	
	public int fileWrite(RevFilesVO revFilesVO)throws Exception {
		return sqlSession.insert(NAMESPACE+"fileWrite", revFilesVO);
	}
}
