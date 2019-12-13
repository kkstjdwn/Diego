package com.diego.mid.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diego.mid.model.product.ImagesVO;
import com.diego.mid.model.product.ProductVO;
import com.diego.mid.util.Pager;

@Repository
public class ProductDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String NAMESPACE="productMapper.";

	//pro_num을가져온다.
	/*
	 * public int getProNum() throws Exception{
	 * 
	 * return sqlSession.selectOne(NAMESPACE+"getProNum"); }
	 */
	

	//list
	public List<ProductVO> productList(Pager pager)throws Exception{
		
		return sqlSession.selectList(NAMESPACE+"productList", pager);
	}
	
	
	//insert
	public int productInsert(ProductVO productVO) throws Exception{
		
		return sqlSession.insert(NAMESPACE+"productInsert", productVO);
	}	
	
	//count
	public int productCount(Pager pager)throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"productCount", pager);
	}
	
	
	//delete
	public int productDelete(ProductVO productVO)throws Exception{
		
		return sqlSession.delete(NAMESPACE+"productDelete", productVO);
		
	}
	
	//selectOne
	public ProductVO productSelect(ProductVO productVO)throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"productSelect", productVO);
	}
	
	//update
	public int productUpdate(ProductVO productVO)throws Exception{
		
		return sqlSession.update(NAMESPACE+"productUpdate", productVO);
		
	}
	
	
}
