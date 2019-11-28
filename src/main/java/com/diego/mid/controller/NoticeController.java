package com.diego.mid.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.diego.mid.model.board.NoticeVO;
import com.diego.mid.service.NoticeService;
import com.diego.mid.util.Pager;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {
	@Inject
	private NoticeService noticeService;
	
	@RequestMapping("noticeList")
	public ModelAndView noticeList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<NoticeVO> ar = noticeService.noticeList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("notice/noticeList");
		return mv;
	}
	
	@GetMapping("noticeWrite")
	public String noticeWrite()throws Exception{
		
		return "notice/noticeWrite";
		
	}
	
	@PostMapping("noticeWrite")
	public ModelAndView noticeWrite(NoticeVO noticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(noticeVO.getAdmin_id());
		int result = noticeService.noticeWrite(noticeVO);
		
			mv.setViewName("redirect:./noticeList");
		return mv;
	}
	
	@RequestMapping(value = "noticeSelect")
	public ModelAndView noticeSelect(NoticeVO noticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		noticeVO = noticeService.noticeSelect(noticeVO);
		noticeVO.setContents(noticeVO.getContents().replace("\r\n", "<br>"));
		mv.addObject("dto", noticeVO);
		mv.setViewName("notice/noticeSelect");
		return mv;
	}
	}
