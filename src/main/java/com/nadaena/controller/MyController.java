package com.nadaena.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nadaena.service.MyService;
import com.nadaena.service.SearchService;
import com.nadaena.vo.MainTitleVo;
import com.nadaena.vo.ReviewVo;
import com.nadaena.vo.UserVo;

@Controller
public class MyController {

	@Autowired
	MyService myService;
	@Autowired
	SearchService searchService;
	
	//회원정보 및 수정폼
	@RequestMapping(value = "my/info", method = { RequestMethod.GET, RequestMethod.POST })
	public String mymain(Model model, HttpSession session) {

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			//로그인 안되어있을 때

		} else if (authUser != null) {
			//로그인 되어있을 때

			int userNo = authUser.getUserNo();

			UserVo userVo = myService.getUser(userNo);

			model.addAttribute("userVo", userVo);

			System.out.println(userVo);
		}

		return "my/info";
	}

	//참가중 + 종료(전체) 챌린지 리스트
	@RequestMapping(value = "my/challenge", method = { RequestMethod.GET, RequestMethod.POST })
	public String list1(Model model, HttpSession session, @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때

			int userNo = authUser.getUserNo();

			Map<String, Object> mcMap = myService.getmcList(crtPage, userNo);

			model.addAttribute("mcMap", mcMap);
			System.out.println(mcMap);
		}
		return "my/challenge";
	}

	//참가중 + 종료(성공) 챌린지 리스트
	@RequestMapping(value = "my/challenge/success", method = { RequestMethod.GET, RequestMethod.POST })
	public String list2(Model model, HttpSession session, @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때

			int userNo = authUser.getUserNo();

			Map<String, Object> mcMap = myService.getmcList2(crtPage, userNo);

			model.addAttribute("mcMap", mcMap);
		}
		return "my/challengeyes";
	}

	//참가중 + 종료(실패) 챌린지 리스트
	@RequestMapping(value = "my/challenge/failure", method = { RequestMethod.GET, RequestMethod.POST })
	public String list3(Model model, HttpSession session, @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때

			int userNo = authUser.getUserNo();

			Map<String, Object> mcMap = myService.getmcList3(crtPage, userNo);

			model.addAttribute("mcMap", mcMap);
		}
		return "my/challengeno";
	}

	//참가중 이벤트 리스트
	@RequestMapping(value = "my/event", method = { RequestMethod.GET, RequestMethod.POST })
	public String elist1(Model model, HttpSession session, @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때

			int userNo = authUser.getUserNo();

			Map<String, Object> mcMap = myService.getmeList21(crtPage, userNo);

			model.addAttribute("mcMap", mcMap);
		}
		return "my/event";
	}

	//종료된 이벤트 리스트
	@RequestMapping(value = "my/event/end", method = { RequestMethod.GET, RequestMethod.POST })
	public String elist2(Model model, HttpSession session, @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때

			int userNo = authUser.getUserNo();

			Map<String, Object> mcMap = myService.getmeList22(crtPage, userNo);

			model.addAttribute("mcMap", mcMap);
		}
		return "my/eventend";
	}

	//북마크 챌린지 리스트
	@RequestMapping(value = "my/bookmark1", method = { RequestMethod.GET, RequestMethod.POST })
	public String blist1(Model model, HttpSession session, @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때

			int userNo = authUser.getUserNo();

			Map<String, Object> mbMap = myService.getmbList1(crtPage, userNo);

			model.addAttribute("mbMap", mbMap);
		}
		return "my/bookmark1";
	}

	//북마크 이벤트 리스트
	@RequestMapping(value = "my/bookmark2", method = { RequestMethod.GET, RequestMethod.POST })
	public String blist2(Model model, HttpSession session, @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때

			int userNo = authUser.getUserNo();

			Map<String, Object> mbMap = myService.getmbList2(crtPage, userNo);

			model.addAttribute("mbMap", mbMap);
		}
		return "my/bookmark2";
	}

	//마이리뷰 리스트
	@RequestMapping(value = "my/review", method = { RequestMethod.GET, RequestMethod.POST })
	public String rlist(Model model, HttpSession session, @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때

			int userNo = authUser.getUserNo();

			Map<String, Object> rMap = myService.getmyrList(crtPage, userNo);

			model.addAttribute("rMap", rMap);
		}
		return "my/review";
	}

	//챌린지게시판 - 리뷰 리스트
	@RequestMapping(value = "/challenge/{challengeNo}/review", method = { RequestMethod.GET, RequestMethod.POST })
	public String review(Model model, @PathVariable("challengeNo") int challengeNo, HttpSession session,
						@RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때
			int userNo = authUser.getUserNo();
			
			Map<String, Object> rMap = myService.getrList(crtPage, challengeNo, userNo);
			
			model.addAttribute("rMap", rMap);

			System.out.println(rMap);
			//best 글 가져오기
			Map<String, List<MainTitleVo>> bestListMap = searchService.getBestClgList();
			model.addAttribute("bestListMap", bestListMap);
		}
		return "challenge/review";
	}

	//리뷰쓰기(리뷰내용+상태업데이트+포인트지급) - 챌린지
	@RequestMapping(value = "my/writeReview", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeReview(@RequestParam("file") MultipartFile file, @ModelAttribute ReviewVo reviewVo, HttpSession session) {

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때
			reviewVo.setUserNo(authUser.getUserNo());
			reviewVo.setNickname(authUser.getNickName());

			myService.writeReview(file, reviewVo);
		}
		return "redirect:/my/challenge";
	}

	//리뷰쓰기(리뷰내용+상태업데이트+포인트지급) - 이벤트
	@RequestMapping(value = "my/writeReview2", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeReview2(@RequestParam("file") MultipartFile file, @ModelAttribute ReviewVo reviewVo, Model model, HttpSession session) {

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때
			reviewVo.setUserNo(authUser.getUserNo());
			reviewVo.setNickname(authUser.getNickName());

			myService.writeReview(file, reviewVo);
		}
		return "redirect:/my/event";
	}

	//리뷰삭제
	@RequestMapping(value = "my/deleteReview", method = { RequestMethod.GET, RequestMethod.POST })
	public String deleteReview(@ModelAttribute ReviewVo reviewVo, HttpSession session) {

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때
			reviewVo.setUserNo(authUser.getUserNo());

			myService.removeReview(reviewVo);
		}
		return "redirect:/my/review";
	}

	//포인트 리스트(사용내역)
	@RequestMapping(value = "my/point", method = { RequestMethod.GET, RequestMethod.POST })
	public String plist(Model model, HttpSession session, @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if(authUser != null) {
			//로그인 되어있을 때
			int userNo = authUser.getUserNo();

			Map<String, Object> pMap = myService.getpList(crtPage, userNo);

			model.addAttribute("pMap", pMap);
			System.out.println(pMap);
		}
		return "my/point";
	}

	@RequestMapping(value = "my/my-buylist", method = { RequestMethod.GET, RequestMethod.POST })
	public String mybuylist() {
		System.out.println("mybuylist");

		return "my/my-buylist";
	}

}
