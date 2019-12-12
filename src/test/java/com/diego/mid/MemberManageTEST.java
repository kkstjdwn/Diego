package com.diego.mid;

import static org.junit.Assert.*;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.diego.mid.dao.MemberManegeDAO;
import com.diego.mid.model.member.Coupon;
import com.diego.mid.model.member.Orders;
import com.diego.mid.model.member.Point;
import com.diego.mid.model.member.Wishlist;

public class MemberManageTEST extends TestAbstractCase {
	
	@Inject
	private MemberManegeDAO manegeDAO;

	@Test
	public void test() throws Exception{
		Coupon coupon = new Coupon();
		coupon.setCoup_num(2);
		coupon.setId("coo");
		//coupon.setDeadline("19-12-29");
		coupon.setDiscount("70%");
		coupon.setSales_value(0.3);
		//coupon.setName("12월맞이");
//		for (int i = 0; i < 10; i++) {			
//			assertEquals(1, dao.couponInsert(coupon));
//			Thread.sleep(500);
//			
//		}
//		for (Coupon coupon2 : dao.couponMyList(coupon)) {
//			System.out.println(coupon2.getId());
//		}
		
		//assertEquals(1, dao.couponDelete(coupon));
		
//		Wishlist wishlist = new Wishlist();
//		wishlist.setId("coo");
//		wishlist.setWish_num(7);
//		System.out.println(manegeDAO.wishListGetSum(wishlist));
		
//		Orders orders = new Orders();
//		orders.setId("coo");
//		List<Orders> ar = manegeDAO.orderCancelList(orders);
//		for (Orders orders2 : ar) {
//			System.out.println(orders2.getOrder_date());
//		}
		
		Calendar ca = Calendar.getInstance();
		Calendar ca2 = Calendar.getInstance();
		System.out.println(ca.getTimeInMillis());
		System.out.println(1000L*60*60*24*90);
		System.out.println(ca.getTimeInMillis()-1000*60*60*24*90);
		ca2.setTimeInMillis(ca.getTimeInMillis()-(1000L*60*60*24*90));
		System.out.println(ca2.getTimeInMillis());
		Date d = new Date(ca2.getTimeInMillis());
		System.out.println(d);
		
		}

}
