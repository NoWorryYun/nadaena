package com.nadaena.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.PointService;
import com.nadaena.vo.PointVo;
import com.nadaena.vo.UserVo;

@Controller
public class PointController {
	
	@Autowired
	PointService pointService;
	
	//금액-->포인트 충전
	@RequestMapping(value="/my/chargePoint", method = {RequestMethod.GET, RequestMethod.POST})
	public String chargePoint(PointVo pointVo, HttpSession session) {
		System.out.println("PointController>chargePoint");
		
		
		//세션 여부 조사
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		if(authUser == null) { //세션이 없으면(로그인 안되었으면)

		}else { //세션이 없으면(로그인 했으면)
			
			//실행
			int userNo = authUser.getUserNo();
			pointVo.setUserNo(userNo); //로그인회원번호
			pointVo.setPointGroup(1);  //충전 1
			pointVo.setAmount(pointVo.getCharge());  //금액charge --> 포인트amount
			pointVo.setChallengeSource(0);
			pointVo.setProductSource(0);
			pointVo.setPointMemo("충전");
			System.out.println(pointVo);
			
			
			pointService.insertPoint(pointVo);
		}
		
		return "redirect:/my/point"; 
	} 
	
	
	
	//포인트-->금액 환전
	@RequestMapping(value="/my/exchange", method = {RequestMethod.GET, RequestMethod.POST})
	public String exchange(PointVo pointVo, HttpSession session) {
		System.out.println("PointController>exchange");
		
		
		//세션 여부 조사
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		if(authUser == null) { //세션이 없으면(로그인 안되었으면)

		}else { //세션이 없으면(로그인 했으면)
			
			//실행
			int userNo = authUser.getUserNo();
			pointVo.setUserNo(userNo); //로그인회원번호
			pointVo.setPointGroup(5);  //환전 5
			
			//현금은 +로 표현
			int amount = pointVo.getAmount(); //입력한 포인트 구함  포인트amount
			pointVo.setAmount((-1)*amount); //포인트amount를 -로 변경
			pointVo.setCharge(amount); //금액charge는 +로 표현
			
			pointVo.setChallengeSource(0);
			pointVo.setProductSource(0);
			pointVo.setPointMemo("환전");
			System.out.println(pointVo);
			
			
			pointService.insertPoint(pointVo);
		}
		
		return "redirect:/my/point"; 
	} 
}
