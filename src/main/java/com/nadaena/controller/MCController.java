package com.nadaena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.MCService;
import com.nadaena.vo.MCVo;

@Controller
public class MCController {
	
	@Autowired
	MCService mcService;
	 
	//참가중 챌린지 리스트
	@RequestMapping(value = "my/my-challenge", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(Model model) {
		System.out.println("MCC > mclist()");
		
		// Service를 통해서 list(주소)을 가져온다
		List<MCVo> mcList = mcService.getmcList();
		
		// ds 데이터보내기 -->request attribute에 넣는다
		model.addAttribute("mcList", mcList);
		
		return "my/my-challenge";
	}
}
