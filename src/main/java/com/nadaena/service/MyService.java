package com.nadaena.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.nadaena.dao.MyDao;
import com.nadaena.vo.ChallengeVo;
import com.nadaena.vo.MyVo;
import com.nadaena.vo.ReviewVo;
import com.nadaena.vo.UserVo;

@Service
public class MyService {

	@Autowired
	MyDao myDao;
	
	//참가+종료 리스트(전체)
	public Map<String, Object> getmcList(int crtPage, int userNo) {

		//////리스트 가져오기

		//페이지당 글갯수
		int listCnt = 3;

		//현재페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		//시작글번호
		int startRnum = (crtPage - 1) * listCnt + 1;

		//끝글번호
		int endRnum = (startRnum + listCnt) - 1;

		List<MyVo> mcList = myDao.selectList(userNo);
		List<MyVo> mcList2 = myDao.selectList12(startRnum, endRnum, userNo);

		//////////
		//페이징계산
		//////////

		//전체글갯수
		int totalCnt = myDao.selectTotalCnt(userNo);

		//페이지당버튼갯수
		int pageBtnCount = 5;

		//마지막버튼번호
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;

		//
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;

		//다음 화살표 유무
		boolean next = false;
		if ((listCnt * endPageBtnNo) < totalCnt) {
			next = true;

		} else {
			endPageBtnNo = (int) Math.ceil(totalCnt / (double) listCnt);
		}

		//이전 화살표 유무
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;
		}

		Map<String, Object> mcMap = new HashMap<String, Object>();

		mcMap.put("mcList", mcList);
		mcMap.put("mcList2", mcList2);
		mcMap.put("prev", prev);
		mcMap.put("startPageBtnNo", startPageBtnNo);
		mcMap.put("endPageBtnNo", endPageBtnNo);
		mcMap.put("next", next);

		return mcMap;
	}

	//참가+종료 리스트(성공)
	public Map<String, Object> getmcList2(int crtPage, int userNo) {
		System.out.println("C > getmcList");

		//////리스트 가져오기

		//페이지당 글갯수
		int listCnt = 3;

		//현재페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		//시작글번호
		int startRnum = (crtPage - 1) * listCnt + 1;

		//끝글번호
		int endRnum = (startRnum + listCnt) - 1;

		List<MyVo> mcList = myDao.selectList(userNo);
		List<MyVo> mcList3 = myDao.selectList13(startRnum, endRnum, userNo);

		//////////
		//페이징계산
		//////////

		//전체글갯수
		int totalCnt2 = myDao.selectTotalCnt2(userNo);

		//페이지당버튼갯수
		int pageBtnCount = 5;

		//마지막버튼번호
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;

		//
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;

		//다음 화살표 유무
		boolean next = false;
		if ((listCnt * endPageBtnNo) < totalCnt2) {
			next = true;

		} else {
			endPageBtnNo = (int) Math.ceil(totalCnt2 / (double) listCnt);
		}

		//이전 화살표 유무
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;
		}

		Map<String, Object> mcMap = new HashMap<String, Object>();

		mcMap.put("mcList", mcList);
		mcMap.put("mcList3", mcList3);
		mcMap.put("prev", prev);
		mcMap.put("startPageBtnNo", startPageBtnNo);
		mcMap.put("endPageBtnNo", endPageBtnNo);
		mcMap.put("next", next);

		return mcMap;
	}

	//참가+종료 리스트(실패)
	public Map<String, Object> getmcList3(int crtPage, int userNo) {
		System.out.println("C > getmcList");

		//////리스트 가져오기

		//페이지당 글갯수
		int listCnt = 3;

		//현재페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		//시작글번호
		int startRnum = (crtPage - 1) * listCnt + 1;

		//끝글번호
		int endRnum = (startRnum + listCnt) - 1;

		List<MyVo> mcList = myDao.selectList(userNo);
		List<MyVo> mcList4 = myDao.selectList14(startRnum, endRnum, userNo);

		//////////
		//페이징계산
		//////////

		//전체글갯수
		int totalCnt3 = myDao.selectTotalCnt3(userNo);

		//페이지당버튼갯수
		int pageBtnCount = 5;

		//마지막버튼번호
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;

		//
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;

		//다음 화살표 유무
		boolean next = false;
		if ((listCnt * endPageBtnNo) < totalCnt3) {
			next = true;

		} else {
			endPageBtnNo = (int) Math.ceil(totalCnt3 / (double) listCnt);
		}

		//이전 화살표 유무
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;
		}

		Map<String, Object> mcMap = new HashMap<String, Object>();

		mcMap.put("mcList", mcList);
		mcMap.put("mcList4", mcList4);
		mcMap.put("prev", prev);
		mcMap.put("startPageBtnNo", startPageBtnNo);
		mcMap.put("endPageBtnNo", endPageBtnNo);
		mcMap.put("next", next);

		return mcMap;
	}

