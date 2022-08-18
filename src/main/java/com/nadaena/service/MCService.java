package com.nadaena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.MCDao;
import com.nadaena.vo.MCVo;
import com.nadaena.vo.MRVo;

@Service
public class MCService {
	
	@Autowired
	MCDao mcDao;
	 
	//참가 리스트
	public List<MCVo> getmcList() {
		System.out.println("MCS > getmcList()");
		
		List<MCVo> mcList = mcDao.selectList();
		
		return mcList;
		
	} 
	
	//종료 리스트
	public List<MCVo> getmcList2() {
		System.out.println("MCS > getmcList2()");
		
		List<MCVo> mcList2 = mcDao.selectList2();
		
		return mcList2;
		
	} 
		
	//리뷰리스트(리스트만)
	public List<MRVo> getmrList() {
		System.out.println("MRS > getmcList()");
		
		List<MRVo> mrList = mcDao.selectreviewList();
		
		return mrList;
		
	} 
	
	//리뷰 쓰기
	public int writeReview(MRVo mrVo) {
		System.out.println("bService>b.write()");
		
		return mcDao.writeReview(mrVo);
	}
	
	//리뷰 삭제
	public int removeReview(MRVo mrVo) {
		System.out.println("MCSERVICE >> del.review");
		
		return mcDao.deleteReview(mrVo);
		
	}
	
}
