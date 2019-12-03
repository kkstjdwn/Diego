package com.diego.mid.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diego.mid.model.admin.AdminVO;
import com.diego.mid.model.member.MemberVO;
import com.diego.mid.util.Pager;

@Repository
public class AdminDAO {
	@Inject
	private SqlSession session;
	private static final String NAMESPACE="adminMapper.";
	
	
	//adminCheckID
	public AdminVO adminCheckId(AdminVO adminVO)throws Exception{
		return session.selectOne(NAMESPACE+"adminCheckId", adminVO);
	}
	
	//adminJoin
	public int adminJoin(AdminVO adminVO)throws Exception{
		return session.insert(NAMESPACE+"adminJoin", adminVO);
	}
	//adminLogin
	public AdminVO adminLogin(AdminVO adminVO)throws Exception{
		return session.selectOne(NAMESPACE+"adminLogin", adminVO);
	}
	
	//adminUpdate
	public int adminUpdate(AdminVO adminVO)throws Exception{
		return session.update(NAMESPACE+"adminUpdate", adminVO);
	}
	//adminDelete
	public int adminDelete(AdminVO adminVO)throws Exception{
		return session.delete(NAMESPACE+"adminDelete", adminVO);
	}
	
	//memberManage List
	public List<MemberVO> memberList(Pager pager)throws Exception{
		return session.selectList(NAMESPACE+"memberList", pager);
	}
	
	//member Count
	public int memberCount(Pager pager)throws Exception{
		return session.selectOne(NAMESPACE+"memberCount", pager);
	}
	
	//member SelectOne
	public MemberVO memberSelect(MemberVO memberVO)throws Exception{
		return session.selectOne(NAMESPACE+"memberSelect", memberVO);
	}
	//member Update
	public int memberUpdate(MemberVO memberVO)throws Exception{
		return session.update(NAMESPACE+"memberUpdate", memberVO);
	}
	
}
