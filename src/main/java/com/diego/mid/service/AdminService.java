package com.diego.mid.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.diego.mid.dao.AdminDAO;
import com.diego.mid.model.admin.AdminVO;

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

}
