package com.nadaena.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
