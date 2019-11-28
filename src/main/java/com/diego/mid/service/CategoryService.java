package com.diego.mid.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.diego.mid.dao.CategoryDAO;
import com.diego.mid.model.product.CategoryVO;

@Service
public class CategoryService {

	@Inject
	private CategoryDAO categoryDAO;
	
	//카테고리 업데이트
	public int categoryUpdate(CategoryVO categoryVO)throws Exception {
		
		return categoryDAO.categoryUpdate(categoryVO);
	}
	
	
	
}
