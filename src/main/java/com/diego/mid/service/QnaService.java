package com.diego.mid.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.diego.mid.dao.ImagesDAO;
import com.diego.mid.dao.ProductDAO;
import com.diego.mid.dao.QnaDAO;
import com.diego.mid.model.product.ImagesVO;
import com.diego.mid.model.product.ProductVO;
import com.diego.mid.model.product.QnaVO;
import com.diego.mid.util.Pager;

@Service
public class QnaService {
	
	@Inject
	private QnaDAO qnaDAO;
	
	@Inject
	private ProductDAO productDAO;
	
	@Inject
	private ImagesDAO imagesDAO;
	
	
	
	//글쓰기
	public int qnaWrite(QnaVO qnaVO)throws Exception {
		
		return qnaDAO.qnaWrite(qnaVO);
	}

	//리스트
	public List<QnaVO> qnaList(Pager pager)throws Exception{
		
		pager.makeRow();
		pager.makePage(qnaDAO.qnaCount(pager));
		
		return qnaDAO.qnaList(pager);
		
	}
	
	//selectOne
	public QnaVO qnaSelect(QnaVO qnaVO )throws Exception {
		
	
		return qnaDAO.qnaSelect(qnaVO);
	}
	
	//selectProduct
	public ProductVO productSelect(ProductVO productVO)throws Exception{
		
		return productDAO.productSelect(productVO);
	}
	
	//selectImages
	public ImagesVO imagesSelect(ImagesVO imagesVO)throws Exception{
		
		return imagesDAO.imagesSelect(imagesVO);
	}
}
