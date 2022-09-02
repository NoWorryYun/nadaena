package com.nadaena.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nadaena.dao.UserDao;
import com.nadaena.service.HobbyService;
import com.nadaena.service.UserService;
import com.nadaena.vo.UserVo;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private HobbyService hobbyService;
	@Autowired
	private UserDao userDao;
	
	
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
			
			return "redirect:/main"; //joinForm";
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
	public String join(@ModelAttribute UserVo userVo, HttpServletRequest request) {
		System.out.println("가입성공");
	
		int userNo = userService.join(userVo);
		System.out.println(userNo);
		 String[] hobbies = request.getParameterValues("interestName"); 
		 String item = "";
		 for(int i=0;i<hobbies.length;i++) {
			 item += hobbies[i]+" "; //하나의 스트링으로 데이터 연결 
		 }
		 hobbyService.insert(item , userNo);
		 
		return "user/loginForm";
	}
	@RequestMapping(value="/modifyForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String modifyForm(Model model , HttpSession session) {
		System.out.println("modifyForm");
	
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		UserVo userVo = userService.getUserInfo(userNo);
		model.addAttribute("userVo", userVo);
		model.addAttribute("interest",hobbyService.selectinterest(userNo) );
		
		session.setAttribute("authUser", authUser);
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
		System.out.println("find");
		
		return "user/findForm";
	} 
	@RequestMapping(value="/findId", method=RequestMethod.POST)
	public String findId(UserVo userVo, Model model) {
		UserVo user = userService.findId(userVo);
		
		if(user == null) { 
			model.addAttribute("check", 1);
		} else { 
			model.addAttribute("check", 0);
			model.addAttribute("email", user.getEmail());
		}
		
		return "user/findId";
	}
	
	@RequestMapping(value="/findPw", method=RequestMethod.POST)
	public String findPwa(UserVo userVo, Model model) {
		UserVo user = userService.findPw(userVo);
		
		if(user == null) { 
			model.addAttribute("check", 1);
		} else { 
			model.addAttribute("check", 0);
			model.addAttribute("pasword", user.getPasword());
		}
		
		return "user/findPw";
	}
}
