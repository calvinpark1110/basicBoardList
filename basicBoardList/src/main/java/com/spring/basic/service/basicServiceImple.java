package com.spring.basic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.basic.dao.basicDAO;
import com.spring.basic.dto.basicDTO;

@Service
public class basicServiceImple implements basicService {

	@Autowired
	private basicDAO bdao;
	
	@Override
	public void insertBoard(basicDTO bdto) throws Exception {
		bdao.insertBoard(bdto);
		
	}

	@Override
	public List<basicDTO> getBoardList() throws Exception {
		return bdao.getBoardList();
	}

}
