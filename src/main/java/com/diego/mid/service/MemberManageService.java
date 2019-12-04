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
		
		return dao.wishListInsert(wishlist);
	}
	
	public List<Wishlist> wishListSelectList(Wishlist wishlist) throws Exception{
		return dao.wishListSelectList(wishlist);
	}
	
	public int wishListDelete(Wishlist wishlist)throws Exception{
		return dao.wishListDelete(wishlist);
	}
	
	public int orderInsert(Orders orders,HttpSession session) throws Exception{
		if (orders.getFname() !=null) {
			orders.setImage(saver.save(session.getServletContext().getRealPath("/resources/product/orders"), orders.getFname()));
		}
		orders.setOrder_sum(orders.getPro_count()*orders.getPrice());
		return dao.orderInsert(orders);
	}
	
	public Orders orderSelect(Orders orders) throws Exception{
		return dao.orderSelect(orders);
	}
	
	public List<Orders> orderMyList(Orders orders) throws Exception{
		return dao.orderMyList(orders);
	}
	
	public List<Orders> orderList() throws Exception{
		return dao.orderList();
	}
	
	public int orderCancel(Orders orders) throws Exception{
		return dao.orderCancel(orders);
	}
	
	public int orderUpdate(Orders orders) throws Exception{
		orders.setOrder_sum(orders.getPro_count()*orders.getPrice());
		return dao.orderUpdate(orders);
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
	
	public int couponMaker(Coupon coupon) throws Exception{
		double discount = Integer.parseInt(coupon.getDiscount());
		coupon.setSales_value((100-discount)/100);
		return dao.couponInsert(coupon);
	}
	
	public int couponInsert(Coupon coupon) throws Exception{
		double discount = Integer.parseInt(coupon.getDiscount());
		coupon.setSales_value((100-discount)/100);
		return dao.couponInsert(coupon);
	}
	
	public Coupon couponSelect(Coupon coupon) throws Exception{
		return dao.couponSelect(coupon);
	}
	
	public List<Coupon> couponMyList(Coupon coupon) throws Exception{
		return dao.couponMyList(coupon);
	}
	
	public List<Coupon> couponList() throws Exception{
		return dao.couponList();
	}
	
	public int couponDelete(Coupon coupon) throws Exception{
		return dao.couponDelete(coupon);
	}
	
	public int couponUse(Coupon coupon) throws Exception{
		coupon.setUse("O");
		return dao.couponUse(coupon);
	}
	public int couponCancel(Coupon coupon) throws Exception{
		coupon.setUse("X");
		return dao.couponUse(coupon);
	}
}
