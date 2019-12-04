package com.diego.mid.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.diego.mid.model.member.MemberVO;
import com.diego.mid.model.member.Point;
import com.diego.mid.service.MemberManageService;
import com.diego.mid.service.MemberService;

@Controller
@RequestMapping(value = "/member/**")
public class MemberCotroller {
	@Inject
	private MemberService service;
	
	@Inject
	private MemberManageService manageSevice;
	
	@GetMapping("memberInsert")
	public void memberInsert() {
		
	}
	
	@PostMapping("memberInsert")
	public ModelAndView memberInsert(MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = service.memberInsert(memberVO);
		String msg = "0";
		if (result>0) {
			Point point = new Point();
			point.setId(memberVO.getId());
			point.setPoint_value(5000);
			point.setContents("가입축하 포인트");
			result = manageSevice.pointInsert(point);
			if (result > 0) {
				msg = "1";
			}
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
	
	//@PostMapping("memberUpdate")
	@RequestMapping(value = "memberUpdate", method = RequestMethod.POST)
	public ModelAndView memberUpdate(MemberVO memberVO, HttpSession session) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		int result = service.memberUpdate(memberVO);
		if (result>0) {
			session.setAttribute("member", memberVO);
			mv.setViewName("diego");
		}

		return mv;
	}
	
	
	@GetMapping("memberSelect")
	public void memberSelect(HttpSession session) {
		
	}
	
	@GetMapping("memberDelete")
	public ModelAndView memberDelete(MemberVO memberVO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
	int result = service.memberDelete(memberVO);
	String msg = "0";
	if (result>0) {
		msg = "1";
		session.invalidate();
	}
	mv.addObject("msg", msg);
	mv.setViewName("common/common_ajax_result");
	return mv;
	}
	
	
}
