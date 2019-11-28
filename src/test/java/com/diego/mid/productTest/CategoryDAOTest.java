package com.diego.mid.productTest;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.diego.mid.TestAbstractCase;
import com.diego.mid.dao.CategoryDAO;
import com.diego.mid.model.product.CategoryVO;

public class CategoryDAOTest extends TestAbstractCase{

	@Inject
	private CategoryDAO categoryDAO;
	
	//@Test
	public void categoryUpdatetest()throws Exception {
		
		CategoryVO categoryVO =new CategoryVO();
		
		categoryVO.setCat_code(100);
		categoryVO.setCat_name("지갑");
		categoryVO.setCat_ref(101);
		
		int result = categoryDAO.categoryUpdate(categoryVO);
		
		assertEquals(1, result);
	}

}
