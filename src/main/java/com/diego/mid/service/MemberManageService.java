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
import com.diego.mid.util.MemberFile;

@Service
public class MemberManageService {
	@Inject
	private MemberFile saver;
	@Inject
	private MemberManegeDAO dao;

	public int wishListInsert(Wishlist wishlist, HttpSession session) throws Exception{
		String realPath = session.getServletContext().getRealPath("/resources/product/wishList");
		if (wishlist.getFname()!=null) {
			wishlist.setImage(saver.save(realPath, wishlist.getFname()));			
		}
		wishlist.setSum_price(dao.wishListGetSum(wishlist)+wishlist.getPrice());
		return dao.wishListInsert(wishlist);
	}
	
	public List<Wishlist> wishListSelectList(Wishlist wishlist) throws Exception{
		return dao.wishListSelectList(wishlist);
	}
	
	public int wishListDelete(Wishlist wishlist)throws Exception{
		
		Integer setSum = dao.wishListGetSum(wishlist) - wishlist.getPrice();
		
		wishlist.setSum_price(setSum);
		dao.wishListDelete(wishlist);
		
		return dao.wishListSetSum(wishlist);
		
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
		point.setTotal_point(point.getPoint_value() + point.getTotal_point());
		return dao.pointInsert(point);
	}
	
	public List<Point> pointMyList(Point point) throws Exception{
		return dao.pointMyList(point);
	}
	
	public List<Point> pointList() throws Exception{
		return dao.pointList();
	}
	
	public int pointUse(Point point) throws Exception{
		if (point.getPoint_value() > 0) {
			point.setPoint_value(point.getPoint_value() * -1);
		}
		point.setTotal_point(point.getPoint_value() + point.getTotal_point());
		
		return dao.pointInsert(point);
	}
	
	public Point pointSelect(Point point) throws Exception{
		return dao.pointSelect(point);
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
