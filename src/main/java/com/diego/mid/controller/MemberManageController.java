package com.diego.mid.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.diego.mid.model.member.Coupon;
import com.diego.mid.model.member.MemberVO;
import com.diego.mid.model.member.Orders;
import com.diego.mid.model.member.Point;
import com.diego.mid.model.member.Wishlist;
import com.diego.mid.service.MemberManageService;

@Controller
@RequestMapping("member/memberManage/**")
public class MemberManageController {
	
	@Inject
	private MemberManageService service;
	
//@@@@@@@@@@@@@POINT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
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
	
//@@@@@@@@@@@@@POINT@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
//@@@@@@@@@@@@@WISHLIST@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
	@GetMapping("wishListInsert")
	public void wishListInsert(HttpSession session) {
		
	}
	
	@PostMapping("wishListInsert")
	public ModelAndView wishListInsert(Wishlist wishlist, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
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
		int sum = 0;
		for (Wishlist wishlist2 : ar) {
			sum+=wishlist2.getPrice();
		}
		mv.addObject("sum", sum);
		
		mv.setViewName("/member/memberManage/wishListSelectList");
		
		return mv;
		
	}
	
	@PostMapping("wishListDelete")
	public ModelAndView wishListDelete(Wishlist wishlist,String[] num) throws Exception{
		ModelAndView mv = new ModelAndView();
		int check = 0;
		int result = 0;
		for (String string : num) {
			wishlist.setWish_num(Integer.parseInt(string));
			check = service.wishListDelete(wishlist);
			Thread.sleep(200);
			if (check == 1) {
				result++;
			}
		}
		if (result == num.length) {
			result = 1;
		}
		
		mv.addObject("msg", result);
		mv.setViewName("common/common_ajax_result");
		
		return mv;
	}
	
//@@@@@@@@@@@@@WISHLIST@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
//@@@@@@@@@@@@@ORDER@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
	@GetMapping("orderInsert")
	public ModelAndView orderInsert(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		Point point = new Point();
		Coupon coupon = new Coupon();
		MemberVO vo = (MemberVO)session.getAttribute("member");
		coupon.setId(vo.getId());
		point.setId(vo.getId());
		mv.addObject("couponList", service.couponMyList(coupon));
		mv.addObject("point", service.pointSelect(point));
		mv.setViewName("/member/memberManage/orderInsert");
		
		return mv;
	}
	
	@PostMapping("orderInsert")
	public ModelAndView orderInsert(Orders orders,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = service.orderInsert(orders, session);
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
	
	@GetMapping("orderSelect")
	public ModelAndView orderSelect(Orders orders, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("orders", service.orderSelect(orders));
		mv.setViewName("/member/memberManage/orderSelect");
		return mv;
	}
	
	@GetMapping("orderMyList")
	public ModelAndView orderMyList(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO vo = (MemberVO)session.getAttribute("member");
		Orders orders = new Orders();
		orders.setId(vo.getId());
		List<Orders> ar = service.orderMyList(orders);
		int sum = 0;
		for (Orders orders2 : ar) {
			sum+=orders2.getOrder_sum();
		}
		mv.addObject("orderList", ar);
		mv.addObject("sum", sum);
		mv.setViewName("/member/memberManage/orderMyList");
		return mv;
	}
	
	@PostMapping("orderCancel")
	public ModelAndView orderCancel(Orders orders,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result=0;
		MemberVO vo = (MemberVO)session.getAttribute("member");
		if (orders.getId().equals(vo.getId())) {
			result = service.orderCancel(orders);
		}
		mv.addObject("msg", result);
		mv.setViewName("common/common_ajax_result");
		
		return mv;
	}
	
	@GetMapping("orderUpdate")
	public ModelAndView orderUpdate(Orders orders, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		orders = service.orderSelect(orders);
		MemberVO vo = (MemberVO)session.getAttribute("member");
		if (orders.getId().equals(vo.getId())) {
			mv.addObject("orders", orders);
			mv.setViewName("/member/memberManage/orderUpdate");
		}else {
			mv.setViewName("#");			
		}
		
		return mv;
	}
	
	@PostMapping("orderUpdate")
	public ModelAndView orderUpdate(Orders orders) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = service.orderUpdate(orders);
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
	
//@@@@@@@@@@@@@ORDER@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

//@@@@@@@@@@@@@COUPON@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

	@GetMapping("couponList")
	public ModelAndView couponList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("couponList", service.couponList());
		mv.setViewName("/member/memberManage/couponList");
		
		return mv;
	}
	
	@GetMapping("couponMyList")
	public ModelAndView couponMyList(Coupon coupon,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO vo = (MemberVO)session.getAttribute("member");
		coupon.setId(vo.getId());
		mv.addObject("couponList", service.couponMyList(coupon));
		mv.setViewName("/member/memberManage/couponMyList");
		
		return mv;
	}
	
	@GetMapping("couponMaker")
	public void couponMaker() throws Exception{
		
	}
	
	@PostMapping("couponMaker")
	public ModelAndView couponMaker(Coupon coupon) throws Exception{
		ModelAndView mv = new ModelAndView();
		String msg	 = "실패";
		String path = "/mid/diego";
		int result =service.couponInsert(coupon);
		if (result > 0) {
			msg = "성공";
			path = "/mid/member/memberManage/couponList";
		}
		mv.addObject("result", msg);
		mv.addObject("path", path);
		mv.setViewName("common/common_result");
		
		return mv;
		
	}
	
	@GetMapping("couponDelete")
	public ModelAndView couponDelete(Coupon coupon) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", service.couponDelete(coupon));
		mv.setViewName("common/common_ajax_result");
		
		return mv;
	}
	
	@GetMapping("couponInsert")
	public ModelAndView couponInsert(Coupon coupon, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO vo = (MemberVO)session.getAttribute("member");
		coupon = service.couponSelect(coupon);
		coupon.setId(vo.getId());
		mv.addObject("msg", service.couponInsert(coupon));
		mv.setViewName("common/common_ajax_result");
		return mv;
	}
	
	
	
//@@@@@@@@@@@@@COUPON@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
}
