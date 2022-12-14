package com.nadaena.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nadaena.service.ChallengeService;
import com.nadaena.service.SearchService;
import com.nadaena.vo.ChallengeSubVo;
import com.nadaena.vo.ChallengeVo;
import com.nadaena.vo.MainTitleVo;
import com.nadaena.vo.UserVo;

/*테스트*/

@Controller
public class ChallengeController {

	@Autowired
	private ChallengeService challengeService;
	@Autowired
	private SearchService searchService;

	//intro
	@RequestMapping(value = "/challenge/{challengeNo}/intro", method = { RequestMethod.GET, RequestMethod.POST })
	public String challenge(@PathVariable("challengeNo") int challengeNo, HttpSession session, Model model) throws ParseException {
		System.out.println("challnege/intro");

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int userNo;
		if (userVo != null) {
			userNo = userVo.getUserNo();
		} else {
			userNo = -1;
		}

		Map<String, Object> cMap = challengeService.intro(challengeNo, userNo);

		model.addAttribute("cMap", cMap);

		//best 글 가져오기
		Map<String, List<MainTitleVo>> bestListMap = searchService.getBestClgList();
		model.addAttribute("bestListMap", bestListMap);

		return "challenge/intro";
	}

	//챌린지 참여 확인하기
	@ResponseBody
	@RequestMapping(value = "/challenge/joinchk", method = { RequestMethod.GET, RequestMethod.POST })
	public int joinChk(@RequestBody ChallengeVo challengeVo) {

		int result = challengeService.joinChk(challengeVo);

		return result;
	}

	//date확인
	@ResponseBody
	@RequestMapping(value = "/challenge/dateChk", method = { RequestMethod.GET, RequestMethod.POST })
	public List<ChallengeVo> dateChk(@RequestBody ChallengeVo challengeVo, HttpSession session) throws ParseException {
		System.out.println("Controller > dateChk");
		int userNo = challengeVo.getUserNo();
		int challengeNo = challengeVo.getChallengeNo();

		List<ChallengeVo> dateChk = challengeService.dateChk(challengeNo, userNo);

		System.out.println(dateChk);

		return dateChk;
	}

	//북마크 확인
	@ResponseBody
	@RequestMapping(value = "/challenge/bookMark", method = { RequestMethod.GET, RequestMethod.POST })
	public int Bookmark(@RequestBody ChallengeVo bookMarkData) {
		System.out.println("북마크 확인중");

		return challengeService.bookMark(bookMarkData);

	}

	//북마크 설정
	@ResponseBody
	@RequestMapping(value = "/challenge/chkBookMark", method = { RequestMethod.GET, RequestMethod.POST })
	public int chkBookMark(@RequestBody ChallengeVo challengeVo) {
		System.out.println("북마크 설정");

		return challengeService.chkBM(challengeVo);

	}

	//북마크 해제
	@ResponseBody
	@RequestMapping(value = "/challenge/unChkBookMark", method = { RequestMethod.GET, RequestMethod.POST })
	public int unChkBookMark(@RequestBody ChallengeVo challengeVo) {
		System.out.println("북마크 해제");

		return challengeService.unChkBm(challengeVo);

	}

	//챌린지 참여+탈퇴하기
	@RequestMapping(value = "/challenge/clginout", method = { RequestMethod.GET, RequestMethod.POST })
	public String joinchallenge(@ModelAttribute ChallengeVo challengeVo, HttpSession session, HttpServletRequest request) {
		System.out.println("challnege/joinchallenge");
		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int userNo;
		if (userVo != null) {
			userNo = userVo.getUserNo();
		} else {
			userNo = -1;
		}

		challengeVo.setUserNo(userNo);

		challengeService.joinChallenge(challengeVo);
		String referer = request.getHeader("Referer"); // 헤더에서 이전 페이지를 읽는다.

		return "redirect:" + referer; // 이전 페이지로 리다이렉트
	}

	//인증페이지
	@RequestMapping(value = "/challenge/{challengeNo}/certify", method = { RequestMethod.GET, RequestMethod.POST })
	public String certify(@PathVariable("challengeNo") int challengeNo, HttpSession session, Model model, @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage, @RequestParam(value = "upload", required = false, defaultValue = "") String upload) {

		System.out.println("challnege/certify");

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int userNo;
		if (userVo != null) {
			userNo = userVo.getUserNo();
		} else {
			userNo = -1;
		}

		Map<String, Object> cMap = challengeService.intro(challengeNo, userNo);

		Map<String, Object> pMap = challengeService.certifyList(crtPage, challengeNo, userNo, upload);
		model.addAttribute("cMap", cMap);
		model.addAttribute("pMap", pMap);

		//best 글 가져오기
		Map<String, List<MainTitleVo>> bestListMap = searchService.getBestClgList();
		model.addAttribute("bestListMap", bestListMap);

		return "challenge/certify";
	}

