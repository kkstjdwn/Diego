package com.diego.mid.productTest;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.diego.mid.TestAbstractCase;
import com.diego.mid.dao.ProductDAO;
import com.diego.mid.model.product.ProductVO;

public class ProductDAOTest extends TestAbstractCase{

	@Inject
	private ProductDAO productDAO;
		
	//insert
	@Test
	public void productInsertTest()throws Exception {
	
			ProductVO productVO = new ProductVO();
			
			
			productVO.setCat_ref(301);
			productVO.setColor("black");
			productVO.setPro_contents("검은셔츠입니다.");
			productVO.setPro_count(40);
			productVO.setPro_name("린넨셔츠");
			productVO.setPro_price("45000원");
			productVO.setPro_sale(20);
			productVO.setPro_size("95");
			productVO.setPro_warning("드라이세탁만가능");
			
			
			int result = productDAO.productInsert(productVO);
			
			assertEquals(1, result);//성공
			
	}

	
	//delete
	//@Test
	public void productDeleteTest()throws Exception {
		
		ProductVO productVO = new ProductVO();
		
		productVO.setPro_num(1);
		
		int result = productDAO.productDelete(productVO);
		
		assertEquals(1, result);
		
}
}
