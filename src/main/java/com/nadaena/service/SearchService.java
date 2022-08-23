package com.nadaena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.SearchDao;
import com.nadaena.vo.MainTitleVo;
import com.nadaena.vo.SearchVo;
@Service
public class SearchService {
	
	@Autowired
	private SearchDao searchDao ;
	
	//검색입력
	public List<MainTitleVo> searchList(SearchVo searchVo) {
		System.out.println("SearchService > searchList()");
		/* System.out.println(searchbar); */
		
		
		List<MainTitleVo> searchList = searchDao.searchList(searchVo);
			
		//System.out.println("SearchService >"+searchbar);
		
		//cMap.put("eventList", searchList);
		
		return searchList;
		
	}

}
