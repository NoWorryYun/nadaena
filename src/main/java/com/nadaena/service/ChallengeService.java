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

import com.nadaena.dao.ChallengeDao;
import com.nadaena.vo.ChallengeVo;

@Service
public class ChallengeService {

	@Autowired
	private ChallengeDao challengeDao;
	
	
	//Intro 받아오기
	public Map<String, Object> intro(int challegeNo) {
		
		ChallengeVo intro = challengeDao.intro(challegeNo);
		
		List<ChallengeVo> certifyList = challengeDao.certifyList(challegeNo);
		
		Map<String, Object> cMap = new HashMap<String, Object>();
		
		cMap.put("intro", intro);
		cMap.put("certifyList", certifyList);
		
		return cMap;
	}
	
	//챌린지 참여하기(유저)
	public int joinChallenge(ChallengeVo challengeVo) {
		
		return challengeDao.joinChallenge(challengeVo);
	}
	
	//챌린지 참여하기(유저)
	public int joinChallengeHeader(ChallengeVo challengeVo) {
		
		return challengeDao.joinChallengeHeader(challengeVo);
	}
	
	//챌린지 만들기
	
	//챌린지 대표이미지 받아오기
	
	public Map<String, Object> imgUpload(MultipartFile[] file){
		
		
			System.out.println("fileService > save()");
			System.out.println(file[0].getOriginalFilename());
		
			String saveDir = "C:\\javaStudy\\upload";
			
			//파일 정보(DB저장) 추출 저장
		
			//오리지날파일명, 저장경로+파일(랜덤)명, 파일사이즈
			String orgName = file[0].getOriginalFilename();
		
			//확장자(.jpg)
			String exName = orgName.substring(orgName.lastIndexOf("."));
			System.out.println(exName);
			
			//저장파일명(현재시간 + 이름 난수)
			String saveName =  System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			
			//파일경로(디렉토리+저장파일명)
			String filePath = saveDir + "\\" + saveName;
			
			//파일 사이즈
			//long fileSize = file[0].getSize();
			
			//Vo로 묶기
			Map<String, Object> uploadfile = new HashMap<String,Object>();
			uploadfile.put("path", filePath);
			
			// (1)Dao DB에 저장
			
			// (2)파일(하드디스크) 저장
			try {
				byte[] fileData = file[0].getBytes();
				OutputStream os = new FileOutputStream(filePath);
				BufferedOutputStream bos = new BufferedOutputStream(os);
				
				os.write(fileData);
				bos.close();
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		
		return uploadfile;
	}
	
}
