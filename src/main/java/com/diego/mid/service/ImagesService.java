package com.diego.mid.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.diego.mid.dao.ImagesDAO;
import com.diego.mid.dao.ProductDAO;
import com.diego.mid.model.product.ImagesVO;
import com.diego.mid.util.ProductFile;

@Service
public class ImagesService {
	
	
	@Inject
	private ImagesDAO imagesDAO;
		
	@Inject
	private ProductFile saver;
		
//	public int imagesInsert(ImagesVO imagesVO,MultipartFile [] files,HttpSession session)throws Exception{
//		
//	
//		String realPath=session.getServletContext().getRealPath("resources/product/images");
//		
//		imagesVO.setPro_main(saver.save(realPath, files[0]));
//		imagesVO.setPro_full(saver.save(realPath, files[1]));
//		imagesVO.setPro_info(saver.save(realPath, files[2]));
//		imagesVO.setPro_model(saver.save(realPath, files[3]));
//		imagesVO.setPro_info(saver.save(realPath, files[4]));
//		imagesVO.setPro_size(saver.save(realPath, files[5]));
//		imagesVO.setSumnale(saver.save(realPath, files[6]));
//		imagesVO.setGif(saver.save(realPath, files[7]));
//		imagesVO.setFront(saver.save(realPath, files[8]));
//		
//		return imagesDAO.imagesInsert(imagesVO);
//		
//	} 
	

}
