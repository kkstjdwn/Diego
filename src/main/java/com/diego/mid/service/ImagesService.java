package com.diego.mid.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.diego.mid.dao.ImagesDAO;
import com.diego.mid.model.product.ImagesVO;
import com.diego.mid.util.ProductFile;

@Service
public class ImagesService {
	
	
	@Inject
	private ImagesDAO imagesDAO;
		
	@Inject
	private ProductFile saver;
		
	public int imagesInsert(ImagesVO imagesVO,  )throws Exception{
		
		
		
	} 
	

}
