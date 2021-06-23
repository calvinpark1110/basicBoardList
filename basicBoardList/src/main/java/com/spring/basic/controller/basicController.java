package com.spring.basic.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.basic.dto.basicDTO;
import com.spring.basic.service.basicService;

@Controller
public class basicController {

	@Autowired
	private basicService bs;
	
	@RequestMapping(value="/")
	public String main() throws Exception{
		return "main";
	}
	@RequestMapping(value="/boardList")
	public String boardList() throws Exception{
		return "boardList";
	}
	
	@RequestMapping(value="/boardWrite")
	public String boardWrite() throws Exception {
		return "boardWrite";
			}
	
	@RequestMapping(value="/boardWrite", method=RequestMethod.POST)
	public String boardWriteAction(basicDTO bdto) throws Exception{
		bs.insertBoard(bdto);
		return "redirect:boardList";
	}
}
