package com.nadaena.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.ChallengeDao;
import com.nadaena.vo.ChallengeSubVo;
import com.nadaena.vo.ChallengeVo;

@Service
public class ChallengeService {

	@Autowired
	private ChallengeDao challengeDao;
	
	//챌린지 만들기
	
	public int makeChallenge(ChallengeVo challengeVo){
		
			System.out.println("챌린지를 만들었습니다.(Service)");
		
			String saveDir = "C:\\javaStudy\\upload\\forNaDaeNa";
			
			//파일 정보(DB저장) 추출 저장
		
			//오리지날파일명, 저장경로+파일(랜덤)명, 파일사이즈
			String orgName = challengeVo.getImgs().getOriginalFilename();
		
			//확장자(.jpg)
			String exName = orgName.substring(orgName.lastIndexOf("."));
			
			//저장파일명(현재시간 + 이름 난수)
			String saveName =  System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			
			//파일경로(디렉토리+저장파일명)
			String filePath = saveDir + "\\" + saveName;
			
			//파일 사이즈
			//long fileSize = file[0].getSize();
			
			System.out.println("challengeVo: "+challengeVo);
			//값 꺼내기
			int interestNo = challengeVo.getInterestNo();
			String img = saveName;
			String clgTitle = challengeVo.getClgTitle();
			int recruitment = challengeVo.getRecruitment();
			int period = challengeVo.getPeriod();
			int certify = challengeVo.getCertify();
			int minigame = challengeVo.getMinigame();
			int upload = challengeVo.getUpload();
			int certifyDay = challengeVo.getCertifyDay();
			String content = challengeVo.getContent();
			String color = challengeVo.getColor();
			String tag1 = challengeVo.getTag1();
			String tag2 = challengeVo.getTag2();
			String tag3 = challengeVo.getTag3();
			String tag4 = challengeVo.getTag4();
			String tag5 = challengeVo.getTag5();
			int clgLevel = challengeVo.getClgLevel();
			int payment = challengeVo.getPayment();
			int userNo = challengeVo.getUserNo();
			//Vo로 묶기
			ChallengeVo clgVo = new ChallengeVo(interestNo,
												clgTitle,
												img,
												recruitment,
												period,
												certify,
												minigame,
												upload,
												certifyDay,
												content,
												color,
												tag1,
												tag2,
												tag3,
												tag4,
												tag5,
												clgLevel);
			
			// Dao DB에 저장
			challengeDao.makeChallenge(clgVo);
			
			// 챌린지 번호 뽑기
			int challengeNo = clgVo.getChallengeNo();
			System.out.println("challengeNo : "+challengeNo);
			ChallengeVo clgjoinVo = new ChallengeVo(challengeNo, userNo, payment);
			
			// 챌린지 참가(방장)
			challengeDao.joinChallengeHeader(clgjoinVo);
			// 챌린지 금액 지출
			challengeDao.joinPayHeader(clgjoinVo);
			
			// 파일 저장
			try {
				byte[] fileData = challengeVo.getImgs().getBytes();
				OutputStream os = new FileOutputStream(filePath);
				BufferedOutputStream bos = new BufferedOutputStream(os);
				
				os.write(fileData);
				bos.close();
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		return challengeNo;
	}
	
	//챌린지 과제 만들기
	public int makeClgSub(List<ChallengeSubVo> upsList) {

		return challengeDao.makeClgSub(upsList);
	}
	
	
	//Intro 받아오기
	public Map<String, Object> intro(int challengeNo, int userNo) {
		
		System.out.println(challengeNo);
		
		System.out.println(userNo);
		
		ChallengeVo challengeVo = new ChallengeVo();
		challengeVo.setChallengeNo(challengeNo);
		challengeVo.setUserNo(userNo);
		
		ChallengeVo intro = challengeDao.intro(challengeNo);
		
		List<ChallengeVo> certifyList = challengeDao.certifyList(challengeVo);
		
		ChallengeVo joinChk = challengeDao.joinChk(challengeVo);
		
		Map<String, Object> cMap = new HashMap<String, Object>();
		
		cMap.put("intro", intro);
		cMap.put("certifyList", certifyList);
		
		cMap.put("joinChk", joinChk);
		
		return cMap;
	}
	
	//챌린지 참여 확인하기
	public int joinChk(ChallengeVo challengeVo) {
		
		ChallengeVo clgVo = challengeDao.joinChk(challengeVo);
		
		int count;
		if(clgVo != null) {
			count = clgVo.getUserCount();
		System.out.println("joinChk : " + count);
		} else {
			count = 0;
		}
		return count;
	}
	
	//북마크 확인
	public int bookMark(int challengeNo) {
		
		return challengeDao.bookMark(challengeNo);
	}

	//북마크 설정
	public int chkBM(ChallengeVo challengeVo) {
		
		return challengeDao.chkBM(challengeVo);
	}
	
	//북마크 해제
	public int unChkBm(ChallengeVo challengeVo) {
		
		return challengeDao.unChkBM(challengeVo);
	}
	
	
	//챌린지 참여/탈퇴하기(유저)
	public int joinChallenge(ChallengeVo challengeVo) {
		
		System.out.println("challengeVo = "+ challengeVo);
		
		//챌린지 참여/탈퇴/삭제 번호 확인
		int joinchk = challengeVo.getClgInOutChk();
		System.out.println("joinchk : " + joinchk);
		
		//챌린지 번호 추출
		int challengeNo = challengeVo.getChallengeNo();
		//유저 넘버 추출
		int userNo = challengeVo.getUserNo();
		//유저 참여 금액 추출
		int pay = challengeVo.getPayment();
		
		//유저 참여 금액 확인
		int payment = challengeDao.userPay(challengeVo);
		
		System.out.println("Service challengeNo = "+challengeNo);
		System.out.println("Service UserNo = "+ userNo);
		System.out.println("Service payment = "+ payment);
		
		//참여용 금액차감 Vo 생성
		ChallengeVo chVo = new ChallengeVo();
		chVo.setChallengeNo(challengeNo);
		chVo.setUserNo(userNo);
		chVo.setAmount(pay);
		
		System.out.println("chVo : "+ chVo);
		
		//탈퇴용 금액환급 Vo 생성
		ChallengeVo clgVo = new ChallengeVo();
		clgVo.setChallengeNo(challengeNo);
		clgVo.setUserNo(userNo);
		clgVo.setAmount(payment);
		
		System.out.println("clgVo : " + clgVo);
		
		//방에 포함되어있는 유저리스트
		List<Integer> userList = challengeDao.clgUserList(challengeNo);
		
		if(joinchk == 1) {
			//참여 (일반유저)
			challengeDao.joinChallenge(challengeVo);
			//참여금 지불
			challengeDao.joinPay(chVo);
		} else if(joinchk == 2){
			//참여 탈퇴(일반유저)
			challengeDao.joinCancel(challengeVo);
			//참여금 환급
			challengeDao.joinPayBack(clgVo);
		} else {
			//유저별 참여금 환급
			for(int i = 0 ; i < userList.size() ; i++) {
				ChallengeVo destroyClgVo = new ChallengeVo();
				destroyClgVo.setChallengeNo(challengeNo);
				destroyClgVo.setUserNo(userList.get(i));

				//유저별 참여 금액 확인
				int userPay = challengeDao.userPay(destroyClgVo);
				
				destroyClgVo.setAmount(userPay);
				
				//환급하기
				challengeDao.joinPayBack(destroyClgVo);
				
				System.out.println(userList.get(i)+"번 유저의 금액 "+ userPay +"원이 반환되었습니다.");
			}
			
			//챌린지 인원 내보내기
			for(int i = 0 ; i < userList.size(); i++) {
				ChallengeVo destroyClgVo = new ChallengeVo();
				destroyClgVo.setChallengeNo(challengeNo);
				destroyClgVo.setUserNo(userList.get(i));
				challengeDao.joinCancel(destroyClgVo);
				
				System.out.println(userList.get(i)+"번 유저를 내보내는중");
			}
			
			//챌린지 정보 삭제
			//챌린지 인증 여부 확인
			int ClguUerUploadCheck = challengeDao.ClguUerUploadCheck(challengeNo);
			
			//챌린지 북바크 여부 확인
			int chkBookmark = challengeDao.chkBookmark(challengeNo);
			
			if(ClguUerUploadCheck > 0) {
				challengeDao.deleteClgUserUpload(challengeNo);
				System.out.println(challengeNo +"번 챌린지 유저 인증 삭제");
			}
			
			if(chkBookmark > 0) {
				challengeDao.deleteBookMark(challengeNo);
				System.out.println(challengeNo +"번 챌린지 북마크를 삭제");
			}
			
			challengeDao.deleteClgUpload(challengeNo);
			System.out.println(challengeNo+"번 챌린지 인증 삭제");
			challengeDao.deleteClg(challengeNo);
			System.out.println(challengeNo+"번 챌린지 삭제");
		}
		return 1;
	}
	
	//날짜 확인하기
	public List<ChallengeVo> dateChk(int challengeNo, int userNo) throws ParseException {
		System.out.println("인증 날짜를 계산합니다.");
		
		ChallengeVo challengeVo = challengeDao.intro(challengeNo);
		
		String recRD = challengeVo.getRecRD();
		int period = challengeVo.getPeriod();
		int upload = challengeVo.getUpload();

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		Date calDate = format.parse(recRD);
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(calDate);

		List<ChallengeVo> dateChk = new ArrayList<ChallengeVo>();
		
		//챌린지 기간일수 만큼 반복
		for(int i = 0 ; i < (period*7) ; i++) {
			cal.add(Calendar.DATE, + 1);
			
			String certifieddate = format.format(cal.getTime());
			System.out.println("certifieddate : " + certifieddate);
		
			ChallengeVo clgVo = new ChallengeVo();
			
			//숙제 조회를 위한 vo
			clgVo.setCertifieddate(certifieddate);
			clgVo.setUserNo(userNo);
			clgVo.setChallengeNo(challengeNo);
			
			
			//숙제 가져오기
			List<ChallengeVo> calendarInfo = challengeDao.calender(clgVo);
			
			//가져온 숙제를 전체 리스트에 추가하기
			for(int j = 0 ; j < calendarInfo.size(); j++) {	
				ChallengeVo asd= calendarInfo.get(j);
				asd.setToDay(certifieddate);
				
				dateChk.add(asd);
			}
			
		}	
		System.out.println(dateChk);
		
		
		return dateChk;
	}
	
	//진행도 계산하기(개인)
	public double calProgress(int challengeNo, int userNo) throws ParseException {
		
		System.out.println("개인 진행도를 계산합니다.");
		
		int count = 0;
		
		ChallengeVo challengeVo = challengeDao.intro(challengeNo);
		
		String recRDM = challengeVo.getRecRDM();
		int period = challengeVo.getPeriod();
		int upload = challengeVo.getUpload();

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		Date calDate = format.parse(recRDM);
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(calDate);

		for(int i = 0 ; i < (period*7) ; i++) {
			cal.add(Calendar.DATE, + 1);
			String certifieddate = format.format(cal.getTime());
			
			ChallengeVo clgVo = new ChallengeVo();
			clgVo.setCertifieddate(certifieddate);
			clgVo.setUserNo(userNo);
			clgVo.setChallengeNo(challengeNo);

			int chkProgress = challengeDao.chkProgress(clgVo);
			if(chkProgress == upload) {
				count += 1;
				
			} 
		}
		double result = (double)Math.round(((double)count/(period*7))*10000)/100;
		return result;
		
	}
	
	//진행도 계산하기(챌린지)
	public double calAllProgress(int challengeNo) throws ParseException {
		
		System.out.println("챌린지 진행도를 계산합니다.");
		
		int count = 0;
		
		ChallengeVo challengeVo = challengeDao.intro(challengeNo);
		
		String recRDM = challengeVo.getRecRDM();
		int period = challengeVo.getPeriod();
		int upload = challengeVo.getUpload();
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		Date calDate = format.parse(recRDM);
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(calDate);
		
		List<Integer> clgUserList = challengeDao.clgUserList(challengeNo);
		
		int size = clgUserList.size();
		
		System.out.println("사이즈 : " + clgUserList.size());
		
			for(int i = 0 ; i < (period*7) ; i++) {
			
				cal.add(Calendar.DATE, + 1);
				String certifieddate = format.format(cal.getTime());
				for(int j = 0 ; j < size ; j++) {
					ChallengeVo clgVo = new ChallengeVo();
					clgVo.setCertifieddate(certifieddate);
					clgVo.setChallengeNo(challengeNo);
					clgVo.setUserNo(clgUserList.get(j));
					System.out.println("userNo : " + clgUserList.get(j));
					int chkProgress = challengeDao.chkProgress(clgVo);
					System.out.println("챌린지 chkProgress : "+ chkProgress);
					System.out.println(clgVo);
					if(chkProgress == upload) {
						count += 1;
						System.out.println(count);
					} 
				}
			}	
		
		System.out.println("챌린지 count : " + count);
		double result = (double)Math.round(((double)count/(period*7*size))*10000)/100;
		
		System.out.println("챌린지 진행도 result : " + result);
		
		return result;
		
	}
	
	//인증게시판 페이징
	public Map<String, Object> certifyList(int crtPage, int challengeNo){
		System.out.println("certifyList를 불러옵니다.");
		System.out.println(crtPage);
		
		int listCnt = 16;
		
		crtPage = (crtPage>0) ? crtPage : (crtPage=1);
		
		int startRnum = (crtPage - 1) * listCnt+1;
		
		int endRnum = (startRnum + listCnt) - 1;
		
		List<ChallengeVo> certifyIMGList = challengeDao.certifyIMGList(startRnum, endRnum, challengeNo);
		System.out.println("cert : "+certifyIMGList);
		int totalCnt = challengeDao.selectTotatlCnt(challengeNo);
		
		int pageBtnCount = 5;
		
		int endPageBtnNo = (int)Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount;
		
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;
		
		boolean next = false;
		
		if((listCnt*endPageBtnNo) < totalCnt) {
			next=true;
		} else {
			endPageBtnNo = (int)Math.ceil(totalCnt/(double)listCnt);
		}

		boolean prev = false;
		if(startPageBtnNo != 1) {
			prev = true;
		}
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		pMap.put("certifyIMGList", certifyIMGList);
		pMap.put("prev", prev);
		pMap.put("startPageBtnNo", startPageBtnNo);
		pMap.put("endPageBtnNo", endPageBtnNo);
		pMap.put("next", next);
		System.out.println("==========================pMap============================");
		System.out.println(pMap);
		
		return pMap;
	}
	
	
	
	//인증하기(파일)
	public int certifyUpload(ChallengeVo challengeVo, int userNo, int ChallengeNo) {
		System.out.println("인증중입니다. (Service)");
		System.out.println(challengeVo.getImgs().getOriginalFilename());
		
		String saveDir = "C:\\javaStudy\\upload\\forNaDaeNa";
		
		//인증여부확인
		int certifyChk = challengeVo.getCertifyChk();
		
		//파일 정보(DB저장) 추출 저장
	
		//오리지날파일명, 저장경로+파일(랜덤)명, 파일사이즈
		String orgName = challengeVo.getImgs().getOriginalFilename();
	
		//확장자(.jpg)
		String exName = orgName.substring(orgName.lastIndexOf("."));
		
		//저장파일명(현재시간 + 이름 난수)
		String saveName =  System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		
		//파일경로(디렉토리+저장파일명)
		String filePath = saveDir + "\\" + saveName;
		
		//필요 정보 추출
		int certifyNo = challengeVo.getCertifyNo();
		System.out.println("certifyNo : "+certifyNo);
		int certifiedNo = challengeVo.getCertifiedNo();
		System.out.println("certifiedNo" + certifiedNo);

		//Vo로 묶기
		ChallengeVo clgVo = new ChallengeVo();
		
		clgVo.setImg(saveName);
		clgVo.setUserNo(userNo);
		clgVo.setCertifyNo(certifyNo);
		clgVo.setCertifiedNo(certifiedNo);
		
		System.out.println(clgVo);
	
		int result;
		// (1)Dao DB에 저장
		
		if(certifyChk == 1) {
			//인증저장
			result = challengeDao.certifiedSubmit(clgVo);
			System.out.println("인증저장완료");
		} else {
			//인증수정
			result = challengeDao.certifiedUpdate(clgVo);
			System.out.println("인증수정완료");
		}
		
		// (2)파일(하드디스크) 저장
		try {
			byte[] fileData = challengeVo.getImgs().getBytes();
			System.out.println("fileData : " + fileData);
			OutputStream os = new FileOutputStream(filePath);
			BufferedOutputStream bos = new BufferedOutputStream(os);
			
			os.write(fileData);
			bos.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	//유저 참여갯수 확인
	public int joinCount(int userNo) {
		
		int count = challengeDao.joinCount(userNo);
		System.out.println("Service joincount : " + count);
		return count;
	}
	
	//유저 개인 포인트 확인
	public int userAmount(int userNo) {
		
		return challengeDao.userAmount(userNo);
	
	}
	
	//챌린지 존재 유무 확인
	public int clgChk(int challegeNo) {
		
		return challengeDao.clgChk(challegeNo);
		
	}
	
}
