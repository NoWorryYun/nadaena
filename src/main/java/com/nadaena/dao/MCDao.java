package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.MCVo;
import com.nadaena.vo.MRVo;

@Repository
public class MCDao {
	 
	@Autowired
	SqlSession sqlSession;
	
	//참가 리스트
	public List<MCVo> selectList() {
		System.out.println("MCDao > selectList()");
		
		List<MCVo> mcList = sqlSession.selectList("myChallenge.selectList");
		System.out.println(mcList);
		
		return mcList;
	}
	
	//종료 리스트
	public List<MCVo> selectList2() {
		System.out.println("MCDao > selectList2()");
		
		List<MCVo> mcList2 = sqlSession.selectList("myChallenge.selectList2");
		System.out.println(mcList2);
		
		return mcList2;
	}
	//리뷰 불러오기
	public List<MRVo> selectreviewList() {
		System.out.println("MRDao > selectreviewList()");
		
		List<MRVo> mrList = sqlSession.selectList("myChallenge.selectreviewList");
		System.out.println(mrList);
		
		return mrList;
	}
	
	//리뷰쓰기
	public int writeReview(MRVo mrVo) {
		System.out.println("BoardDao>write()");
		
		int count = sqlSession.insert("myChallenge.insertReview", mrVo);
		
		return count;
	}
	
	//리뷰삭제
	public int deleteReview(MRVo mrVo) {
		System.out.println("MCDAO >>> DEL.review");
		
		return sqlSession.delete("myChallenge.deleteReview", mrVo);
		
	}
	
}
