package com.diego.mid.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.diego.mid.dao.ProductDAO;
import com.diego.mid.model.product.ProductVO;

@Service
public class ProductService {
	
	@Inject
	private ProductDAO productDAO;
	
	//상품 추가 INSERT
	public int productInsert(ProductVO productVO)throws Exception{
		
		return productDAO.productInsert(productVO);
		
	}
	
	//Delete
	public  int productDelete(ProductVO productVO)throws Exception {
		
		return productDAO.productDelete(productVO);
	}
}
