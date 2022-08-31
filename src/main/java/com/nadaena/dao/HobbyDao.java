package com.nadaena.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.HobbyVo;
import com.nadaena.vo.InterestVo;

@Repository
public class HobbyDao {
	@Autowired
	private SqlSession sqlSession;
	
	 
	//회원 관심분야 저장
	public int insert(HobbyVo hobbyVo) {
		System.out.println("hhobby insert");
		int count = sqlSession.insert("hobby.insertHobby",hobbyVo);
		return  count;
	} 
	//관심문야 삭제
	public int delete(int userNo) {
		return this.sqlSession.delete("hobby.delete",userNo);
	}
	
	//회원 관심분야 로드
	public List<HobbyVo> myhobby(int userNo){
		List<HobbyVo> list = this.sqlSession.selectList("hobby.selectlist",userNo);
		
		return list;
	}
	//관심분야 로드
	public List<InterestVo> hobbyList(){
		List<InterestVo> list =  this.sqlSession.selectList("interest.select_list");
		return list;
	}
}
