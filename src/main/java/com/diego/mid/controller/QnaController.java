package com.diego.mid.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.diego.mid.model.product.QnaVO;
import com.diego.mid.service.QnaService;

@Controller
@RequestMapping("/qna/**")
public class QnaController {

	@Inject
	private QnaService qnaService;
	
	@GetMapping(value = "qnaWrite")
	public void qnaWrite()throws Exception{
		
	}
	
	@PostMapping(value = "qnaWrite")
	public ModelAndView qnaWrite(QnaVO qnaVO)throws Exception {
		
		ModelAndView mv = new ModelAndView();
		int result = qnaService.qnaWrite(qnaVO);
		
		String msg = "등록실패";
		if(result==1) {
			msg="등록성공";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "qnaList");
		mv.setViewName("common/common_result");
		return mv;
	}
	
	@GetMapping(value = "qnaList")
	public void qnaList()throws Exception {
		
	}
	
}
