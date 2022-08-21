package com.nadaena.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.MCDao;
import com.nadaena.vo.MCVo;
import com.nadaena.vo.MRVo;

@Service
public class MCService {
	
	@Autowired
	MCDao mcDao;
	
	//참가+종료 리스트(전체)
	public Map<String, Object> getmcList() {
		System.out.println("C > getmcList");
		
		List<MCVo> mcList = mcDao.selectList();
		List<MCVo> mcList2 = mcDao.selectList2();
		
		Map<String, Object> mcMap = new HashMap<String, Object>();
		
		mcMap.put("mcList", mcList);
		mcMap.put("mcList2", mcList2);
		
		return mcMap;
	}
	
	//참가+종료 리스트(성공)
	public Map<String, Object> getmcList2() {
		System.out.println("C > getmcList2");
		
		List<MCVo> mcList = mcDao.selectList();
		List<MCVo> mcList3 = mcDao.selectList3();
		
		Map<String, Object> mcMap = new HashMap<String, Object>();
		
		mcMap.put("mcList", mcList);
		mcMap.put("mcList3", mcList3);
		
		return mcMap;
	}
	
	//참가+종료 리스트(실패)
	public Map<String, Object> getmcList3() {
		System.out.println("C > getmcList3");
		
		List<MCVo> mcList = mcDao.selectList();
		List<MCVo> mcList4 = mcDao.selectList4();
		
		Map<String, Object> mcMap = new HashMap<String, Object>();
		
		mcMap.put("mcList", mcList);
		mcMap.put("mcList4", mcList4);
		
		return mcMap;
	}
	
	//리뷰리스트(리스트만)
	public List<MRVo> getmrList() {
		System.out.println("MRS > getmcList()");
		
		List<MRVo> mrList = mcDao.selectreviewList();
		
		return mrList;
		
	} 
	
	//리뷰 쓰기
	public int writeReview(MRVo mrVo, MCVo mcVo) {
		System.out.println("bService>b.write()");
		
		mcDao.writeReview(mrVo);
		mcDao.update(mcVo);
		
		return 1;
	}
	
	//리뷰 삭제
	public int removeReview(MRVo mrVo) {
		System.out.println("MCSERVICE >> del.review");
		
		return mcDao.deleteReview(mrVo);
		
	}
	
}
