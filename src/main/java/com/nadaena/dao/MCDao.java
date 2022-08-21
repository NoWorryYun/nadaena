package com.nadaena.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.MCVo;
import com.nadaena.vo.MRVo;
import com.nadaena.vo.PointVo;

@Repository
public class MCDao {
	 
	@Autowired
	private SqlSession sqlSession;
	
	//참가 리스트
	public List<MCVo> selectList() {
		System.out.println("MCDao > selectList()");
		
		List<MCVo> mcList = sqlSession.selectList("myChallenge.selectList");
		System.out.println(mcList);
		
		return mcList;
	}
	
	//종료 리스트+페이징
	public List<MCVo> selectList12(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MCVo> mcList2 = sqlSession.selectList("myChallenge.selectList12", map);
		
		return mcList2;
	}
	
	//종료 리스트(성공)
	public List<MCVo> selectList13(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MCVo> mcList3 = sqlSession.selectList("myChallenge.selectList13", map);
		
		return mcList3;
	}
	
	//종료 리스트(성공)
	public List<MCVo> selectList14(int startRnum, int endRnum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		
		List<MCVo> mcList4 = sqlSession.selectList("myChallenge.selectList14", map);
		
		return mcList4;
	}
	
	//전체글 갯수
	public int selectTotalCnt() {
		
		int totalCnt = sqlSession.selectOne("myChallenge.selectTotalCnt");
		
		return totalCnt;
	}
	
	//성공글 갯수
	public int selectTotalCnt2() {
		
		int totalCnt2 = sqlSession.selectOne("myChallenge.selectTotalCnt2");
		
		return totalCnt2;
	}
	
	//전체글 갯수
	public int selectTotalCnt3() {
		
		int totalCnt3 = sqlSession.selectOne("myChallenge.selectTotalCnt3");
		
		return totalCnt3;
	}
	
	
	/*
	 * //종료 리스트(실패) public List<MCVo> selectList4() { System.out.println("MCDao > selectList4()");
	 * 
	 * List<MCVo> mcList4 = sqlSession.selectList("myChallenge.selectList4"); System.out.println(mcList4);
	 * 
	 * return mcList4; }
	 */
	
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
	
	//상태업데이트
	public int update(MCVo mcVo) {
		
		return sqlSession.update("myChallenge.updateState",mcVo);
	}
	
	
	//리뷰삭제
	public int deleteReview(MRVo mrVo) {
		System.out.println("MCDAO >>> DEL.review");
		
		return sqlSession.delete("myChallenge.deleteReview", mrVo);
		
	}
	
	//포인트 내역
	public List<PointVo> selectPoint() {
		System.out.println("pDao > selectpoint()");
		
		List<PointVo> pList = sqlSession.selectList("myChallenge.selectPoint");
		System.out.println(pList);
		
		return pList;
	}
	
}
