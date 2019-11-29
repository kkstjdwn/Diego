package com.diego.mid.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.diego.mid.dao.MemberManegeDAO;
import com.diego.mid.model.member.Coupon;
import com.diego.mid.model.member.MemberVO;
import com.diego.mid.model.member.Orders;
import com.diego.mid.model.member.Point;
import com.diego.mid.model.member.Wishlist;

@Service
public class MemberManageService {
	
	@Inject
	private HttpSession session;
	
	private MemberVO vo;
	
	

	@Inject
	private MemberManegeDAO dao;
	
	
//	public MemberManageService(HttpSession session) {
//		// TODO Auto-generated constructor stub
//		vo = (MemberVO)session.getAttribute("member");
//	}
//	
	public int wishListInsert(Wishlist wishlist) throws Exception{
		return 0;
	}
	
	public List<Wishlist> wishListSelectList(Wishlist wishlist) throws Exception{
		return null;
	}
	
	public int wishListDelete(Wishlist wishlist)throws Exception{
		return 0;
	}
	
	public int orderInsert(Orders orders) throws Exception{
		return 0;
	}
	
	public Orders orderSelect(Orders orders) throws Exception{
		return null;
	}
	
	public List<Orders> orderMyList(Orders orders) throws Exception{
		return null;
	}
	
	public List<Orders> orderList() throws Exception{
		return null;
	}
	
	public int orderDelete(Orders orders) throws Exception{
		return dao.orderDelete(orders);
	}
	
	
	public int pointInsert(Point point) throws Exception{
			vo = (MemberVO)session.getAttribute("member");
			point.setId(vo.getId());
			//다른사람이 각자 찍히는지 확인
		return dao.pointInsert(point);
	}
	
	public List<Point> pointMyList(Point point) throws Exception{
		return null;
	}
	
	public List<Point> pointList() throws Exception{
		return null;
	}
	
	public int pointUpdate(Point point) throws Exception{
		vo = (MemberVO)session.getAttribute("member");
		point.setId(vo.getId());
		point = dao.pointSelect(point);
		point.setTotal_point(point.getPoint_value() + point.getTotal_point());
		
		return dao.pointUpdate(point);
	}
	
	public int couponInsert(Coupon coupon) throws Exception{
		return 0;
	}
	
	public Coupon couponSelect(Coupon coupon) throws Exception{
		return null;
	}
	
	public List<Coupon> couponMyList(Coupon coupon) throws Exception{
		return null;
	}
	
	public List<Coupon> couponList() throws Exception{
		return null;
	}
	
	public int couponDelete(Coupon coupon) throws Exception{
		return 0;
	}
}
