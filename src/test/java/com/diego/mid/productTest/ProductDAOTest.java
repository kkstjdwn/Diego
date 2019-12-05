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
			System.out.println("@@TEST1@@");
			
			productVO.setCat_ref(301);
			productVO.setPro_name("t1");
			productVO.setPro_price(50);
			productVO.setPro_count(50);
			productVO.setPro_contents("test");
			productVO.setPro_warning("드라이세탁만가능");
			productVO.setPro_color("bk");
			productVO.setPro_size("s");
			productVO.setPro_vital("dfasf");
		
			
			int result = productDAO.productInsert(productVO);
			
			assertEquals(1, result);//성공
			
	}

	
	//delete
	//@Test
//	
//		public void productDeleteTest()throws Exception {
//		
//		ProductVO productVO = new ProductVO();
//		
//		productVO.setPro_num(1);
//		
//		int result = productDAO.productDelete(productVO);
//		
//		assertEquals(1, result);
//}
}
