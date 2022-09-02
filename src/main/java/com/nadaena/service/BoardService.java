package com.nadaena.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.BoardDao;
import com.nadaena.vo.BoardVo;
import com.nadaena.vo.ChallengeVo;

@Service
public class BoardService {

	@Autowired
	BoardDao boardDao;	
	
	public int write(BoardVo boardVo) {
		
		return boardDao.write(boardVo);
		
	}
	
	//인트로
	public Map<String, Object> intro(int challengeNo, int userNo) {
			
			System.out.println(challengeNo);
			
			System.out.println(userNo);
			
			ChallengeVo challengeVo = new ChallengeVo();
			challengeVo.setChallengeNo(challengeNo);
			challengeVo.setUserNo(userNo);
			
			ChallengeVo intro = boardDao.intro(challengeNo);
			
			List<ChallengeVo> certifyList = boardDao.certifyList(challengeVo);
			
			ChallengeVo joinChk = boardDao.joinChk(challengeVo);
			
			Map<String, Object> cMap = new HashMap<String, Object>();
			
			cMap.put("intro", intro);
			cMap.put("certifyList", certifyList);
			
			cMap.put("joinChk", joinChk);
			
			return cMap;
		}
}
