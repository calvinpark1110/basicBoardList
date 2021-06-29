package com.spring.basic.dao;

import java.util.List;

import com.spring.basic.dto.basicDTO;

public interface basicDAO {
	public void insertBoard(basicDTO bdto) throws Exception;
	public List<basicDTO> getBoardList() throws Exception;
	public basicDTO getOneBoard(int num) throws Exception;
	public void increaseReadCount(int num) throws Exception;
}
