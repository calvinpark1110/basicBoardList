package com.spring.basic.controller;





import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String boardList(Model model) throws Exception{
		model.addAttribute("boardList", bs.getBoardList());
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
	
	@RequestMapping(value="/boardInfo")
	public String boardInfo(@RequestParam("num") int num, Model model ) throws Exception{
		model.addAttribute("bdto", bs.getOneBoard(num));
		return "info";
	}
}
