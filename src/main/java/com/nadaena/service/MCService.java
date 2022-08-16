package com.nadaena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.MCDao;
import com.nadaena.vo.MCVo;

@Service
public class MCService {
	
	@Autowired
	MCDao mcDao;
	 
	//리스트(리스트만)
	public List<MCVo> getmcList() {
		System.out.println("MCS > getmcList()");
		
		List<MCVo> mcList = mcDao.selectList();
		
		return mcList;
		
	} 
}
