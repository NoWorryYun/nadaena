package com.nadaena.controller;

import java.text.ParseException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.BoardService;
import com.nadaena.vo.BoardVo;
import com.nadaena.vo.UserVo;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;

	//글쓰기 폼
	@RequestMapping(value = "/challenge/{challengeNo}/writeboardForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeBoard(@PathVariable("challengeNo") int challengeNo, Model model, HttpSession session) throws ParseException {
		System.out.println("challenge/writeboardForm");

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int userNo;
		if (userVo != null) {
			userNo = userVo.getUserNo();
		} else {
			userNo = -1;
		}

		Map<String, Object> cMap = boardService.intro(challengeNo, userNo);

		model.addAttribute("cMap", cMap);

		return "challenge/writeboardForm";
	}

	//글쓰기
	@RequestMapping(value = "/challenge/writeboard", method = { RequestMethod.GET, RequestMethod.POST })
	public String write(@ModelAttribute BoardVo boardVo, HttpSession session) {

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때
			boardVo.setUserNo(authUser.getUserNo());

			boardService.write(boardVo);
		}

		return "redirect:/challenge/communityList";
	}

}
