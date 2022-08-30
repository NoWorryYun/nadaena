package com.nadaena.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.BoardVo;

@Repository
public class BoardDao {

	@Autowired
	private SqlSession sqlSession;	
	
	//게시판 글쓰기
	public int write(BoardVo boardVo) {
		
		int count = sqlSession.insert("board.insertBoard", boardVo);
		
		return count;
	}
	
}
