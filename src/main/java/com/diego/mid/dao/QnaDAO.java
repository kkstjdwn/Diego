package com.diego.mid.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diego.mid.model.product.QnaVO;

@Repository
public class QnaDAO {

	@Inject
	private SqlSession sqlSession;
	
	private final static String NAMESPACE="qnaMapper.";
	
	public int qnaWrite(QnaVO qnaVO)throws Exception{
		
		return sqlSession.insert(NAMESPACE+"qnaWrite",qnaVO);
	}
	
	
}
