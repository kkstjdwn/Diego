package com.diego.mid.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.diego.mid.dao.QnaDAO;
import com.diego.mid.model.product.QnaVO;

@Service
public class QnaService {
	
	@Inject
	private QnaDAO qnaDAO;
	
	public int qnaWrite(QnaVO qnaVO)throws Exception {
		
		return qnaDAO.qnaWrite(qnaVO);
	}

}
