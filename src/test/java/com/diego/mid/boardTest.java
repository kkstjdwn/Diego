package com.diego.mid;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.diego.mid.dao.AdminDAO;
import com.diego.mid.dao.FAQDAO;
import com.diego.mid.dao.NoticeDAO;
import com.diego.mid.model.admin.ProManageVO;
import com.diego.mid.model.board.FAQVO;
import com.diego.mid.model.board.NoticeVO;
import com.diego.mid.model.member.MemberVO;
import com.diego.mid.util.Pager;

public class boardTest extends TestAbstractCase {
	@Inject
	private NoticeDAO noticeDAO;
	@Inject
	private FAQDAO faqDAO;
	@Inject
	private DataSource datasource;
	@Inject
	private AdminDAO adminDAO;
	
	@Inject	
	private SqlSession session;
	

		
	//@Test
	public void noticeSelect()throws Exception {
		NoticeVO noticeVO = new NoticeVO();
		noticeVO = new NoticeVO();
		noticeVO.setNot_num(2);
		NoticeVO noticeVO2 = noticeDAO.noticeSelect(noticeVO);
		assertNotNull(noticeVO2);
	}
	
	//@Test
	public void noticeWrite()throws Exception{
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setAdmin_id("admin");
		noticeVO.setAdmin_name("관리자");
		noticeVO.setContents("contents2");
		noticeVO.setTitle("notice title");
		int result = noticeDAO.noticeWrite(noticeVO);
		
		assertEquals(1, result);
	}
	
	
	//@Test
	public void noticeUpdate() throws Exception{
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setNot_num(6);
		noticeVO.setTitle("notice Title3");
		noticeVO.setContents("noticContents3");
		int result = noticeDAO.noticeUpdate(noticeVO);
		
		assertEquals(1, result);
	}
	
	@Test
	public void memberList()throws Exception{
		Pager pager = new Pager();
		pager.makeRow();
		pager.makePage(adminDAO.memberCount(pager));
		List<MemberVO> ar= adminDAO.memberList(pager);
		System.out.println(ar.size());
		for (int i = 0; i < ar.size(); i++) {
			ar.get(i).getPw();
		}
		assertNotNull(ar);
	}
	

}
