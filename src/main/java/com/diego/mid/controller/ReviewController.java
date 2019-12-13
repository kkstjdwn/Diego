package com.diego.mid.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.diego.mid.model.product.ReviewVO;
import com.diego.mid.service.ReviewService;

@Controller
@RequestMapping("/review/**")
public class ReviewController {

	@Inject
	private ReviewService reviewService;
	
	//리뷰작성
	@GetMapping(value = "reviewWrite")
	public void reviewWrite()throws Exception {
			
	}
	
	@PostMapping(value = "reviewWrite")
	public ModelAndView reviewWrite(ReviewVO reviewVO)throws Exception {
		
		ModelAndView mv = new ModelAndView();
		int result = reviewService.reviewWrite(reviewVO);
		
		String msg="리뷰 저장이 실패했습니다.";
		
		if(result==1) {
			msg="리뷰 저장이 완료되었습니다.";
			
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "reviewList");
		mv.setViewName("common/common_result");
		return mv;
	}
	
	//리뷰리스트
	@GetMapping("reviewList")
	public void reviewList()throws Exception{
		
		
	}
	
}
