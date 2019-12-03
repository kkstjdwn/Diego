package com.diego.mid.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.diego.mid.dao.AdminDAO;
import com.diego.mid.model.admin.AdminVO;
import com.diego.mid.model.member.MemberVO;
import com.diego.mid.util.Pager;

@Service
public class AdminService {
	@Inject
	private AdminDAO adminDAO;
	
	//adminCheckID
	public AdminVO adminCheckId(AdminVO adminVO) throws Exception{
		return adminDAO.adminCheckId(adminVO);
	}
	
	//Login
	public AdminVO adminLogin(AdminVO adminVO) throws Exception{
		return adminDAO.adminLogin(adminVO);
	}
	
	//Join
	public int adminJoin(AdminVO adminVO) throws Exception{
		return adminDAO.adminJoin(adminVO);
	}
	
	//Update
	public int adminUpdate(AdminVO adminVO) throws Exception{
		System.out.println("service :" +adminVO.getAdmin_id());
		System.out.println("service :" +adminVO.getAdmin_pw());
		return adminDAO.adminUpdate(adminVO);
	}
	
	//Delete
	public int adminDelete(AdminVO adminVO)throws Exception{
		return adminDAO.adminDelete(adminVO);
	}
	
	//MemberManage List
	public List<MemberVO> memberList(Pager pager)throws Exception{
		pager.makeRow();
		pager.makePage(adminDAO.memberCount(pager));
		return adminDAO.memberList(pager);
	}
	//member SelectOne
	public MemberVO memberSelect(MemberVO memberVO)throws Exception{
		return adminDAO.memberSelect(memberVO);
	}
	//member Update
	public int memberUpdate(MemberVO memberVO)throws Exception{
		return adminDAO.memberUpdate(memberVO);
	}

}
