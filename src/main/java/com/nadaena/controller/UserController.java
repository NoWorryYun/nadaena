package com.nadaena.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nadaena.service.HobbyService;
import com.nadaena.service.UserService;
import com.nadaena.vo.UserVo;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private HobbyService hobbyService;
	
	
	@RequestMapping(value="/loginForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String loginForm() {
		System.out.println("login");
		
		return "user/loginForm";
	} 
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(@ModelAttribute UserVo userVo, HttpSession session ) {
		System.out.println("login test");
		System.out.println(userVo);

		UserVo authUser = userService.getUser(userVo);

		if (authUser != null) {
			System.out.println("로그인 성공");
			session.setAttribute("authUser", authUser);
			
			return "redirect:/main"; //joinForm";
		} else {
			System.out.println("로그인 실패");
			session.setAttribute("msg", "failLogin");
			return "user/loginForm";
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
			
			return "redirect:/my/info";
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
	
	@RequestMapping(value="/kakaologin", method = {RequestMethod.GET, RequestMethod.POST})
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session, UserVo userVo) {
		System.out.println("#########" + code);
		
		/*
		 * 리턴값의 testPage는 아무 페이지로 대체해도 괜찮습니다.
		 * 없는 페이지를 넣어도 무방합니다.
		 * 404가 떠도 제일 중요한건 #########인증코드 가 잘 출력이 되는지가 중요하므로 너무 신경 안쓰셔도 됩니다.
		 */
		String access_Token = userService.getAccessToken(code);
		System.out.println("###access_Token#### : " + access_Token);
		
		// 위 코드는 session객체에 담긴 정보를 초기화 하는 코드.
		session.setAttribute("kakaoN", userVo.getNickName());
		session.setAttribute("kakaoE", userVo.getEmail());
		
		UserVo userInfo = userService.kakaogetUserInfo(access_Token);
		
		
		
		/*
		 * if (userInfo != null) { System.out.println("로그인 성공"); session.setAttribute("authUser", authUser);
		 * 
		 * return "redirect:/main"; //joinForm"; } else { System.out.println("로그인 실패"); session.setAttribute("msg", "failLogin"); return
		 * "user/loginForm"; }
		 */
		 
		return "user/findId";
    	}

}
