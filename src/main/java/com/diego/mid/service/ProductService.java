package com.diego.mid.service;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.diego.mid.dao.ImagesDAO;
import com.diego.mid.dao.ProductDAO;
import com.diego.mid.model.product.ImagesVO;
import com.diego.mid.model.product.ProductVO;
import com.diego.mid.util.Pager;
import com.diego.mid.util.ProductFile;

@Service
public class ProductService {
	
	@Inject
	private ProductDAO productDAO;
	
	@Inject
	private ImagesDAO imagesDAO;
	
	@Inject
	private ProductFile saver;
	
	//상품 추가 INSERT
	public int productInsert(ProductVO productVO, MultipartFile [] imagesFiles ,HttpSession session )throws Exception{
		
		//productVO.setPro_num(productDAO.getProNum());
		
		//1. 파일을 저장할 실제경로
		String realPath=session.getServletContext().getRealPath("resources/product/images");
		
		ImagesVO imagesVO = new ImagesVO();
		//int result = productDAO.productInsert(productVO);
		
		imagesVO.setPro_num(productVO.getPro_num());
		System.out.println(realPath);
		
		imagesVO.setPro_main(saver.save(realPath,imagesFiles[0]));
		imagesVO.setPro_full(saver.save(realPath,imagesFiles[1]));
		imagesVO.setPro_info(saver.save(realPath,imagesFiles[2]));
		imagesVO.setPro_model(saver.save(realPath,imagesFiles[3]));
		imagesVO.setPro_info(saver.save(realPath,imagesFiles[4]));
		imagesVO.setPro_sizecut(saver.save(realPath,imagesFiles[5]));
		imagesVO.setSumnale(saver.save(realPath,imagesFiles[6]));
		imagesVO.setGif(saver.save(realPath,imagesFiles[7]));
		imagesVO.setFront(saver.save(realPath,imagesFiles[8]));
		
		System.out.println(imagesVO.getPro_full());
		//result= imagesDAO.imagesInsert(imagesVO);
		
		//return result;
		
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
