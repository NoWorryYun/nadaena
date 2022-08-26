package com.nadaena.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.MainTitleVo;
import com.nadaena.vo.SearchVo;

@Repository
public class SearchDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//검색입력
	public List<MainTitleVo> searchList(SearchVo searchVo) {
		System.out.println("SearchDao > searchList()");
		
		List<MainTitleVo> searchList = sqlSession.selectList("Search.searchList", searchVo);
		
		return searchList;
	}
	
	public List<MainTitleVo> selectList(int startRnum, int endRnum){
		System.out.println("BoardDao>selectList4()");
		
		Map<String, Integer> cMap = new HashMap<String, Integer>();
		cMap.put("startRnum", startRnum);
		cMap.put("endRnum", endRnum);
		
		System.out.println(cMap);
		List<MainTitleVo> boardList = sqlSession.selectList("Search.searchList", cMap);
		System.out.println(boardList);
		
		return boardList;
	}

	
	public int selectTotalCnt() {
		System.out.println("searchDao>selectTotalCnt()");
		
		int totalCnt = sqlSession.selectOne("Search.searchList");
		
		return totalCnt;
	}

}
