package com.nadaena.dao;

import java.util.List;

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

	public int selectTotalCnt(SearchVo searchVo) {
		System.out.println("searchDao>selectTotalCnt()");

		int totalCnt = sqlSession.selectOne("Search.selectTotalCnt", searchVo);

		return totalCnt;
	}


}
