package com.diego.mid.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.diego.mid.model.member.MemberVO;
import com.diego.mid.service.MemberService;

@Controller
@RequestMapping("/member/**")
public class MemberCotroller {
	@Inject
	private MemberService service;
	
	@GetMapping("memberInsert")
	public void memberInsert() {
		
	}
	
	@PostMapping("memberInsert")
	public ModelAndView memberInsert(MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = service.memberInsert(memberVO);
		String msg = "0";
		if (result>0) {
			msg = "1";
		}
		mv.addObject("msg", msg);
		mv.setViewName("common/common_ajax_result");
		
		return mv;
	}
	
	@GetMapping("memberLogin")
	public void memberLogin() {
		
	}
	
	@PostMapping("memberLogin")
	public ModelAndView memberLogin(MemberVO memberVO,HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		memberVO = service.memberLogin(memberVO);
		String msg = "0";
		if (memberVO != null) {
			msg = "1";
			session.setAttribute("member", memberVO);
		}
		mv.addObject("msg", msg);
		mv.setViewName("common/common_ajax_result");
		return mv;
	}
	
	@GetMapping("memberUpdate")
	public void memberUpdate(HttpSession session) {
		
	}
	
	@PostMapping("memberUpdate")
	public ModelAndView memberUpdate(MemberVO memberVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("들어오니");
		int result = service.memberUpdate(memberVO);
		if (result>0) {
			session.setAttribute("member", memberVO);
			mv.setViewName("/mid/");
		}
		return mv;
	}
}