//	//진행중 이벤트 리스트
//	public Map<String, Object> getmeList21(int crtPage, int userNo) {
//		System.out.println("C > getmcList");
//
//		//////리스트 가져오기
//
//		//페이지당 글갯수
//		int listCnt = 3;
//
//		//현재페이지
//		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);
//
//		//시작글번호
//		int startRnum = (crtPage - 1) * listCnt + 1;
//
//		//끝글번호
//		int endRnum = (startRnum + listCnt) - 1;
//
//		List<MyVo> meList1 = myDao.selectList21(startRnum, endRnum, userNo);
//
//		//////////
//		//페이징계산
//		//////////
//
//		//전체글갯수
//		int totalCnt21 = myDao.selectTotalCnt21(userNo);
//
//		//페이지당버튼갯수
//		int pageBtnCount = 5;
//
//		//마지막버튼번호
//		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
//
//		//
//		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;
//
//		//다음 화살표 유무
//		boolean next = false;
//		if ((listCnt * endPageBtnNo) < totalCnt21) {
//			next = true;
//
//		} else {
//			endPageBtnNo = (int) Math.ceil(totalCnt21 / (double) listCnt);
//		}
//
//		//이전 화살표 유무
//		boolean prev = false;
//		if (startPageBtnNo != 1) {
//			prev = true;
//		}
//
//		Map<String, Object> mcMap = new HashMap<String, Object>();
//
//		mcMap.put("meList1", meList1);
//		mcMap.put("prev", prev);
//		mcMap.put("startPageBtnNo", startPageBtnNo);
//		mcMap.put("endPageBtnNo", endPageBtnNo);
//		mcMap.put("next", next);
//
//		return mcMap;
//	}
//
//	//종료 이벤트 리스트
//	public Map<String, Object> getmeList22(int crtPage, int userNo) {
//
//		//////리스트 가져오기
//
//		//페이지당 글갯수
//		int listCnt = 3;
//
//		//현재페이지
//		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);
//
//		//시작글번호
//		int startRnum = (crtPage - 1) * listCnt + 1;
//
//		//끝글번호
//		int endRnum = (startRnum + listCnt) - 1;
//
//		List<MyVo> meList2 = myDao.selectList22(startRnum, endRnum, userNo);
//
//		//////////
//		//페이징계산
//		//////////
//
//		//전체글갯수
//		int totalCnt22 = myDao.selectTotalCnt22(userNo);
//
//		//페이지당버튼갯수
//		int pageBtnCount = 5;
//
//		//마지막버튼번호
//		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
//
//		//
//		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;
//
//		//다음 화살표 유무
//		boolean next = false;
//		if ((listCnt * endPageBtnNo) < totalCnt22) {
//			next = true;
//
//		} else {
//			endPageBtnNo = (int) Math.ceil(totalCnt22 / (double) listCnt);
//		}
//
//		//이전 화살표 유무
//		boolean prev = false;
//		if (startPageBtnNo != 1) {
//			prev = true;
//		}
//
//		Map<String, Object> mcMap = new HashMap<String, Object>();
//
//		mcMap.put("meList2", meList2);
//		mcMap.put("prev", prev);
//		mcMap.put("startPageBtnNo", startPageBtnNo);
//		mcMap.put("endPageBtnNo", endPageBtnNo);
//		mcMap.put("next", next);
//
//		return mcMap;
//	}

	//북마크 챌린지
	public Map<String, Object> getmbList1(int crtPage, int userNo) {

		//////리스트 가져오기

		//페이지당 글갯수
		int listCnt = 3;

		//현재페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		//시작글번호
		int startRnum = (crtPage - 1) * listCnt + 1;

		//끝글번호
		int endRnum = (startRnum + listCnt) - 1;

		List<MyVo> mbList1 = myDao.selectbList1(startRnum, endRnum, userNo);

		//////////
		//페이징계산
		//////////

		//전체글갯수
		int totalCntb1 = myDao.selectTotalCntb1(userNo);

		//페이지당버튼갯수
		int pageBtnCount = 5;

		//마지막버튼번호
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;

		//
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;

		//다음 화살표 유무
		boolean next = false;
		if ((listCnt * endPageBtnNo) < totalCntb1) {
			next = true;

		} else {
			endPageBtnNo = (int) Math.ceil(totalCntb1 / (double) listCnt);
		}

		//이전 화살표 유무
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;
		}

		Map<String, Object> mbMap = new HashMap<String, Object>();

		mbMap.put("mbList1", mbList1);
		mbMap.put("prev", prev);
		mbMap.put("startPageBtnNo", startPageBtnNo);
		mbMap.put("endPageBtnNo", endPageBtnNo);
		mbMap.put("next", next);

		return mbMap;
	}

