package com.nadaena.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

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
		
			System.out.println("ChallengeSerivce > makeChallenge()");
		
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
			System.out.println("서비스 레벨"+clgLevel);
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
			
			System.out.println(clgVo);
			
			// Dao DB에 저장
			challengeDao.makeChallenge(clgVo);
			System.out.println("보 겟레벨:"+clgVo.getClgLevel());
			
			// 챌린지 번호 뽑기
			int challengeNo = clgVo.getChallengeNo();
			
			ChallengeVo clgjoinVo = new ChallengeVo(challengeNo, userNo, payment);
			
			// 챌린지 참가(방장)
			challengeDao.joinChallengeHeader(clgjoinVo);

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
	public Map<String, Object> intro(int challengeNo, HttpServletRequest request) {
		
		ChallengeVo clgVo= (ChallengeVo)request.getAttribute("authUser");
		
		int userNo = 1;
		
		ChallengeVo challengeVo = new ChallengeVo(challengeNo, userNo);
		
		System.out.println("challengeVo : "+ challengeVo);
		
		ChallengeVo intro = challengeDao.intro(challengeNo);
		
		List<ChallengeVo> certifyList = challengeDao.certifyList(challengeNo);
		
		int joinChk = challengeDao.joinChk(challengeVo);
		
		System.out.println("joinChk : " + joinChk);
		
		Map<String, Object> cMap = new HashMap<String, Object>();
		
		cMap.put("intro", intro);
		cMap.put("certifyList", certifyList);
		cMap.put("joinChk", joinChk);
		return cMap;
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
	
	
	//챌린지 참여하기(유저)
	public int joinChallenge(ChallengeVo challengeVo) {
		
		return challengeDao.joinChallenge(challengeVo);
	}
	

}
