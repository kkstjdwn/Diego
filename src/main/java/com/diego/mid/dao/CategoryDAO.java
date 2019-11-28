package com.diego.mid.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diego.mid.model.product.CategoryVO;

@Repository
public class CategoryDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String NAMESPACE="categoryMapper.";
	
	public int categoryUpdate(CategoryVO categoryVO) throws Exception{
		
	 return sqlSession.update(NAMESPACE+"categoryUpdate", categoryVO);
	}
		
}
