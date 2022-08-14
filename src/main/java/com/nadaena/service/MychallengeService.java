package com.nadaena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.MychallengeDao;
import com.nadaena.vo.MychallengeVo;

@Service
public class MychallengeService {
	
	//필드
	@Autowired
	private MychallengeDao mychallengeDao;
	
	//리스트(리스트만)
	public List<MychallengeVo> getmycList() {
		System.out.println("bService > getbList()");
		
		List<MychallengeVo> mycList = mychallengeDao.selectList();
		
		return mycList;
		
	}
	 
	
	
	
	
	
	
	
}