//	//북마크 이벤트
//	public Map<String, Object> getmbList2(int crtPage, int userNo) {
//
//		//////리스트 가져오기
//
//		//페이지당 글갯수
//		int listCnt = 3;
//
//		//현재페이지
//		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);
//
//		//시작글번호
//		int startRnum = (crtPage - 1) * listCnt + 1;
//
//		//끝글번호
//		int endRnum = (startRnum + listCnt) - 1;
//
//		List<MyVo> mbList2 = myDao.selectbList2(startRnum, endRnum, userNo);
//
//		//////////
//		//페이징계산
//		//////////
//
//		//전체글갯수
//		int totalCntb2 = myDao.selectTotalCntb2(userNo);
//
//		//페이지당버튼갯수
//		int pageBtnCount = 5;
//
//		//마지막버튼번호
//		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
//
//		//
//		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;
//
//		//다음 화살표 유무
//		boolean next = false;
//		if ((listCnt * endPageBtnNo) < totalCntb2) {
//			next = true;
//
//		} else {
//			endPageBtnNo = (int) Math.ceil(totalCntb2 / (double) listCnt);
//		}
//
//		//이전 화살표 유무
//		boolean prev = false;
//		if (startPageBtnNo != 1) {
//			prev = true;
//		}
//
//		Map<String, Object> mbMap = new HashMap<String, Object>();
//
//		mbMap.put("mbList2", mbList2);
//		mbMap.put("prev", prev);
//		mbMap.put("startPageBtnNo", startPageBtnNo);
//		mbMap.put("endPageBtnNo", endPageBtnNo);
//		mbMap.put("next", next);
//
//		return mbMap;
//	}

	//마이 리뷰리스트
	public Map<String, Object> getmyrList(int crtPage, int userNo) {

		//////리스트 가져오기

		//페이지당 글갯수
		int listCnt = 20;

		//현재페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		//시작글번호
		int startRnum = (crtPage - 1) * listCnt + 1;

		//끝글번호
		int endRnum = (startRnum + listCnt) - 1;

		List<ReviewVo> rList = myDao.selectreviewList(startRnum, endRnum, userNo);

		//////////
		//페이징계산
		//////////

		//전체글갯수
		int totalCnt41 = myDao.selectTotalCnt41(userNo);

		//페이지당버튼갯수
		int pageBtnCount = 5;

		//마지막버튼번호
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;

		//
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;

		//다음 화살표 유무
		boolean next = false;
		if ((listCnt * endPageBtnNo) < totalCnt41) {
			next = true;

		} else {
			endPageBtnNo = (int) Math.ceil(totalCnt41 / (double) listCnt);
		}

		//이전 화살표 유무
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;
		}

		Map<String, Object> rMap = new HashMap<String, Object>();

		rMap.put("rList", rList);
		rMap.put("prev", prev);
		rMap.put("startPageBtnNo", startPageBtnNo);
		rMap.put("endPageBtnNo", endPageBtnNo);
		rMap.put("next", next);

		return rMap;
	}

	//챌린지게시판 리뷰리스트
	public Map<String, Object> getrList(int crtPage, int challengeNo,int userNo) {

		//////리스트 가져오기

		ReviewVo reviewVo = new ReviewVo();
		reviewVo.setChallengeNo(challengeNo);
		
		//인트로
		ChallengeVo challengeVo = new ChallengeVo();
		challengeVo.setChallengeNo(challengeNo);
		challengeVo.setUserNo(userNo);

		ChallengeVo intro = myDao.intro(challengeNo);

		List<ChallengeVo> certifyList = myDao.certifyList(challengeVo);

		ChallengeVo joinChk = myDao.joinChk(challengeVo);

		//페이지당 글갯수
		int listCnt = 20;

		//현재페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		//시작글번호
		int startRnum = (crtPage - 1) * listCnt + 1;

		//끝글번호
		int endRnum = (startRnum + listCnt) - 1;

		List<ReviewVo> rList = myDao.selectreview(startRnum, endRnum, challengeNo);
		//////////
		//페이징계산
		//////////

		//전체글갯수
		int totalrCnt = myDao.selectTotalrCnt(challengeNo);

		//페이지당버튼갯수
		int pageBtnCount = 5;

		//마지막버튼번호
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;

		//
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;

		//다음 화살표 유무
		boolean next = false;
		if ((listCnt * endPageBtnNo) < totalrCnt) {
			next = true;

		} else {
			endPageBtnNo = (int) Math.ceil(totalrCnt / (double) listCnt);
		}

		//이전 화살표 유무
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;
		}

		Map<String, Object> rMap = new HashMap<String, Object>();

		rMap.put("rList", rList);
		rMap.put("prev", prev);
		rMap.put("startPageBtnNo", startPageBtnNo);
		rMap.put("endPageBtnNo", endPageBtnNo);
		rMap.put("next", next);
		rMap.put("intro", intro);
		rMap.put("certifyList", certifyList);

		rMap.put("joinChk", joinChk);
		
		return rMap;
	}

