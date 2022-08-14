package com.nadaena.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.WriteChallengeDao;

@Service
public class WriteChallengeService {

	@Autowired
	private WriteChallengeDao challengeDao;
	
}
