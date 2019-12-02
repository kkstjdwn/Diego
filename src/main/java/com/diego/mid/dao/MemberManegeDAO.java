package com.diego.mid.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diego.mid.model.member.Coupon;
import com.diego.mid.model.member.Orders;
import com.diego.mid.model.member.Point;
import com.diego.mid.model.member.Wishlist;

@Repository
public class MemberManegeDAO {
	@Inject
	private SqlSession sql;
	
	private static final String COUPON = "couponMapper.";
	private static final String POINT = "pointMapper.";
	private static final String ORDER = "orderMapper.";
	private static final String WISHLIST = "wishListMapper.";
	
	public int wishListInsert(Wishlist wishlist) throws Exception{
		return sql.insert(WISHLIST+"wishListInsert",wishlist);
	}
	
	public List<Wishlist> wishListSelectList(Wishlist wishlist) throws Exception{
		return sql.selectList(WISHLIST+"wishListSelectList",wishlist);
	}
	
	public int wishListDelete(Wishlist wishlist)throws Exception{
		return sql.delete(WISHLIST+"wishListDelete",wishlist);
	}
	
	public Integer wishListGetSum(Wishlist wishlist) throws Exception{
		return sql.selectOne(WISHLIST+"wishListGetSum",wishlist);
	}
	
	public Integer wishListSetSum(Wishlist wishlist) throws Exception{
		return sql.update(WISHLIST+"wishListSetSum",wishlist);
	}
	
	public int orderInsert(Orders orders) throws Exception{
		return sql.insert(ORDER+"orderInsert",orders);
	}
	
	public Orders orderSelect(Orders orders) throws Exception{
		return sql.selectOne(ORDER+"orderSelect",orders);
	}
	
	public List<Orders> orderMyList(Orders orders) throws Exception{
		return sql.selectList(ORDER+"orderMyList",orders);
	}
	
	public List<Orders> orderList() throws Exception{
		return sql.selectList(ORDER+"orderList");
	}
	
	public int orderDelete(Orders orders) throws Exception{
		return sql.delete(ORDER+"orderDelete",orders);
	}
	
	public int pointInsert(Point point) throws Exception{
		return sql.insert(POINT+"pointInsert",point);
	}
	
	public List<Point> pointMyList(Point point) throws Exception{
		return sql.selectList(POINT+"pointMyList",point);
	}
	
	public List<Point> pointList() throws Exception{
		return sql.selectList(POINT+"pointList");
	}
	
	public Point pointSelect(Point point) throws Exception{
		return sql.selectOne(POINT+"pointSelect",point);
	}
	
	
	public int couponInsert(Coupon coupon) throws Exception{
		return sql.insert(COUPON+"couponInsert",coupon);
	}
	
	public Coupon couponSelect(Coupon coupon) throws Exception{
		return sql.selectOne(COUPON+"couponSelect",coupon);
	}
	
	public List<Coupon> couponMyList(Coupon coupon) throws Exception{
		return sql.selectList(COUPON+"couponMyList",coupon);
	}
	
	public List<Coupon> couponList() throws Exception{
		return sql.selectList(COUPON+"couponList");
	}
	
	public int couponDelete(Coupon coupon) throws Exception{
		return sql.delete(COUPON+"couponDelete",coupon);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