//	//인트로
//	public Map<String, Object> intro(int challengeNo, int userNo) {
//
//		System.out.println(challengeNo);
//
//		System.out.println(userNo);
//
//
//		Map<String, Object> cMap = new HashMap<String, Object>();
//
//		cMap.put("intro", intro);
//		cMap.put("certifyList", certifyList);
//
//		cMap.put("joinChk", joinChk);
//
//		return cMap;
//	}

	//리뷰 쓰기(리뷰내용 + 상태업데이트 + 포인트지급)
	public String writeReview(MultipartFile file, ReviewVo reviewVo, double myResult, double allResult) {

		String saveDir = "C:\\javaStudy\\upload\\forNaDaeNa";

		// -원파일이름

		String orgName = file.getOriginalFilename();
		System.out.println("orgName:" + orgName);

		// 확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println("exName:" + exName);

		// -저장파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		System.out.println("saveName:" + saveName);

		// -파일패스 생성(
		String filePath = saveDir + "\\" + saveName;
		System.out.println("filePath:" + filePath);

		// 파일 사이즈
		long fileSize = file.getSize();
		System.out.println("fileSize:" + fileSize);

		// 파일업로드(복사)
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);

			if (bout != null) {
				bout.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println("=======");

		//reviewVo파일정보 추가
		reviewVo.setReviewImg(saveName);

		//리뷰저장
		myDao.writeReview(reviewVo);

		//챌린지 완료로 상태 변경
		myDao.update(reviewVo);

		//포인트계산
		//난이도, 참가비용 <-- reviewVo<--챌린지번호 유저번호
		ReviewVo rVo = myDao.selectReviewPoint(reviewVo);
		
		double pay = rVo.getPayment();
		int level = rVo.getClgLevel();
		int source = rVo.getChallengeNo();
		
		//챌린지번호 주고 전체 달성율 가져오기
		
		double avg = myDao.avg(source);
		double bonus = 0;
		double extrabonus = 0;
		
		if (myResult == 100 && level == 3) {
			bonus = pay * 0.05;
		} else if(myResult ==100 && level == 2) {
			bonus = pay * 0.03;
		} else if(myResult ==100 && level == 1) {
			bonus = pay * 0.02;
		} else if(myResult < 90) {
			bonus = 0;
			pay = pay*myResult/100;
		}
		
		if(avg == 100) {
			extrabonus = bonus*0.3;
		} else if(avg >= 90 && avg<100) {
			extrabonus = bonus*0.1;
		} else if(avg < 90) {
			extrabonus = 0;
		}
		double totalamount = pay + bonus + extrabonus;
		int i = (int)Math.round(totalamount);
		rVo.setAmount(i);
		
		//포인트 지급
		myDao.writeReviewPoint(rVo);
		
		System.out.println(rVo);
		//달성률 -->함수로계산
		//persent = makePersent()

		//난이도 참가비용 달성률 --> 받을 포인트 계산

		return filePath;
	}

	//리뷰 삭제
	public int removeReview(ReviewVo reviewVo) {
		System.out.println("MySERVICE >> del.review");

		return myDao.deleteReview(reviewVo);

	}

	//포인트 리스트(사용내역)
	public Map<String, Object> getpList(int crtPage, int userNo) {

		//////리스트 가져오기

		//페이지당 글갯수
		int listCnt = 7;

		//현재페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

		//시작글번호
		int startRnum = (crtPage - 1) * listCnt + 1;

		//끝글번호
		int endRnum = (startRnum + listCnt) - 1;
		//총포인트
		int sum = myDao.selectsum(userNo);
		List<ReviewVo> pList = myDao.selectPoint(startRnum, endRnum, userNo);

		//////////
		//페이징계산
		//////////

		//전체글갯수
		int totalpCnt = myDao.selectTotalpCnt(userNo);

		//페이지당버튼갯수
		int pageBtnCount = 5;

		//마지막버튼번호
		int endPageBtnNo = (int) Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;

		//
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;

		//다음 화살표 유무
		boolean next = false;
		if ((listCnt * endPageBtnNo) < totalpCnt) {
			next = true;

		} else {
			endPageBtnNo = (int) Math.ceil(totalpCnt / (double) listCnt);
		}

		//이전 화살표 유무
		boolean prev = false;
		if (startPageBtnNo != 1) {
			prev = true;
		}

		Map<String, Object> pMap = new HashMap<String, Object>();

		
		pMap.put("prev", prev);
		pMap.put("startPageBtnNo", startPageBtnNo);
		pMap.put("endPageBtnNo", endPageBtnNo);
		pMap.put("next", next);
		pMap.put("sum", sum);
		pMap.put("totalpCnt", totalpCnt);
		pMap.put("crtPage", crtPage);
		pMap.put("pList", pList);
		
		return pMap;
	}

	//유저정보
	public UserVo getUser(int userNo) {

		UserVo userVo = myDao.selectUser(userNo);

		return userVo;

	}

}