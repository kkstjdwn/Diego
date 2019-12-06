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
		
		productVO.setPro_num(productDAO.getProNum());
		
		return productDAO.productInsert(productVO);
		
	}
	
	//상품 리스트
	public List<ProductVO>productList(Pager pager)throws Exception{
		
		pager.makeRow();
		pager.makePage(productDAO.productCount(pager));
		
		return productDAO.productList(pager);
	}
	
	
	// 상품삭제
	public  int productDelete(ProductVO productVO)throws Exception {
		
		return productDAO.productDelete(productVO);
	}
	
	//상품선택
	public ProductVO productSelect(ProductVO productVO)throws Exception{
		
		return productDAO.productSelect(productVO);
		
	}
	
	//상품업데이트
	public int productUpdate(ProductVO productVO)throws Exception{
		
		return productDAO.productUpdate(productVO);
	}
	
	
}