	//진행도 계산하기
	@ResponseBody
	@RequestMapping(value = "/challenge/myprogress", method = { RequestMethod.GET, RequestMethod.POST })
	public double calProgress(@RequestBody ChallengeVo challengeVo) throws ParseException {
		System.out.println("유저 진행도 측정");

		int challengeNo = challengeVo.getChallengeNo();
		int userNo = challengeVo.getUserNo();

		double result = challengeService.calProgress(challengeNo, userNo);

		return result;
	}

	@ResponseBody
	@RequestMapping(value = "/challenge/allprogress", method = { RequestMethod.GET, RequestMethod.POST })
	public double calAllProgress(@RequestBody ChallengeVo challengeVo) throws ParseException {
		System.out.println("챌린지 진행도 측정");
		int challengeNo = challengeVo.getChallengeNo();
		int userNo = challengeVo.getUserNo();
		double result = challengeService.calAllProgress(challengeNo);

		return result;
	}

	@RequestMapping(value = "/challenge/{challengeNo}/certified", method = { RequestMethod.GET, RequestMethod.POST })
	public String challenge2(@PathVariable("challengeNo") int challengeNo, HttpSession session, @ModelAttribute ChallengeVo challengeVo) throws ParseException {
		System.out.println("challnege/certify");

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int userNo;
		if (userVo != null) {
			userNo = userVo.getUserNo();
		} else {
			userNo = -1;
		}

		challengeVo.setChallengeNo(challengeNo);
		challengeVo.setUserNo(userNo);

		System.out.println("인증내용을 보냈습니다.");
		System.out.println(challengeVo);

		int result = challengeService.certifyUpload(challengeVo, userNo, challengeNo);
		if (result == 1) {
			return "redirect:./certify";
		} else {
			return "redirect:./certify?result=fail";
		}
	}

	//writeForm으로 이동
	@RequestMapping(value = "/challenge/write", method = { RequestMethod.GET, RequestMethod.POST })
	public String challengeWrite() {
		System.out.println("challenge/challengeWriteForm");

		return "challenge/writechallenge";
	}

	//챌린지 내용 받기
	@ResponseBody
	@RequestMapping(value = "/challenge/upload", method = { RequestMethod.GET, RequestMethod.POST })
	public int challengeData(@ModelAttribute ChallengeVo challengeVo) throws IOException {

		System.out.println(challengeVo.getClgLevel());
		int challengeNo = challengeService.makeChallenge(challengeVo);

		return challengeNo;
	}

	//챌린지 만들기
	@ResponseBody
	@RequestMapping(value = "/challenge/makeSubject", method = { RequestMethod.GET, RequestMethod.POST })
	public int challengeSub(@RequestBody List<ChallengeSubVo> upsList) throws IOException {

		System.out.println(upsList);

		int challengeSub = challengeService.makeClgSub(upsList);

		return challengeSub;
	}

	//유저 개인의 참여 갯수 확인
	@ResponseBody
	@RequestMapping(value = "/joinCount", method = { RequestMethod.GET, RequestMethod.POST })
	public int joinCount(@RequestBody int userNo) {

		System.out.println("==================유저 join 체크 =====================");

		int count = challengeService.joinCount(userNo);

		System.out.println("Controller Count : " + count);

		return count;
	}

	//유저 포인트 체크하기
	@ResponseBody
	@RequestMapping(value = "/pointChk", method = { RequestMethod.GET, RequestMethod.POST })
	public int pointChk(@RequestBody int userNo) {
		System.out.println("=====================pointChk===================");
		int pointChk = challengeService.userAmount(userNo);
		System.out.println("controller pointchk : " + pointChk);

		return pointChk;
	}

	//챌린지 존재여부 확인
	@ResponseBody
	@RequestMapping(value = "/clgChk", method = { RequestMethod.GET, RequestMethod.POST })
	public int clgChk(@RequestBody int challengeNo) {

		return challengeService.clgChk(challengeNo);
	}

}
