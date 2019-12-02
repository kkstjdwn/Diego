package com.diego.mid.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.diego.mid.model.member.MemberVO;
import com.diego.mid.model.member.Point;
import com.diego.mid.model.member.Wishlist;
import com.diego.mid.service.MemberManageService;

@Controller
@RequestMapping("member/memberManage/**")
public class MemberManageController {
	
	@Inject
	private MemberManageService service;
	
	
	@GetMapping("pointUse")
	public ModelAndView pointUpdate(HttpSession session) throws Exception{
		MemberVO vo = (MemberVO)session.getAttribute("member");
		ModelAndView mv = new ModelAndView();
		Point point = new Point();
		point.setId(vo.getId());
		point = service.pointSelect(point);
		mv.addObject("point", point);
		return mv;
	}
	
	@PostMapping("pointUse")
	public ModelAndView pointUse(Point point) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = 0;
		
		if (point.getTotal_point() >= point.getPoint_value()) {
			result = service.pointUse(point);
		}
		int msg = 0;
		if (result>0) {
			msg =1;
		}
		mv.addObject("msg", msg);
		mv.setViewName("common/common_ajax_result");
		
		return mv;
	}
	
	
	@GetMapping("pointInsert")
	public ModelAndView pointInsert(HttpSession session) throws Exception{
		MemberVO vo = (MemberVO)session.getAttribute("member");
		ModelAndView mv = new ModelAndView();
		Point point = new Point();
		point.setId(vo.getId());
		point = service.pointSelect(point);
		mv.addObject("point", point);
		return mv;
	}
	
	@PostMapping("pointInsert")
	public ModelAndView pointInsert(Point point) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = service.pointInsert(point);
		int msg = 0;
		if (result>0) {
			msg =1;
		}
		mv.addObject("msg", msg);
		mv.setViewName("common/common_ajax_result");
		
		return mv;
	}
	
	@GetMapping("pointMyList")
	public ModelAndView pointMyList(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		Point point = new Point();
		MemberVO vo = (MemberVO)session.getAttribute("member");
		point.setId(vo.getId());
		point = service.pointSelect(point);
		mv.addObject("pointList", service.pointMyList(point));
		mv.addObject("page", "My POINT");
		mv.setViewName("/member/memberManage/pointList");
		
		return mv;
	}
	
	@GetMapping("pointList")
	public ModelAndView pointList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("pointList", service.pointList());
		mv.addObject("page", "All POINT");
		mv.setViewName("/member/memberManage/pointList");
		
		return mv;
	}
	
	@GetMapping("wishListInsert")
	public void wishListInsert(HttpSession session) {
		
	}
	
	@PostMapping("wishListInsert")
	public ModelAndView wishListInsert(Wishlist wishlist, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(wishlist.getFname());
		int result = service.wishListInsert(wishlist, session);
		String msg	 = "실패";
		String path = "#";
		if (result > 0) {
			msg = "성공";
			path = "/mid/diego";
		}
		mv.addObject("result", msg);
		mv.addObject("path", path);
		mv.setViewName("common/common_result");
		return mv;
	}
	
	
	@GetMapping("wishListSelectList")
	public ModelAndView wishListSelectList(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO vo = (MemberVO)session.getAttribute("member");
		Wishlist wishlist = new Wishlist();
		wishlist.setId(vo.getId());;
		List<Wishlist> ar = service.wishListSelectList(wishlist);
		mv.addObject("wishList", ar);
		mv.addObject("sum", ar.get(0).getSum_price());
		
		mv.setViewName("/member/memberManage/wishListSelectList");
		
		return mv;
		
	}
	
	@PostMapping("wishListDelete")
	public ModelAndView wishListDelete(Wishlist wishlist) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = service.wishListDelete(wishlist);
		mv.addObject("msg", result);
		mv.setViewName("common/common_ajax_result");
		
		return mv;
	}

}
