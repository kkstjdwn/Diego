package com.diego.mid.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.diego.mid.model.product.ProductVO;
import com.diego.mid.service.ProductService;

@Controller
@RequestMapping("/product/**")
public class ProductController {
	
	@Inject
	private ProductService productService;
	
	@GetMapping(value = "productInsert")
	public void productInsert()throws Exception {
		
		
	}
	@PostMapping(value = "productInsert")
	public ModelAndView productInsert(ProductVO productVO)throws Exception {
		
		ModelAndView mv= new ModelAndView();
		
		int result = productService.productInsert(productVO);
		
		String msg="등록실패";
		if(result==1) {
			msg="등록성공";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "productLiset");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	

}
