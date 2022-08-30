package com.nadaena.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.BoardService;
import com.nadaena.vo.BoardVo;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	//글쓰기 폼
	@RequestMapping(value= "challenge/cwriteboard", method= {RequestMethod.GET, RequestMethod.POST})
	public String writeForm() {
		
		return "challenge/writeboard";
	}
	
	//글쓰기
	@RequestMapping(value= "challenge/cwrite", method = {RequestMethod.GET, RequestMethod.POST})
	public String write(@ModelAttribute BoardVo boardVo) {
		
		boardService.write(boardVo);
		
		return "redirect:/challenge/community";
	}
	
	
}
