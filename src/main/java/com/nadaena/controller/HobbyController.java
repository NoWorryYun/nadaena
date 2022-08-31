package com.nadaena.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nadaena.service.HobbyService;
import com.nadaena.vo.InterestVo;
import com.nadaena.vo.UserVo;

@Controller
public class HobbyController {

	@Autowired
	HobbyService hobbyService;
	
	
	@RequestMapping(value="/join/hobby", method = {RequestMethod.GET, RequestMethod.POST})
	public void hobbycb(@RequestBody InterestVo interestVo) {
		System.out.println("hobby reg");
		
	//	hobbyService.insert(interestVo);
	}
	
	@RequestMapping(value="/modify/hobby", method = {RequestMethod.GET, RequestMethod.POST})
	public void hobbymodify(@RequestBody InterestVo interestVo, HttpSession session) {
		System.out.println("hobby reg");
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		int userNo = authUser.getUserNo();
		hobbyService.update(interestVo,userNo);
	} 
}
