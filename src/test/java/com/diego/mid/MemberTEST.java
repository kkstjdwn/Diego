package com.diego.mid;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.diego.mid.dao.MemberDAO;
import com.diego.mid.model.member.MemberVO;
import com.diego.mid.service.MemberService;

public class MemberTEST extends TestAbstractCase{
	
	@Inject
	private MemberDAO dao;
	@Inject
	private MemberService service;

	@Test
	public void test() throws Exception {
		MemberVO memberVO = new MemberVO();
		memberVO.setId("coo");
		memberVO.setPw("coo");
		memberVO = dao.memberLogin(memberVO);
		memberVO.setPw("c00");
		//assertEquals(1, dao.memberInsert(memberVO));
		//assertNotNull(dao.memberLogin(memberVO));
		//assertEquals(1, dao.memberUpdate(memberVO));
		//assertEquals(1, dao.memberDelete(memberVO));;
		//assertEquals(1, dao.memberRankUp(memberVO));
		//assertEquals(1, service.memberRankUp(memberVO));
		String number = "01026337971";
		System.out.println("010 : "+number.substring(0, 3));
		System.out.println("XXXX : "+number.substring(3, 7));
		System.out.println("XXXX : "+number.substring(7));
	}

}
