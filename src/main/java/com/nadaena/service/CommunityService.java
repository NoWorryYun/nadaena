package com.nadaena.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.CommunityDao;
import com.nadaena.vo.BoardVo;

@Service
public class CommunityService {
	
	@Autowired
	private CommunityDao communityDao;
	
	//커뮤니티 리스트
	public Map<String, Object> CommunityList(BoardVo boardVo){
		//System.out.println("CommunityService > CommunityList");
		
		List<BoardVo> CommunityList = communityDao.communityList(boardVo);
		System.out.println("service" +boardVo);
		List<BoardVo> comentList = communityDao.comentList();
		
		Map<String, Object> cuMap = new HashMap<String, Object>();
		
		cuMap.put("CommunityList", CommunityList);
		cuMap.put("comentList", comentList);
		
		System.out.println(cuMap); 
		return cuMap;
	}

}
