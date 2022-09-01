package com.nadaena.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.CommunityDao;
import com.nadaena.vo.BoardVo;
import com.nadaena.vo.CommentVo;

@Service
public class CommunityService {
	
	@Autowired
	private CommunityDao communityDao;
	
	//커뮤니티 리스트
	public Map<String, Object> CommunityList(BoardVo boardVo){
		//System.out.println("CommunityService > CommunityList");
		
		List<BoardVo> CommunityList = communityDao.communityList(boardVo);

		List<BoardVo> comentList = communityDao.comentList(boardVo);
		System.out.println("service  " +boardVo);
		Map<String, Object> cuMap = new HashMap<String, Object>();
		
		cuMap.put("CommunityList", CommunityList);
		cuMap.put("comentList", comentList);
		
		System.out.println("CommunityService > CommunityList "+cuMap);

		return cuMap;
	}
	

	public Map<String, Object> comuInfo(BoardVo boardVo){
		System.out.println("CommunityService > comuInfo");
		
		BoardVo boardInfo = communityDao.boardInfo(boardVo);
		List<CommentVo> commentList = communityDao.comment(boardVo);
		
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		
		boardMap.put("boardInfo", boardInfo);
		boardMap.put("commentList", commentList);
		
		return boardMap;
	}
	
}
