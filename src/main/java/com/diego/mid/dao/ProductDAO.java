package com.diego.mid.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.diego.mid.model.product.ProductVO;
import com.diego.mid.util.Pager;

@Repository
public class ProductDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String NAMESPACE="productMapper.";

	//insert
	public int productInsert(ProductVO productVO) throws Exception{
		
		return sqlSession.insert(NAMESPACE+"productInsert", productVO);
	}	

	//select
	public List<ProductVO> productList(Pager pager)throws Exception{
		
		return sqlSession.selectList(NAMESPACE+"productList", pager);
	}
	
	//count
	public int productCount(Pager pager)throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"productCount", pager);
	}
	
	
//	//delete
//	public int productDelete(ProductVO productVO)throws Exception{
//		
//		return sqlSession.delete(NAMESPACE+"productDelete", productVO);
//		
//	}
	
	
}
