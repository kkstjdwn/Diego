package com.diego.mid;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

public class sqlSessionTest extends TestAbstractCase {
	
	@Inject
	private SqlSession session;
	
	@Test
	public void test() {
		assertNotNull(session);
	}

}
