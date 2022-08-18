package com.nadaena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.SearchDao;
import com.nadaena.vo.MainTitleVo;
@Service
public class SearchService {
	
	@Autowired
	private SearchDao searchDao ;
	
	//검색입력
	public List<MainTitleVo> searchList() {
		System.out.println("SearchService > searchList()");
		
		List<MainTitleVo> searchList = searchDao.searchList();
		
		return searchList;
		
	}

}
