package com.diego.mid.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.diego.mid.model.admin.AdminVO;

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
}
