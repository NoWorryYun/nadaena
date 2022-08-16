package com.nadaena.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.ChallengeDao;

@Service
public class ChallengeService {

	@Autowired
	private ChallengeDao challengeDao;
	
	public String introContent(int challengeNo) {
		
		String result;
		
		result = challengeDao.introContent(challengeNo);
		
		return result;
		
	}
	
}
