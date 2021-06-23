package com.spring.basic.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.basic.dto.basicDTO;

@Repository
public class basicDAOImple implements basicDAO {

	@Autowired
	private SqlSession session;
	@Override
	public void insertBoard(basicDTO bdto) throws Exception {
		session.insert("com.spring.mapper.Basicmapper.insertBoard", bdto);
	}

}
