package com.diego.mid.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.diego.mid.model.member.Point;
import com.diego.mid.service.MemberManageService;

@Controller
@RequestMapping("member/memberManage/**")
public class MemberManageController {
	
	@Inject
	private MemberManageService service;
	
	
	@GetMapping("pointInsert")
	public void pointInsert() {
		
	}
	
	@PostMapping("pointInsert")
	public ModelAndView pointInsert(Point point) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = service.pointInsert(point);
		String msg = "포인트 추가 실패";
		if (result>0) {
			msg = "포인트 추가 성공";
		}
		mv.addObject("msg", msg);
		mv.setViewName("common/common_ajax_result");
		return mv;
	}

}
