package com.diego.mid.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.diego.mid.dao.ProductDAO;
import com.diego.mid.model.product.ProductVO;
import com.diego.mid.util.Pager;

@Service
public class ProductService {
	
	@Inject
	private ProductDAO productDAO;
	
	//상품 추가 INSERT
	public int productInsert(ProductVO productVO)throws Exception{
		
		return productDAO.productInsert(productVO);
		
	}
	
	public List<ProductVO>productList(Pager pager)throws Exception{
		
		pager.makeRow();
		pager.makePage(productDAO.productCount(pager));
		
		return productDAO.productList(pager);
	}
	
	
//	//Delete
//	public  int productDelete(ProductVO productVO)throws Exception {
//		
//		return productDAO.productDelete(productVO);
//	}
}
