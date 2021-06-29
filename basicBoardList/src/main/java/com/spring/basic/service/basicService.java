package com.spring.basic.service;


import java.util.List;

import com.spring.basic.dto.basicDTO;

public interface basicService {
	public void insertBoard(basicDTO bdto) throws Exception;
	public List<basicDTO> getBoardList() throws Exception;
	public basicDTO getOneBoard(int num) throws Exception;
}
