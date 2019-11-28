package com.diego.mid.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.diego.mid.model.product.ProductVO;

@Repository
public class ProductDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String NAMESPACE="productMapper.";

	public int productInsert(ProductVO productVO) throws Exception{

		return sqlSession.insert(NAMESPACE+"productInsert", productVO);
	}	

}
