package com.diego.mid.productTest;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.diego.mid.TestAbstractCase;
import com.diego.mid.dao.ReviewDAO;
import com.diego.mid.model.product.ProductVO;
import com.diego.mid.util.Pager;

public class mapperTest extends TestAbstractCase{

	
	@Inject
	private ReviewDAO reviewDAO;
	@Inject
	private SqlSession session;
	
	//매퍼테스트 
	//@Test
	public void mapperTest() {
		ProductVO productVO = new ProductVO();
		Pager pager = new Pager();
		pager.setStartRow(1);
		pager.setLastRow(10);
		pager.setStartNum(1);
		pager.setLastNum(3);
		productVO.setPro_num(232);
		assertNotNull(session.selectList("reviewMapper.reviewList", pager));
	}

	//dao테스트
	@Test
	public void daoTest() throws Exception {
		Pager pager = new Pager();
		pager.makeRow();
		pager.makePage(reviewDAO.reviewCount(pager));
		List<ProductVO> ar = reviewDAO.reviewList(pager);
		System.out.println(ar.size());
		for (int i = 0; i < ar.size(); i++) {
			ar.get(i).getReviewVO();
		}
		assertNotNull(ar);
	}
	
		
	
}