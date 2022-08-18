package com.nadaena.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.UserService;
import com.nadaena.vo.UserVo;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	@RequestMapping(value="/loginForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String loginForm() {
		System.out.println("login");
		
		return "user/loginForm";
	} 
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("login test");
		System.out.println(userVo);

		UserVo authUser = userService.getUser(userVo);

		if (authUser != null) {
			System.out.println("로그인 성공");
			session.setAttribute("authUser", authUser);

			return "redirect:/main";
		} else {
			System.out.println("로그인 실패");
			return "redirect:/user/loginForm?result=fail";
		}
	}
	
	@RequestMapping(value="/joinForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinForm() {
		System.out.println("join");
		
		return "user/joinForm";
	} 
	@RequestMapping(value = "/join", method = { RequestMethod.GET, RequestMethod.POST })
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("join test");
		
		userService.join(userVo);

		return "user/loginForm";
	}
	@RequestMapping(value="/modifyForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String modifyForm() {
		System.out.println("modify");
		
		return "user/modifyForm";
	} 
	@RequestMapping(value="/findForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String findForm() {
		System.out.println("find");
		
		return "user/findForm";
	} 
	  
	 
}
