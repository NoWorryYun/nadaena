package com.nadaena.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public String saerch(@ModelAttribute String searchbar, Model model) {
		System.out.println("search");
		System.out.println(searchbar);
		
		Map<String, Object> searchList = searchService.searchList(searchbar);
		
		model.addAttribute("searchList",searchList);
		model.addAttribute("searchbar",searchbar);
		
		return "search/searchForm"; 
	}
	
	@RequestMapping(value="/search/searchForm2", method = {RequestMethod.GET, RequestMethod.POST})
	public String searchmain() {
		System.out.println("searchForm");
		
		return "search/searchForm";
	}
	
}
