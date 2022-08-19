package com.nadaena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.SearchService;
import com.nadaena.vo.MainTitleVo;

@Controller
public class SearchController {
	
	@Autowired
	SearchService searchService;
	//검색입력
	@RequestMapping(value="/search/searchForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String saerch(Model model) {
		System.out.println("search");
		
		List<MainTitleVo> searchList = searchService.searchList();
		
		model.addAttribute(searchList);
		
		return "Request:search/searchForm"; 
	}
	
	@RequestMapping(value="/search/searchMain", method = {RequestMethod.GET, RequestMethod.POST})
	public String searchmain() {
		System.out.println("searchmain");
		
		return "search/searchMain";
	}
	
}
