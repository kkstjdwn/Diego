package com.diego.mid.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.diego.mid.model.product.ImagesVO;
import com.diego.mid.model.product.ProductVO;
import com.diego.mid.model.product.QnaVO;
import com.diego.mid.service.ProductService;
import com.diego.mid.service.QnaService;
import com.diego.mid.util.Pager;

@Controller
@RequestMapping("/qna/**")
public class QnaController {

	@Inject
	private QnaService qnaService;
	
	@Inject
	private ProductService productService;

	private ProductVO productVO;

	private ImagesVO imagesVO;
	

	
	//qna작성
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
	
	//qna리스트
	@GetMapping(value = "qnaList")
	public ModelAndView qnaList(Pager pager)throws Exception {
		
		List<QnaVO>ar = qnaService.qnaList(pager);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("qnaList", ar);
		mv.addObject("pager", pager);
		mv.setViewName("qna/qnaList");
		
		return mv;
		
	}
	
	//qna셀렉트
	@GetMapping("qnaSelect")
	public ModelAndView qnaSelect(QnaVO qnaVO, Integer pro_num)throws Exception {
		
		productVO= new ProductVO();
		imagesVO = new ImagesVO();
		
		//System.out.println(qnaVO.getPro_num());
		qnaVO.setPro_num(pro_num);
		productVO.setPro_num(pro_num);
		imagesVO.setPro_num(pro_num);
		
	
		
		ModelAndView mv = new ModelAndView();
		qnaVO = qnaService.qnaSelect(qnaVO);
		
		productVO = qnaService.productSelect(productVO);
					
		imagesVO = qnaService.imagesSelect(imagesVO);
		
		
		
		qnaVO.setContents(qnaVO.getContents().replace("\n\r", "<br>"));
		
		mv.addObject("images", imagesVO);
		mv.addObject("product", productVO);
		mv.addObject("qna", qnaVO);
		mv.setViewName("qna/qnaSelect");
		
		return mv;
	}
	
	
	
}
