package com.diego.mid.productTest;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.diego.mid.TestAbstractCase;
import com.diego.mid.dao.ImagesDAO;
import com.diego.mid.model.product.ImagesVO;
import com.diego.mid.model.product.ProductVO;

public class ImagesDAOTest extends TestAbstractCase{

	@Inject
	private ImagesDAO imagesDAO;
	
	//getProNum
	//@Test
	public void getProNumTest()throws Exception {
		
		//ImagesVO imagesVO = new ImagesVO();
		
		//imagesVO.setPro_num(1);
		
		//imagesVO= imagesDAO.getProNum(imagesVO);
		

	}
	
	//INSERT
	//@Test
	public void imagesInsert()throws Exception {
		
		ImagesVO imagesVO = new ImagesVO();
		
		imagesVO.setPro_num(136);
		imagesVO.setImages_num(2);
		imagesVO.setBack("back");
		imagesVO.setFront("front");
		imagesVO.setGif("gif");
		imagesVO.setPro_full("pro_full");
		imagesVO.setPro_info("t1");
		imagesVO.setPro_main("t1");
		imagesVO.setPro_model("t1");
		imagesVO.setPro_sizecut("t1");
		imagesVO.setSumnale("t1");
		
		int result =imagesDAO.imagesInsert(imagesVO);
		
	}//성공

}
