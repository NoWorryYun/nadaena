package com.nadaena.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

			return "redirect:/joinForm";
		} else {
			System.out.println("로그인 실패");
			return "redirect:/user/loginForm?result=fail";
		}
	}
	@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session) {
		System.out.println("로그아웃");

		session.removeAttribute("authUser");
		session.invalidate();
		return "redirect:/loginForm";
	}
	
	@RequestMapping(value="/joinForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinForm() {
		System.out.println("join");
		
		return "user/joinForm";
	} 
	@RequestMapping(value = "/join", method = { RequestMethod.GET, RequestMethod.POST })
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("가입성공");
		
		userService.join(userVo);

		return "user/loginForm";
	}
	@RequestMapping(value="/modifyForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String modifyForm() {
		
		System.out.println("modifyForm");
	
		return "user/modifyForm";
	} 

	/*
	 * @RequestMapping(value="/modifyForm", method = {RequestMethod.GET, RequestMethod.POST}) public String modifyForm(Model model, HttpSession
	 * session) {
	 * 
	 * System.out.println("modifyForm");
	 * 
	 * int userNo = ((UserVo) session.getAttribute("authUser")).getUserNo();
	 * 
	 * UserVo userVo = userService.getUserInfo(userNo);
	 * 
	 * model.addAttribute("userVo", userVo); return "user/modifyForm"; }
	 */
	//회원정보수정
		@RequestMapping(value="/modify", method = {RequestMethod.GET, RequestMethod.POST})
		public String modify(@ModelAttribute UserVo userVo, HttpSession session) {
			System.out.println("modify");

			UserVo authUser = (UserVo) session.getAttribute("authUser");

			int userNo = authUser.getUserNo();

			userVo.setUserNo(userNo);

			userService.modifyUser(userVo);
			
			System.out.println("수정된 정보" + userVo);

			authUser.setName(userVo.getName());
			
			return "redirect:/user/joinForm";
		}
	
	@RequestMapping(value="/findForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String findForm() {
		System.out.println("올라가나??");
		
		return "user/findForm";
	} 
	  
	 
}
