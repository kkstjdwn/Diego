package com.diego.mid.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.diego.mid.model.product.ProductVO;
import com.diego.mid.model.product.ReviewVO;
import com.diego.mid.service.ProductService;
import com.diego.mid.util.MPager;



@Controller
@RequestMapping("/product/**")
public class ProductController {

	@Inject
	private ProductService productService;

	
	//상품등록 insert
	@GetMapping(value = "productInsert")
	public void productInsert()throws Exception {
			
	}
	@PostMapping(value ="productInsert")
	public ModelAndView productInsert(ProductVO productVO, MultipartFile[] imagesFiles, HttpSession session )throws Exception {

		
		ModelAndView mv= new ModelAndView();
		int result = productService.productInsert(productVO,imagesFiles, session );
		
		String msg="Insert Fail";
		if(result==1) {
			msg="Insert Success";
		}
		
		mv.addObject("msg", msg);
		mv.addObject("path", "productList");
		mv.setViewName("common/common_result");

		return mv;
	}
	//상품등록 끝

	//상품종류(cat_ref)선택 ajax
	@GetMapping("selectCloth")
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
	
	// 여러가지컨트롤러중 내가 원하는 일을 하는 컨트롤을 고른다.
	// 그걸 url과 파라미터를 받아 행동을 하는데..
	
	
	//상품리스트
	@RequestMapping(value = "productList", method = {RequestMethod.GET, RequestMethod.POST})
	private ModelAndView productList(MPager pager)throws Exception {
		
		List<ProductVO>ar= productService.productList(pager);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("productList", ar);
		mv.addObject("pager", pager);
		mv.setViewName("product/productList");
		
		return mv;
		

	} 
	//상품리스트 끝
	
	
	
	//상품삭제
	@PostMapping("productDelete")
	public ModelAndView productDelete(ProductVO productVO, String[] num)throws Exception {
		ModelAndView mv= new ModelAndView();

		int check=0;
		
		int result =0;
		
		for(String string : num) {
			
			productVO.setPro_num(Integer.parseInt(string));
			check = productService.productDelete(productVO);
			Thread.sleep(200);
			if(check==1) {
				result++;
			}
		}
		if(result == num.length) {
			result =1;
		}
		
	
		mv.addObject("msg", result);
		
		mv.setViewName("common/common_ajax_result");
		
		return mv;
		
	}//상품삭제 끝 
	
	//상품셀렉트 
	@GetMapping("productSelect")
	public ModelAndView productSelect(ProductVO productVO)throws Exception{
		
		ModelAndView mv =new ModelAndView();
		
		productVO =  productService.productSelect(productVO);
		
		productVO.setContents(productVO.getContents().replace("\n\r", "<br>"));
		
		mv.addObject("product", productVO);
		mv.setViewName("product/productSelect");
		
		return mv;
	}
	
	
	//상품수정
	@GetMapping("productUpdate")
	public ModelAndView productUpdate(ProductVO productVO )throws Exception{
		
		productVO= productService.productSelect(productVO);
		
		ModelAndView mv = new ModelAndView();
		
		int size=productVO.getImages().size();
		
		mv.addObject("size", size);
		mv.addObject("product", productVO);
		mv.setViewName("product/productUpdate");
		
		return mv;
		
		
		
	}
	
	@PostMapping("productUpdate") 
	public ModelAndView productUpdate2(ProductVO productVO)throws Exception {
		
		int result = productService.productUpdate(productVO );
		
		ModelAndView mv = new ModelAndView();
		
		String msg="Update Fail";
		if(result==1) {
			msg="Update Success";
		}
		
		mv.addObject("msg", msg);
		mv.addObject("path", "productList");
		mv.setViewName("common/common_result");
			
		
		return mv;
	}
	
		//리뷰작성
		@GetMapping(value = "productReview")
		public void productReview()throws Exception {
				
		}
		
		@PostMapping(value = "productReview")
		public ModelAndView productReview(ReviewVO reviewVO, HttpSession session,  MultipartFile [] file)throws Exception {
			//System.out.println("test");//나옴.
			//System.out.println(reviewVO.getContents()); 들어옴

			ModelAndView mv = new ModelAndView();
			
			session.getServletContext().getRealPath("resources/product/photoReview");
			
//			for (int i = 0; i < file.length; i++) {
//				System.out.println(file[i].getOriginalFilename());
//			}
			
			int result = productService.productReview(reviewVO, session, file);
			
			String msg="리뷰 저장이 실패했습니다.";
			
			if(result >0) {
				msg="리뷰 저장이 완료되었습니다.";
				
			}
			mv.addObject("msg", msg);
			mv.addObject("path", "../review/reviewList");
			mv.setViewName("common/common_result");
			return mv;
		}
	
	
}

