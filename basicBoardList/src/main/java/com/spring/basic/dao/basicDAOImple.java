package com.spring.basic.dao;

import java.util.List;

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
	@Override
	public List<basicDTO> getBoardList() throws Exception {
		return session.selectList("com.spring.mapper.Basicmapper.getAllBoard");
		
	}
	public basicDTO getOneBoard(int num) throws Exception {
		return session.selectOne("com.spring.mapper.Basicmapper.getOneBoard", num);
	}
	@Override
	public void increaseReadCount(int num) throws Exception {
		session.update("com.spring.mapper.Basicmapper.increaseReadCount", num);
	}

}
