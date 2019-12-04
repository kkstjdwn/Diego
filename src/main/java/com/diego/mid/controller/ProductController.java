package com.diego.mid.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	//상품등록 insert
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
		mv.addObject("path", "productList");
		mv.setViewName("common/common_result");

		return mv;
	}
	//상품등록 끝

	//상품종류(cat_ref)선택 ajax
	@GetMapping("/selectCloth")
	public void selectCloth(Model model, String kind)throws Exception {
		
		
		int result=Integer.parseInt( kind);
		
		if(result==100) {
			String [] kinds = {"wallet","bag"};
			model.addAttribute("kind", kinds);
			model.addAttribute("result", result);	
		}
		else if(result==200) {
			String [] kinds = {"face","body"};
			model.addAttribute("kind", kinds);
			model.addAttribute("result", result);
			
		}else if(result==300) {
			String [] kinds = {"tshirts","shirts","pants","suits"};
			model.addAttribute("kind", kinds);
			model.addAttribute("result", result);
		}else {
			String [] kinds = {"underwear"};
			model.addAttribute("kind", kinds);
			model.addAttribute("result", result);
			
		}

	}//ajax끝
	
	
	//상품삭제
//	@RequestMapping(value = "productDelete")
//	public ModelAndView productDelete(ProductVO productVO)throws Exception {
//		int result = productService.productDelete(productVO);
//		
//		ModelAndView mv= new ModelAndView();
//		
//		String msg="삭제 실패";
//		if(result== 1) {
//			msg="삭제 성공";
//		}
//		mv.addObject("msg", msg);
//		mv.addObject("path", "productList");
//		mv.setViewName("common/common_result");
//		
//		return mv;
//		
//	}//상품삭제 끝 
//	
	
	
	//상품리스트
//	@GetMapping(value = "productList")
//	private void productList()throws Exception {
//		
//
//	} 

}
